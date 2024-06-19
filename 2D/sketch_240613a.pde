/**
 * Tugas GV 
 * Nur Mediyaksa Saiful Ma'ruf
 * 22106050067
 */

PFont f;
float angleRotate = 0.0;
float sizeChange = 2.0;
int x = 200;
int y = 200;
int a = 1;
int b = 1;

void setup() {
  size(400, 400);
  background(0);
  f = createFont("Arial", 40);
  textFont(f);
} 

void keyPressed() {
  // Move text arrow keys
  if (keyCode == LEFT) {
    x -= 5;
  } else if (keyCode == DOWN) {
    y += 5;
  } else if (keyCode == UP) {
    y -= 5;
  } else if (keyCode == RIGHT) {
    x += 5;
  }
  
  // Rotate W = clockwise, C = counter clockwise
  if (key == 'W' || key == 'w') {
    angleRotate += 1;
  } else if (key == 'C' || key == 'c') {
    angleRotate -= 1;
  }
  
  // Zoom in = '+' atau '=', zoom out = '-'
  if (key == '+' || key == '=') {
    sizeChange += 0.1;
  } else if (key == '-' || key == '_') {
    sizeChange -= 0.1;
  }
  
  // Mirror right left = ',', up down = '.'
 if (a < 0 && key == ',') {
      a = 1;
  } else if (key == ',') {
    a = -1;
  }
 if (b < 0 && key == '.') {
      b = 1;
  } else if (key == '.') {
    b = -1;
  }
}

void draw() {
  background(0);

  strokeWeight(1);
  stroke(153);
  
  pushMatrix();
  translate(x, y);
  rotate(radians(angleRotate));
  scale(sizeChange);
  scale(a,b);
  text("NMS", -46.5, 14.4);
  popMatrix();
  
}
