//your variable declarations here
Star [] nightSky = new Star[200];
Spaceship Robin = new Spaceship();
ArrayList <Asteroid> ketchUpPacket = new ArrayList <Asteroid>();
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
  for(int i = 0; i < 5; i++) {
    ketchUpPacket.add(new Asteroid());
    System.out.println(ketchUpPacket);
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
  if(rotateRight == false && rotateLeft == false && accelerate == false && hyperspace == true) {
    Robin.hyperspace();
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
  if(key == 's'){
    hyperspace = true;
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
  if(key == 's'){
    hyperspace = false;
  }
}
