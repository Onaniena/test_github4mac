float interv = 5;
int repNum = 30;
color col;

void setup() {
  size(800,480);
  colorMode(HSB,100);
  background(99);
  smooth();
  noFill();
  
  randomSeed(10);
  strokeWeight(1.8);
}

void draw() {
  for(int j =0; j < repNum; j++) {
    col = color(95, random(40,99), random(0, 80));
    linearRectH(random(width/12, width*9/10), random(height/4,height*2/3), 
               random(20,100), int(random(5,20)), col);
    linearRectV(random(width/12, width*9/10), random(height/4,height*2/3), 
               random(20,100), int(random(5,20)), col);
  }
  
  noLoop();
}

// draw rectangles with horisonal lines
void linearRectH(float x, float y, float w, int r, color c ) { // start point x, start point y, weidth of the lines, number lines ti be drawn, color of the lines
  stroke(c);
  for( int i=0; i < r; i++) {
    line(x, y, x + w, y);
    y += interv;
  }
}

//draw rectangles with vertical lines
void linearRectV(float x, float y, float w, int r, color c ) { // start point x, start point y, weidth of the lines, number lines ti be drawn, color of the lines
  stroke(c);
  for( int i=0; i < r; i++) {
    line(x, y, x, y + w);
    x += interv;
  }
}
