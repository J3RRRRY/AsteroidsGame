//your variable declarations here
Star [] nightSky = new Star[200];
Spaceship Robin = new Spaceship();
ArrayList <Asteroid> ketchUpPacket = new ArrayList <Asteroid>();
//Asteroid [] juan = new Asteroid[10];
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
  //for(int i = 0; i < juan.length; i++) {
  //  juan[i] = new Asteroid();
  //}
  for(int i = 0; i < 10; i++) {
    ketchUpPacket.add(new Asteroid());
    //System.out.println(ketchUpPacket);
  }
}


public void draw()
{
  background(0);
  for(int s = 0; s < nightSky.length; s++) {
    nightSky[s].show();
  }
  //for(int i = 0; i < juan.length; i++) {
  //  //juan[i].show();
  //}
  for(int i = 0; i < ketchUpPacket.size(); i++) {
    ketchUpPacket.get(i).move();
    ketchUpPacket.get(i).show();
    float distance = dist(((float)Robin.getMyCenterX()), ((float)Robin.getMyCenterY()), ((float)ketchUpPacket.get(i).getMyCenterX()), ((float)ketchUpPacket.get(i).getMyCenterY()));
    if(distance <= 60) {
      ketchUpPacket.remove(i);
    }
    //System.out.println(i);
    //System.out.println(ketchUpPacket.get(i).getMyRotationSpeed());
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
