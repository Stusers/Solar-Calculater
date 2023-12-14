import processing.net.*;
import controlP5.*;

ControlP5 cp5;
PImage backgroundImage;
int currentWindowIndex = 1;
//Variables

double cost = 1;
double kwh = 1;
double sunhours = 1;
double efficency = 1;
double time = 1;
String input1 = "";
String input2 = "";
String input3 = "";
String input4 = "";


//Start of Project
void setup()
{
  size(800, 600);
  backgroundImage = loadImage("lol.png");  // Load your image file
  
  //PFont font = createFont("arial",20);
   cp5 = new ControlP5(this);
   
   
   cp5.addTextfield("input1")
     .setPosition(width/3,100)
     .setSize(200,40)
     .setColor(color(255,0,0))
     .setVisible(false)
     .setColorBackground(color(255,255,255))
     ;
   cp5.addTextfield("input2")
     .setPosition(width/3,200)
     .setSize(200,40)
     .setColorBackground(color(255,255,255))
     .setColor(color(255,0,0))
     .setVisible(false)
     ;
   cp5.addTextfield("input3")
     .setPosition(width/3,300)
     .setSize(200,40)
     .setColorBackground(color(255,255,255))
     .setColor(color(255,0,0))
     .setVisible(false)
     ;
   cp5.addTextfield("input4")
     .setPosition(width/3,380)
     .setSize(200,40)
     .setColorBackground(color(255,255,255))
     .setColor(color(255,0,0))
     .setVisible(false)
     ;
   cp5.addButton("colorA")
     .setValue(0)
     .setPosition(width/3,440)
     .setSize(200,19)
     .addCallback(new CallbackListener() {
       public void controlEvent(CallbackEvent event) {
         if (event.getAction() == ControlP5.ACTION_CLICK) {
           foundroi();
         }
       }
     })
     ;
     
  
}

//Gui ---

void draw()
{
  
  background(backgroundImage);
  
  switch (currentWindowIndex) {
    case 0: //Opening
       
      break;
    case 1: //Inputting
       cp5.get(Textfield.class, "input1").setVisible(true);
       cp5.get(Textfield.class, "input2").setVisible(true);
       cp5.get(Textfield.class, "input3").setVisible(true);
       cp5.get(Textfield.class, "input4").setVisible(true);
       
       
       
       
       
      break;
    case 2: //Loading
       cp5.get(Textfield.class, "input1").setVisible(false);
       cp5.get(Textfield.class, "input2").setVisible(false);
       cp5.get(Textfield.class, "input3").setVisible(false);
       cp5.get(Textfield.class, "input4").setVisible(false);
      break;
    case 3: //Results
      
      break;
  }
}


//Gui end ---

void foundroi(){
  try{
    cost = Double.parseDouble(input1);
    efficency = Double.parseDouble(input2);
    sunhours = Double.parseDouble(input3);
    kwh = Double.parseDouble(input4);
    
    time = (cost /(efficency * sunhours * kwh));
    
    System.out.print(time);
  }
catch (Exception e){
    System.out.print("Error");
}
  
  //time = (cost /(efficency * sunhours * kwh));
}
