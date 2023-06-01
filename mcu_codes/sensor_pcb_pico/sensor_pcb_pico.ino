//Including all the necessary libraries

#include <ros.h>
#include <Wire.h>
#include <Adafruit_MLX90614.h>
#include <TinyGPS++.h>
#include <SoftwareSerial.h>
#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <geometry_msgs/Vector3.h>
#include <sensor_pcb/sense.h>

//defining all the input pins to Raspberry Pico

#define VIN1 27
#define VIN2 26
#define TEMP_SCL 21
#define TEMP_SDL 20
#define GPS_TX 3
#define GPS_RX 4
#define IMU_SDA 10
#define IMU_SCL 11


// Sensor Modules Object Initialisation

Adafruit_MLX90614 mlx = Adafruit_MLX90614();
TinyGPSPlus gps;
SoftwareSerial ss(GPS_RX, GPS_TX);                  //serial connection to the GPS module

//ROS Node and Publisher Initialisation

ros::NodeHandle nh;
sensor_pcb::sense sensor_data;
ros::Publisher pub("/sensors", &sensor_data);

//Variables Initialisation

float adc_voltage1=0.0;
float adc_voltage2=0.0;
float in_voltage1=0.0;
float in_voltage2=0.0;
float R1 = 30000.0;
float R2 = 7500.0;
float ref_voltage = 5.0;
int adc_value1 = 0;
int adc_value2 = 0;

#define MPU 0x68                              // MPU6050 I2C address
float AccX, AccY, AccZ;
float GyroX, GyroY, GyroZ;
float accAngleX, accAngleY, gyroAngleX, gyroAngleY, gyroAngleZ;
float roll, pitch, yaw;
float elapsedTime, currentTime, previousTime;

void setup() 
{
  Serial.begin(9600); 
  ss.begin(9600);                                //Initialize serial communication with GPS
  
  Wire.begin();                                     //Initialize comunication
  Wire.beginTransmission(MPU);                      //Start communication with MPU sensor
  Wire.write(0x6B);                                 //Talk to the register 6B
  Wire.write(0x00);                                 //Make reset - place a 0 into the 6B register
  Wire.endTransmission(true);                       //End the transmission
  
  nh.initNode();
  nh.advertise(pub);
}

void loop() {
  
  battery_volt1();
  battery_volt2();
  temp_data();
  gps_data();
  imu_data();
  
  nh.spinOnce();
  delay(500);

}

void battery_volt1(){
  
  adc_value1 = analogRead(VIN1);                      //reading the ADC value from the sensor
  adc_voltage1 = (adc_value1 * ref_voltage)/1024.0;   //resolution x ADC value
  
  in_voltage1 = adc_voltage1 / (R2/(R1+R2));          //potential divider to get input voltage
  sensor_data.Battery_Voltage_1=in_voltage1;          
  
  pub.publish(&sensor_data);                           //publishing the data to the ROS topic
  delay(500);
}

void battery_volt2(){
  
  adc_value2 = analogRead(VIN2);                      //reading the ADC value from the sensor
  adc_voltage2 = (adc_value2 * ref_voltage)/1024.0;   //resolution x ADC value
  
  in_voltage2 = adc_voltage2 / (R2/(R1+R2));          //potential divider to get input voltage
  sensor_data.Battery_Voltage_2=in_voltage2; 
  
  pub.publish(&sensor_data);                           //publishing the data to the ROS topic
  delay(500);
}

void temp_data(){
  
  sensor_data.Temperature=mlx.readObjectTempC();      //reads the object temperature in degree C
  
  pub.publish(&sensor_data);                           //publishes the data to the ROS Topic
  delay(500);
}

void gps_data(){

  while (ss.available()>0){
    gps.encode(ss.read());
    if (gps.location.isUpdated()){
      sensor_data.GPS_Latitude = gps.location.lat();  //reads the latitude from the GPS module
      sensor_data.GPS_Longitude = gps.location.lng(); //reads the longitude from the GPS module
    }
    else{
      sensor_data.GPS_Latitude = 0;
      sensor_data.GPS_Longitude = 0;  
    }
    pub.publish(&sensor_data);                         //publishes the data to the ROS Topic
    delay(500);
  }
  
}

void imu_data(){
  
  // === Read acceleromter data === //
  Wire.beginTransmission(MPU);
  Wire.write(0x3B);                                   //Start with register 0x3B
  Wire.endTransmission(false);
  Wire.requestFrom(MPU, 6, true);                     //Read 6 registers total, each axis value is stored in 2 registers

  AccX = (Wire.read() << 8 | Wire.read()) / 16384.0;  //X-axis Acceleration Value 
  AccY = (Wire.read() << 8 | Wire.read()) / 16384.0;  //Y-axis Acceleration Value 
  AccZ = (Wire.read() << 8 | Wire.read()) / 16384.0;  //Z-axis Acceleration Value 

  // Calculating Roll and Pitch from the accelerometer data
  accAngleX = (atan(AccY / sqrt(pow(AccX, 2) + pow(AccZ, 2))) * 180 / PI) - 0.58;
  accAngleY = (atan(-1 * AccX / sqrt(pow(AccY, 2) + pow(AccZ, 2))) * 180 / PI) + 1.58; 

  previousTime = currentTime;
  currentTime=millis();
  elapsedTime=(currentTime-previousTime)/1000;

  // === Read gyroscope data === //
  Wire.beginTransmission(MPU);
  Wire.write(0x43);                                   //Gyro data first register address 0x43
  Wire.endTransmission(false);
  Wire.requestFrom(MPU, 6, true);                     //Read 6 registers total, each axis value is stored in 2 registers

  GyroX = (Wire.read() << 8 | Wire.read()) / 131.0;   //For a 250deg/s range we have to divide first the raw value by 131.0, according to the datasheet
  GyroY = (Wire.read() << 8 | Wire.read()) / 131.0;
  GyroZ = (Wire.read() << 8 | Wire.read()) / 131.0;

  //Correct the outputs with the calculated error values
  GyroX = GyroX + 0.56;
  GyroY = GyroY - 2;
  GyroZ = GyroZ + 0.79;

  // Currently the raw values are in degrees per seconds, deg/s, so we need to multiply by sendonds (s) to get the angle in degrees
  gyroAngleX = gyroAngleX + GyroX * elapsedTime; 
  gyroAngleY = gyroAngleY + GyroY * elapsedTime;
  
  yaw =  yaw + GyroZ * elapsedTime;
  roll = 0.96 * gyroAngleX + 0.04 * accAngleX;
  pitch = 0.96 * gyroAngleY + 0.04 * accAngleY;

  sensor_data.IMU.x=roll;
  sensor_data.IMU.y=pitch;
  sensor_data.IMU.x=yaw;

  pub.publish(&sensor_data);                            //publishes the data to the ROS Topic
  delay(500);
}
