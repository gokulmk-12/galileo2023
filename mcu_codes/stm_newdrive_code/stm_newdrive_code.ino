#include <Wire.h>

int address = 15;

#define SLPR1 PA10
#define PWMR1 PA11
#define DIRR1 PA12

#define SLPL1 PB3
#define PWML1 PB4
#define DIRL1 PB5

#define SLPL2 PB11
#define PWML2 PB10
#define DIRL2 PA5

#define SLPR2 PA3
#define PWMR2 PA2
#define DIRR2 PA1

int velocity, ome, hb=0;
int pwml=0; pwmr=0;
int vel, omega=0;

void recieveEvent(int val)
{
  if (Wire.available())
  {
    velocity=Wire.read();
    ome=Wire.read();
    hb=Wire.read();

    vel=velocity-127;
    omega=ome-127;
  }
}

void setup()
{
  Serial.end();
  
  pinMode(SLPL1, OUTPUT);
  pinMode(SLPL2, OUTPUT);
  pinMode(SLPR1, OUTPUT);
  pinMode(SLPR2, OUTPUT);
  pinMode(PWML1, OUTPUT);
  pinMode(PWML2, OUTPUT);
  pinMode(PWMR1, OUTPUT);
  pinMode(PWMR2, OUTPUT);
  pinMode(DIRL1, OUTPUT);
  pinMode(DIRL2, OUTPUT);
  pinMode(DIRR1, OUTPUT);
  pinMode(DIRR2, OUTPUT);

  digitalWrite(SLPL1, HIGH);
  digitalWrite(SLPL2, HIGH);
  digitalWrite(SLPR1, HIGH);
  digitalWrite(SLPR2, HIGH);

  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, LOW);

  Wire.begin(address);

  Wire.onReceive(revieveEvent);

  digitalWrite(SLPL1, LOW);
  digitalWrite(SLPL2, LOW);
  digitalWrite(SLPR1, LOW);
  digitalWrite(SLPR2, LOW);

  digitalWrite(DIRL1, LOW);
  digitalWrite(DIRL2, LOW);
  digitalWrite(DIRR1, LOW);
  digitalWrite(DIRR2, LOW);

}

void loop(){

  analogWriteFrequency(20000);
  pwml=int(vel-omega);
  pwmr=int(vel+omega);

  if (hb==0)
  { 
    if (pwr>0)
    {
      digitalWrite(SLPLR1, HIGH);
      digitalWrite(SLPLR2, HIGH);
      digitalWrite(DIRR1, HIGH);
      digitalWrite(DIRR2, HIGH);
      analogWrite(PWMR1, abs(pwmr));
      analogWrite(PWMR2, abs(pwmr));
    }
    else if (pwmr<0)
    {
      digitalWrite(SLPLR1, HIGH);
      digitalWrite(SLPLR2, HIGH);
      digitalWrite(DIRR1, LOW);
      digitalWrite(DIRR2, LOW);
      analogWrite(PWMR1, abs(pwmr));
      analogWrite(PWMR2, abs(pwmr));
    }
    else
    {
      digitalWrite(SLPLR1, LOW);
      digitalWrite(SLPLR2, LOW);
      analogWrite(PWMR1, 0);
      analogWrite(PWMR2, 0);
    }

    if (pwml > 0)
    {
      digitalWrite(SLPLL1, HIGH);
      digitalWrite(SLPLL2, HIGH);
      digitalWrite(DIRL1, HIGH);
      digitalWrite(DIRL2, HIGH);
      analogWrite(PWML1, abs(pwml));
      analogWrite(PWML2, abs(pwml));
    }
    else if (pwml < 0)
    {
      digitalWrite(SLPLL1, HIGH);
      digitalWrite(SLPLL2, HIGH);
      digitalWrite(DIRL1, LOW);
      digitalWrite(DIRL2, LOW);
      analogWrite(PWML1, abs(pwml));
      analogWrite(PWML2, abs(pwml));
    }
    else
    {
      digitalWrite(SLPLL1, LOW);
      digitalWrite(SLPLL2, LOW);
      analogWrite(PWML1, 0);
      analogWrite(PWML2, 0);
    }  
  }

  else
  {
    digitalWrite(SLPLR1, HIGH);
    digitalWrite(SLPLR2, HIGH);
    analogWrite(PWMR1, 0);
    analogWrite(PWMR2, 0);

    digitalWrite(SLPLL1, HIGH);
    digitalWrite(SLPLL2, HIGH);
    analogWrite(PWML1, 0);
    analogWrite(PWML2, 0);
  }

  delay(100);
}
