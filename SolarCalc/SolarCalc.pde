import processing.net.*;
import controlP5.*;

ControlP5 cp5;
PImage backgroundImage;
PFont customFont;
int fontSize = 16;
int currentWindowIndex = 1;

double cost = 1;
double kwh = 1;
double sunhours = 1;
double efficency = 1;
double time = 1;
String input1 = "";
String input2 = "";
String input3 = "";
String input4 = "";

void setup() {
  size(800, 600);
  backgroundImage = loadImage("lol.png");  // Load your image file

  customFont = createFont("stasfont.ttf", fontSize);
  textFont(customFont);
  textAlign(LEFT, CENTER);

  cp5 = new ControlP5(this);

  cp5.addTextfield("input1")
     .setPosition(width/3, 100)
     .setSize(200, 40)
     .setColor(color(255, 0, 0))
     .setVisible(true)
     .setAutoClear(false)
     .setColorBackground(color(240))
     .setColorForeground(color(200))
     .setColorActive(color(255));

  cp5.addTextfield("input2")
     .setPosition(width/3, 200)
     .setSize(200, 40)
     .setColor(color(255, 0, 0))
     .setVisible(true)
     .setAutoClear(false)
     .setColorBackground(color(240))
     .setColorForeground(color(200))
     .setColorActive(color(255));

  cp5.addTextfield("input3")
     .setPosition(width/3, 300)
     .setSize(200, 40)
     .setColor(color(255, 0, 0))
     .setVisible(true)
     .setAutoClear(false)
     .setColorBackground(color(240))
     .setColorForeground(color(200))
     .setColorActive(color(255));

  cp5.addTextfield("input4")
     .setPosition(width/3, 400)
     .setSize(200, 40)
     .setColor(color(255, 0, 0))
     .setVisible(true)
     .setAutoClear(false)
     .setColorBackground(color(240))
     .setColorForeground(color(200))
     .setColorActive(color(255));

  cp5.addButton("Button")
     .setValue(0)
     .setPosition(width/2, 500)
     .setSize(200, 40)
     .setColorBackground(color(140))
     .setVisible(true)
     .addCallback(new CallbackListener() {
       public void controlEvent(CallbackEvent event) {
         if (event.getAction() == ControlP5.ACTION_CLICK) {
           foundroi();
         }
       }
     });
}

void draw() {
  background(backgroundImage);

  // Your window content drawing code here
}

void foundroi() {
  try {
    cost = Double.parseDouble(input1);
    efficency = Double.parseDouble(input2);
    sunhours = Double.parseDouble(input3);
    kwh = Double.parseDouble(input4);

    time = (cost / (efficency * sunhours * kwh));
    println("Time: " + time);
  } catch (Exception e) {
    println("Error");
  }
}
