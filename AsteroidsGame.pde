//your variable declarations here
Star [] nightSky = new Star[200];
Spaceship Robin = new Spaceship();
boolean accelerate = false;
boolean rotateLeft = false;
boolean rotateRight = false;
boolean hyperspace = false;


public void setup() 
{
  size(500, 500);
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
}


public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  Robin.show();
  if(accelerate == true) {
    Robin.accelerate(0.1);
  }
  if(rotateLeft == true) {
    Robin.turn(-5);
  }
  if(rotateRight == true) {
    Robin.turn(5);
  }
  Robin.move();
}
  

public void keyPressed() {
  if(key == 'd'){
    rotateRight = true;
  }
  if(key == 'a'){
    rotateLeft = true;
  }
  if(key == 'w'){
    accelerate = true;
  }
}

public void keyReleased() {
  if(key == 'd'){
    rotateRight = false;
  }
  if(key == 'a'){
    rotateLeft = false;
  }
  if(key == 'w'){
    accelerate = false;
  }
}
