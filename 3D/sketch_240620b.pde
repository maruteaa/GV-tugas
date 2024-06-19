/**
 * Tugas UAS GV 
 * Nur Mediyaksa Saiful Ma'ruf
 * 22106050067
 */

float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape inisial;

void setup() {
  size(1000, 700, P3D);
  fill(0, 408, 612, 816);
  inisial = createShape(GROUP);

  //Huruf N
  //Bagian Depan
  PShape nfront = createShape();
  nfront.beginShape();
  nfront.vertex(0, 0, 0);
  nfront.vertex(0, 200, 0);
  nfront.vertex(40, 200, 0);
  nfront.vertex(40, 70, 0);
  nfront.vertex(140, 200, 0);
  nfront.vertex(180, 200, 0);
  nfront.vertex(180, 0, 0);
  nfront.vertex(140, 0, 0);
  nfront.vertex(140, 130, 0);
  nfront.vertex(40, 0, 0);
  nfront.vertex(0, 0, 0);
  nfront.endShape(CLOSE);

  //Bagian Belakang
  PShape nback = createShape();
  nback.beginShape();
  nback.vertex(0, 0, -40);
  nback.vertex(0, 200, -40);
  nback.vertex(40, 200, -40);
  nback.vertex(40, 70, -40);
  nback.vertex(140, 200, -40);
  nback.vertex(180, 200, -40);
  nback.vertex(180, 0, -40);
  nback.vertex(140, 0, -40);
  nback.vertex(140, 130, -40);
  nback.vertex(40, 0, -40);
  nback.vertex(0, 0, -40);
  nback.endShape(CLOSE);

  //Bentuk Di mulai dari sisi kiri ke bagian Bawah dan mamutar ke atas
  PShape n1 = createShape();
  n1.beginShape();
  addDepth(n1, 0, 0, 0, 0, 200, 0, 0, 200, -40, 0, 0, -40);
  n1.endShape(CLOSE);

  PShape n2 = createShape();
  n2.beginShape();
  addDepth(n2, 0, 200, 0, 40, 200, 0, 40, 200, -40, 0, 200, -40);
  n2.endShape(CLOSE);

  PShape n3 = createShape();
  n3.beginShape();
  addDepth(n3, 40, 200, 0, 40, 70, 0, 40, 70, -40, 40, 200, -40);
  n3.endShape(CLOSE);

  PShape n4 = createShape();
  n4.beginShape();
  addDepth(n4, 40, 70, 0, 140, 200, 0, 140, 200, -40, 40, 70, -40);
  n4.endShape(CLOSE);

  PShape n5 = createShape();
  n5.beginShape();
  addDepth(n5, 140, 200, 0, 180, 200, 0, 180, 200, -40, 140, 200, -40);
  n5.endShape(CLOSE);

  PShape n6 = createShape();
  n6.beginShape();
  addDepth(n6, 180, 200, 0, 180, 0, 0, 180, 0, -40, 180, 200, -40);
  n6.endShape(CLOSE);

  PShape n7 = createShape();
  n7.beginShape();
  addDepth(n7, 180, 0, 0, 140, 0, 0, 140, 0, -40, 180, 0, -40);
  n7.endShape(CLOSE);

  PShape n8 = createShape();
  n8.beginShape();
  addDepth(n8, 140, 0, 0, 140, 130, 0, 140, 130, -40, 140, 0, -40);
  n8.endShape(CLOSE);

  PShape n9 = createShape();
  n9.beginShape();
  addDepth(n9, 140, 130, 0, 40, 0, 0, 40, 0, -40, 140, 130, -40);
  n9.endShape(CLOSE);

  PShape n10 = createShape();
  n10.beginShape();
  addDepth(n10, 40, 0, 0, 0, 0, 0, 0, 0, -40, 40, 0, -40);
  n10.endShape(CLOSE);

  inisial.addChild(nfront);
  inisial.addChild(nback);
  inisial.addChild(n1);
  inisial.addChild(n2);
  inisial.addChild(n3);
  inisial.addChild(n4);
  inisial.addChild(n5);
  inisial.addChild(n6);
  inisial.addChild(n7);
  inisial.addChild(n8);
  inisial.addChild(n9);
  inisial.addChild(n10);

  // Huruf M
  //Bagian Depan
  PShape mfront = createShape();
  mfront.beginShape();
  mfront.vertex(210, 0, 0);
  mfront.vertex(210, 200, 0);
  mfront.vertex(250, 200, 0);
  mfront.vertex(250, 65, 0);
  mfront.vertex(305, 200, 0);
  mfront.vertex(305, 200, 0);
  mfront.vertex(360, 65, 0);
  mfront.vertex(360, 200, 0);
  mfront.vertex(400, 200, 0);
  mfront.vertex(400, 0, 0);
  mfront.vertex(340, 0, 0);
  mfront.vertex(305, 110, 0);
  mfront.vertex(270, 0, 0);
  mfront.endShape(CLOSE);

  //Bagian Belakang
  PShape mback = createShape();
  mback.beginShape();
  mback.vertex(210, 0, -40);
  mback.vertex(210, 200, -40);
  mback.vertex(250, 200, -40);
  mback.vertex(250, 65, -40);
  mback.vertex(305, 200, -40);
  mback.vertex(305, 200, -40);
  mback.vertex(360, 65, -40);
  mback.vertex(360, 200, -40);
  mback.vertex(400, 200, -40);
  mback.vertex(400, 0, -40);
  mback.vertex(340, 0, -40);
  mback.vertex(305, 110, -40);
  mback.vertex(270, 0, -40);
  mback.endShape(CLOSE);

  //Bentuk Di mulai dari sisi kiri ke bagian Bawah dan mamutar ke atas
  PShape m1 = createShape();
  m1.beginShape();
  addDepth(m1, 210, 0, 0, 210, 200, 0, 210, 200, -40, 210, 0, -40);
  m1.endShape(CLOSE);

  PShape m2 = createShape();
  m2.beginShape();
  addDepth(m2, 210, 200, 0, 250, 200, 0, 250, 200, -40, 210, 200, -40);
  m2.endShape(CLOSE);

  PShape m3 = createShape();
  m3.beginShape();
  addDepth(m3, 250, 200, 0, 250, 65, 0, 250, 65, -40, 250, 200, -40);
  m3.endShape(CLOSE);

  PShape m4 = createShape();
  m4.beginShape();
  addDepth(m4, 250, 65, 0, 305, 200, 0, 305, 200, -40, 250, 65, -40);
  m4.endShape(CLOSE);

  PShape m5 = createShape();
  m5.beginShape();
  addDepth(m5, 305, 200, 0, 360, 65, 0, 360, 65, -40, 305, 200, -40);
  m5.endShape(CLOSE);

  PShape m6 = createShape();
  m6.beginShape();
  addDepth(m6, 360, 65, 0, 360, 200, 0, 360, 200, -40, 360, 65, -40);
  m6.endShape(CLOSE);

  PShape m7 = createShape();
  m7.beginShape();
  addDepth(m7, 360, 200, 0, 400, 200, 0, 400, 200, -40, 360, 200, -40);
  m7.endShape(CLOSE);

  PShape m8 = createShape();
  m8.beginShape();
  addDepth(m8, 400, 200, 0, 400, 0, 0, 400, 0, -40, 400, 200, -40);
  m8.endShape(CLOSE);

  PShape m9 = createShape();
  m9.beginShape();
  addDepth(m9, 400, 0, 0, 340, 0, 0, 340, 0, -40, 400, 0, -40);
  m9.endShape(CLOSE);

  PShape m10 = createShape();
  m10.beginShape();
  addDepth(m10, 340, 0, 0, 305, 110, 0, 305, 110, -40, 340, 0, -40);
  m10.endShape(CLOSE);

  PShape m11 = createShape();
  m11.beginShape();
  addDepth(m11, 305, 110, 0, 270, 0, 0, 270, 0, -40, 305, 110, -40);
  m11.endShape(CLOSE);

  PShape m12 = createShape();
  m12.beginShape();
  addDepth(m12, 270, 0, 0, 210, 0, 0, 210, 0, -40, 270, 0, -40);
  m12.endShape(CLOSE);

  inisial.addChild(mfront);
  inisial.addChild(mback);
  inisial.addChild(m1);
  inisial.addChild(m2);
  inisial.addChild(m3);
  inisial.addChild(m4);
  inisial.addChild(m5);
  inisial.addChild(m6);
  inisial.addChild(m7);
  inisial.addChild(m8);
  inisial.addChild(m9);
  inisial.addChild(m10);
  inisial.addChild(m11);
  inisial.addChild(m12);

  //Huruf S
  //Bagian Depan
  PShape sfront = createShape();
  sfront.beginShape();
  sfront.vertex(460, 200, 0);
  sfront.vertex(420, 140, 0); //left
  sfront.vertex(450, 140, 0);
  sfront.vertex(470, 170, 0);
  sfront.vertex(510, 170, 0); // middle
  sfront.vertex(530, 140, 0);
  sfront.vertex(510, 110, 0);
  sfront.vertex(450, 110, 0);
  sfront.vertex(420, 60, 0);
  sfront.vertex(460, 0, 0);
  sfront.vertex(520, 0, 0);
  sfront.vertex(560, 60, 0); // top tip
  sfront.vertex(530, 60, 0);
  sfront.vertex(510, 30, 0);
  sfront.vertex(470, 30, 0);
  sfront.vertex(450, 60, 0);
  sfront.vertex(470, 90, 0);
  sfront.vertex(530, 90, 0);
  sfront.vertex(560, 140, 0);
  sfront.vertex(520, 200, 0);
  sfront.endShape(CLOSE);

  inisial.addChild(sfront);
  
  //Bagian belakang
  PShape sback = createShape();
  sback.beginShape();
  sback.vertex(460, 200, -40);
  sback.vertex(420, 140, -40); //left
  sback.vertex(450, 140, -40);
  sback.vertex(470, 170, -40);
  sback.vertex(510, 170, -40); // middle
  sback.vertex(530, 140, -40);
  sback.vertex(510, 110, -40);
  sback.vertex(450, 110, -40);
  sback.vertex(420, 60, -40);
  sback.vertex(460, 0, -40);
  sback.vertex(520, 0,-40);
  sback.vertex(560, 60, -40); // top tip
  sback.vertex(530, 60, -40);
  sback.vertex(510, 30, -40);
  sback.vertex(470, 30, -40);
  sback.vertex(450, 60, -40);
  sback.vertex(470, 90, -40);
  sback.vertex(530, 90, -40);
  sback.vertex(560, 140, -40);
  sback.vertex(520, 200, -40);
  sback.endShape(CLOSE);
  
  inisial.addChild(sback);
  
    //Bentuk Di mulai dari sisi kiri ke bagian Bawah dan mamutar ke atas
  PShape s1 = createShape();
  s1.beginShape();
  addDepth(s1, 460, 200, 0, 420, 140, 0, 420, 140, -40, 460, 200, -40);
  s1.endShape(CLOSE);
  
  PShape s2 = createShape();
  s2.beginShape();
  addDepth(s2, 450, 140, 0, 470, 170, 0, 470, 170, -40, 450, 140, -40);
  s2.endShape(CLOSE);

  PShape s3 = createShape();
  s3.beginShape();
  addDepth(s3, 450, 140, -40, 420, 140, -40, 420, 140, 0, 450, 140, 0);
  s3.endShape(CLOSE);

  PShape s4 = createShape();
  s4.beginShape();
  addDepth(s4, 510, 170, 0, 530, 140, 0, 530, 140, -40, 510, 170, -40);
  s4.endShape(CLOSE);

  PShape s5 = createShape();
  s5.beginShape();
  addDepth(s5, 510, 110, 0, 450, 110, 0, 450, 110, -40, 510, 110, -40);
  s5.endShape(CLOSE);

  PShape s6 = createShape();
  s6.beginShape();
  addDepth(s6, 420, 60, 0, 460, 0, 0, 460, 0, -40, 420, 60, -40);
  s6.endShape(CLOSE);

  PShape s7 = createShape();
  s7.beginShape();
  addDepth(s7, 520, 0, 0, 560, 60, 0, 560, 60, -40, 520, 0, -40);
  s7.endShape(CLOSE);

  PShape s8 = createShape();
  s8.beginShape();
  addDepth(s8, 470, 30, 0, 450, 60, 0, 450, 60, -40, 470, 30, -40);
  s8.endShape(CLOSE);

  PShape s9 = createShape();
  s9.beginShape();
  addDepth(s9, 530, 90, 0, 560, 140, 0, 560, 140, -40, 530, 90, -40);
  s9.endShape(CLOSE);

  PShape s10 = createShape();
  s10.beginShape();
addDepth(s10, 470, 170, 0, 510, 170, 0, 510, 170, -40, 470, 170, -40);
  s10.endShape(CLOSE);
  
  PShape s11 = createShape();
  s11.beginShape();
addDepth(s11, 530, 140, 0, 510, 110, 0, 510, 110, -40, 530, 140, -40);
  s11.endShape(CLOSE);
  
  PShape s12 = createShape();
  s12.beginShape();
addDepth(s12, 450, 110, 0, 420, 60, 0, 420, 60, -40, 450, 110, -40);
  s12.endShape(CLOSE);
  
  PShape s13 = createShape();
  s13.beginShape();
addDepth(s13, 460, 0, 0, 520, 0, 0, 520, 0, -40, 460, 0, -40);
  s13.endShape(CLOSE);
  
  PShape s14 = createShape();
  s14.beginShape();
addDepth(s14, 560, 60, 0, 530, 60, 0, 530, 60, -40, 560, 60, -40);
  s14.endShape(CLOSE);
  
  PShape s15 = createShape();
  s15.beginShape();
addDepth(s15, 450, 60, 0, 470, 90, 0, 470, 90, -40, 450, 60, -40);
  s15.endShape(CLOSE);
  
  PShape s16 = createShape();
  s16.beginShape();
addDepth(s16, 530, 60, 0, 510, 30, 0, 510, 30, -40, 530, 60, -40);
  s16.endShape(CLOSE);
  
  PShape s17 = createShape();
  s17.beginShape();
addDepth(s17, 510, 30, 0, 470, 30, 0, 470, 30, -40, 510, 30, -40);
  s17.endShape(CLOSE);
  
  PShape s18 = createShape();
  s18.beginShape();
addDepth(s18, 560, 140, 0, 520, 200, 0, 520, 200, -40, 560, 140, -40);
  s18.endShape(CLOSE);
  
  PShape s19 = createShape();
  s19.beginShape();
addDepth(s19, 520, 200, 0, 460, 200, 0, 460, 200, -40, 520, 200, -40);
  s19.endShape(CLOSE);
  
  PShape s20 = createShape();
  s20.beginShape();
addDepth(s20, 530, 90, 0, 470, 90, 0, 470, 90, -40, 530, 90, -40);
  s20.endShape(CLOSE);

  inisial.addChild(s1);
  inisial.addChild(s2);
  inisial.addChild(s3);
  inisial.addChild(s4);
  inisial.addChild(s5);
  inisial.addChild(s6);
  inisial.addChild(s7);
  inisial.addChild(s8);
  inisial.addChild(s9);
  inisial.addChild(s10);
  inisial.addChild(s11);
  inisial.addChild(s12);
  inisial.addChild(s13);
  inisial.addChild(s14);
  inisial.addChild(s15);
  inisial.addChild(s16);
  inisial.addChild(s17);
  inisial.addChild(s18);
  inisial.addChild(s19);
  inisial.addChild(s20);

  centerObject(inisial);
}
void draw() {
  translate(width/2, height/2, 0);
  background(150);

  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }

  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;

  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(inisial);
}

void keyPressed() {
  if (key == 'w') {
    upPressed = true;
  }
  if (key == 's') {
    downPressed = true;
  }
  if (key == 'a') {
    leftPressed = true;
  }
  if (key == 'd') {
    rightPressed = true;
  }
  if (key == 'q') {
    ltPressed = true;
  }
  if (key == 'e') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    upPressed = false;
  }
  if (key == 's') {
    downPressed = false;
  }
  if (key == 'a') {
    leftPressed = false;
  }
  if (key == 'd') {
    rightPressed = false;
  }
  if (key == 'q') {
    ltPressed = false;
  }
  if (key == 'e') {
    gtPressed = false;
  }
}

void addDepth(PShape n, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4) {
  n.vertex(x1, y1, z1);
  n.vertex(x2, y2, z2);
  n.vertex(x3, y3, z3);
  n.vertex(x4, y4, z4);
  n.vertex(x1, y1, z1);
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;

  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }

  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;

  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}
