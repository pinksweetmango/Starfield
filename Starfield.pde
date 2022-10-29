Particles [] bob;
void setup() {

  size(700, 700);
  bob = new Particles[1000];
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Particles();
  }
  for (int i = 0; i < 10; i++) {
    bob[i] = new twoPintO();
  }
}
void draw() {
  background(200,200,200);
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}
class Particles {
  double myX, myY, myAngle, mySpeed, mySize;
  int myColor;
  Particles() {
    myX = 350;
    myY = 350;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = Math.random()*11;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),80);
    mySize = 10;
  }
  void move() {
    myX = (Math.cos(myAngle))*mySpeed + myX;
    myY = (Math.sin(myAngle))*mySpeed + myY;
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
        fill(255);
     ellipse((float)myX, (float)myY, (float)(mySize/4), (float)(mySize)/4);
   
  }
}

class twoPintO extends Particles {
  twoPintO() {
    myX = 350;
    myY = 350;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = Math.random()*11;
    myColor = color(0, 0, 0);
    mySize = 30;
  }
}

