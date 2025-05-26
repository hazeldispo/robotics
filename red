#include "eGizmo_PBot_Uno.h"
#include <Wire.h>

eGizmo_PBot_Uno PBot;
int MotorSpeed = 190;

void setup(){

  PBot.BEGIN();
  PBot.STOP();
}
void loop() {
  
  if(PBot.LS1_LEFT() == LOW && PBot.LS3_RIGHT() == LOW){

    PBot.FORWARD(MotorSpeed);
  }

  if(PBot.LS1_LEFT() == LOW && PBot.LS3_RIGHT() == HIGH){

    PBot.TURNRIGHT(MotorSpeed);
  }

  if(PBot.LS1_LEFT() == HIGH && PBot.LS3_RIGHT() == LOW){

    PBot.TURNLEFT(MotorSpeed);
  }

  if(PBot.LS1_LEFT() == LOW && PBot.LS2_CENTER() == LOW && PBot.LS3_RIGHT() == LOW){

    PBot.REVERSE(MotorSpeed);
    delay(10);
  }
  if(PBot.LS1_LEFT() == HIGH && PBot.LS3_RIGHT() == HIGH)
  {
    PBot.STOP();
  }
}
