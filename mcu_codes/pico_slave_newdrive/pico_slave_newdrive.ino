#include <ros.h>
#include <Wire.h>
#define SDA 14
#define SCL 15

int vel=0, omega=0;
bool hb=false;

void recieveEvent(int bytes,int address)
{
  vel=Wire.read();
  omega=Wire.read();
  hb=Wire.read();
  transmission(address);
}

void recieveTransmission(int address)
{
  Wire.beginTransmission(address);
  Wire.onReceive(recieveEvent);
  Wire.endTransmission(address);
}

void transmission(int address)
{
  Wire.beginTransmission(address);
  Wire.write(byte(vel));
  Wire.write(byte(omega));
  Wire.write(byte(hb));
  Wire.endTransmission();
}

void setup()
{
  Wire.begin();
}

void loop()
{
  recieveTransmission(SDA);
}
