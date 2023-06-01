#include <ros.h>
#include <traversal/WheelRpm.h>

#include <Wire.h>

#define SDA 14
#define SCL 15

int vel=0, omega=0;
bool hb=false;

void transmission(int address)
{
  Wire.beginTransmission(address);
  Wire.write(byte(vel));
  Wire.write(byte(omega));
  Wire.write(byte(hb));
  Wire.endTransmission():
}

void roverMotionCallback(const traversal::WheelRpm &data)
{
  vel=int(data.vel);
  omega=int(data.omega);
  hb=data.hb;
  transmission(SDA);
}

ros::NodeHandle nh;
ros::Subscriber<traversal::WheelRpm> drive_sub("drive", &roverMotionCallback);

void setup(){
  nh.initNode();
  nh.subscribe(drive_sub);
  Wire.begin(); 
}

void loop(){
   nh.spinOnce();
}
