
//
//   Barricade Lights v1.0
//   Apr, 2016

//   Learning Outcome: 
//   Create a program that simulated flashing barricade lights
//   with each light having slightly different on/off time durations.
//   Visually represent the lights.

//   Learning Objectives:
//   1) Learn to write a program in Processing 3.0
//   2) Learn to implement timing functionality in code.
//   3) Learn to visually display timer functionality. 

//   Project:
//   http://digitalstew.blogspot.com/2016/04/barricade-lights-v10.html
//
//   All code released to the public domain, as-is, with no restrictions.



// ----- light 1 -----
int savedTime1;
int passedTime1;
int b1x = 100;
int b1y = 100;
boolean light1On;

// ----- light 2 -----
int savedTime2;
int passedTime2;
int b2x = 200;
int b2y = 100;
boolean light2On;

// ----- light 3 -----
int savedTime3;
int passedTime3;
int b3x = 300;
int b3y = 100;
boolean light3On;

// ----- light 4 -----
int savedTime4;
int passedTime4;
int b4x = 400;
int b4y = 100;
boolean light4On;

// ----- light 5 -----
int savedTime5;
int passedTime5;
int b5x = 500;
int b5y = 100;
boolean light5On;


// ----- size of dot and erase -----
int lightSize = 80;
int eraseSize = 82;

// ----- light on/off times -----
int totalTime1 = 1800;
int totalTime2 = 1700;
int totalTime3 = 1600;
int totalTime4 = 1500;
int totalTime5 = 1400;

// ----- light colors -----
color c1 = color(245,185,0);
color c2 = color(245,185,0);
color c3 = color(245,185,0);
color c4 = color(245,185,0);
color c5 = color(245,185,0);

// --- uncomment for multiple colors
//color c1 = color(255,0,0);
//color c2 = color(255,255,0);
//color c3 = color(0,255,0);
//color c4 = color(0,255,255);
//color c5 = color(0,0,255);


void setup(){ 
  
  size(600,200);
  background(0);
  
  // light state
  light1On = false;
  light2On = false;
  light3On = false;
  light4On = false;
  light5On = false; 
  
  // set baseline time
  savedTime1 = millis();
  savedTime2 = millis();  
  savedTime3 = millis(); 
  savedTime4 = millis();  
  savedTime5 = millis(); 
   
}

void draw(){
               
  //get duration checks  
  passedTime1 = millis() - savedTime1;
  passedTime2 = millis() - savedTime2;
  passedTime3 = millis() - savedTime3;
  passedTime4 = millis() - savedTime4;
  passedTime5 = millis() - savedTime5; 

// ---  light 1 ---  
// if interval has passed, do something
  if (passedTime1 > totalTime1) {
    if (light1On){
      eraseBlinker(b1x, b1y); 
      light1On = false;
    }
    else
    {
      drawBlinker(b1x, b1y, c1); 
      light1On = true;
    }    
    // reset the timer
    savedTime1 = millis();
  }
  
  
// --- light 2 ---  
// if interval has passed, do something
  if (passedTime2 > totalTime2) {
    if (light2On){
      eraseBlinker(b2x, b2y); 
      light2On = false;
    }
    else
    {
      drawBlinker(b2x, b2y, c2); 
      light2On = true;
    }    
    // reset the timer
    savedTime2 = millis();
  }  
  
 
// --- light 3 ---  
// if interval has passed, do something
  if (passedTime3 > totalTime3) {
    if (light3On){
      eraseBlinker(b3x, b3y); 
      light3On = false;
    }
    else
    {
      drawBlinker(b3x, b3y, c3); 
      light3On = true;
    }  
    // reset the timer
    savedTime3 = millis();
  }    
           

// --- light 4 ---  
// if interval has passed, do something
  if (passedTime4 > totalTime4) {
    if (light4On){
      eraseBlinker(b4x, b4y); 
      light4On = false;
    }
    else
    {
      drawBlinker(b4x, b4y, c4); 
      light4On = true;
    }  
    // reset the timer
    savedTime4 = millis();
  }    


// --- light 5 ---  
// if interval has passed, do something
  if (passedTime5 > totalTime5) {
    if (light5On){
      eraseBlinker(b5x, b5y); 
      light5On = false;
    }
    else
    {
      drawBlinker(b5x, b5y, c5); 
      light5On = true;
    }  
    // reset the timer
    savedTime5 = millis();
  }    

}


// pass in position and color
void drawBlinker(int x, int y, color c){
    noStroke();
    fill(c);    
    ellipse(x, y, lightSize, lightSize); 
}

// pass in position, color is background
void eraseBlinker(int x, int y){
    noStroke();
    fill(0);    
    ellipse(x, y, eraseSize, eraseSize); 
}