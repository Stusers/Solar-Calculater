import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
import processing.net.*;
import controlP5.*;

ControlP5 cp5;

//Variables

int cost = 1;
int kwh = 1;
int sunhours = 1;
int efficency = 1;
int time = 1;
String textValue = "";
int x = -200;
int y = 100;
int tick = 0;

//Start of Project
void setup()
{
  size(720, 480);
  
  //PFont font = createFont("arial",20);
   cp5 = new ControlP5(this);
   
   
   cp5.addTextfield("input1")
     .setPosition(40,100)
     .setSize(200,40)
     //.setFont(font)
     .setFocus(true)
     .setColor(color(255,0,0))
     .setVisible(true)
     .setColorBackground(color(255,255,255))
     ;
   cp5.addTextfield("input2")
     .setPosition(40,200)
     .setSize(200,40)
     //.setFont(font)
     .setColorBackground(color(255,255,255))
     .setColor(color(255,0,0))
     .setVisible(true)
     ;
   cp5.addTextfield("input3")
     .setPosition(40,300)
     .setSize(200,40)
     //.setFont(font)
     .setColorBackground(color(255,255,255))
     .setColor(color(255,0,0))
     .setVisible(true)
     ;
   cp5.addTextfield("input4")
     .setPosition(40,400)
     .setSize(200,40)
     //.setFont(font)
     .setColorBackground(color(255,255,255))
     .setColor(color(255,0,0))
     .setVisible(true)
     ;
     
  
 //textFont(font);
}

//Gui ---

void draw()
{
  background(255, 255, 255);
  time = (cost /(efficency * sunhours * kwh));
  
  
  
  
  
  //Animations ---
  
  
  
   
}
//Gui end ---




//Start up animations


//Animations end ---

//Maths---

//Pay back formula = pay back == total intial cost // Capacity * Effiecency * Sunlight Hours * cost pKIlowatt hour


//Maths end ---


//Api?
