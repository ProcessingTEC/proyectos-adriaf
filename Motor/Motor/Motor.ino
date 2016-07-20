#include <Servo.h>

#define DELAY 100;

Servo myservo;

int posX, posY;

void setup() {
  // put your setup code here, to run once:
 Serial.begin(9600);
 myservo.attach(A4);
}

void loop() {
  // put your main code here, to run repeatedly:
  int val = map(posX,0,600,0,180);
  //for (val=0;val<180;val++){
     myservo.write(posX);
    // delay(50);
  //}
 
  
  delay(50);
}

void serialEvent(){
  if (Serial.available()){
    posX =Serial.parseInt();
    
    posY=Serial.parseInt();
    
  }
}

