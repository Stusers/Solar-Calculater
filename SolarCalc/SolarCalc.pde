import processing.net.*;
import controlP5.*;

ControlP5 cp5;
PImage backgroundImage;
PFont customFont;
int fontSize = 16;
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
  customFont = createFont("stasfont.ttf", fontSize);
  textFont(customFont);
  textAlign(LEFT, CENTER);
  
  //PFont font = createFont("arial",20);
   cp5 = new ControlP5(this);
   
   
   cp5.addTextfield("input1")
     .setPosition(width/3,100)
     .setSize(200,40)
     .setColor(color(255,0,0))
     .setVisible(false)
     .setAutoClear(false) // Disable auto-clearing when clicking the field
     .setColorBackground(color(240)) // Background color
     .setColorForeground(color(200)) // Border color
     .setColorActive(color(255))
     ; // Active (focused) color
   cp5.addTextfield("input2")
     .setPosition(width/3,200)
     .setSize(200,40)
     .setColor(color(255,0,0))
     .setVisible(false)
     .setAutoClear(false) // Disable auto-clearing when clicking the field
     .setColorBackground(color(240)) // Background color
     .setColorForeground(color(200)) // Border color
     .setColorActive(color(255))
     ; // Active (focused) color
     
   cp5.addTextfield("input3")
     .setPosition(width/3,300)
     .setSize(200,40)
     .setColor(color(255,0,0))
     .setVisible(false)
     .setAutoClear(false) // Disable auto-clearing when clicking the field
     .setColorBackground(color(240)) // Background color
     .setColorForeground(color(200)) // Border color
     .setColorActive(color(255))
     ; // Active (focused) color
     
   cp5.addTextfield("input4")
     .setPosition(width/3,400)
     .setSize(200,40)
     .setColor(color(255,0,0))
     .setVisible(false)
     .setAutoClear(false) // Disable auto-clearing when clicking the field
     .setColorBackground(color(240)) // Background color
     .setColorForeground(color(200)) // Border color
     .setColorActive(color(255))
     ;
   cp5.addButton("Button")
     .setValue(0)
     .setPosition(width/2,600)
     .setSize(200,19)
     .setColorBackground(color(140))
     .setVisible(true)
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
       cp5.get(Button.class, "Button").setVisible(true);
       
       fill(255, 255, 255); // 
       int offset = -150;
       text("Costs", (width / 3)+ offset, 100+20);
       text("Efficency", (width / 3)+ offset, 200+20);
       text("Sunhours", (width / 3)+ offset, 300+20);
       text("Cost per Kilowatt hour", (width / 3)+ offset, 400+20);
       
       
       
       
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
