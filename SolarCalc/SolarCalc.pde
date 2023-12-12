import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
import processing.net.*;
import controlP5.*;


//Variables

int cost = 1;
int kwh = 1;
int sunhours = 1;
int efficency = 1;
int time = 1;
//Start of Project
void setup()
{
  size(720, 480);
}

//Gui ---

void draw()
{
  background(255, 255, 255);
  time = (cost /(efficency * sunhours * kwh));
}
//Gui end ---


//Animations ---

//Start up animations


//Animations end ---

//Maths---

//Pay back formula = pay back == total intial cost // Capacity * Effiecency * Sunlight Hours * cost pKIlowatt hour


//Maths end ---


//Api?
