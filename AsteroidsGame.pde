//your variable declarations here
Star [] nightSky = new Star[200];
Spaceship Robin = new Spaceship();
ArrayList <Asteroid> ketchUpPacket = new ArrayList <Asteroid>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();
//Asteroid [] juan = new Asteroid[10];
boolean accelerate = false;
boolean rotateLeft = false;
boolean rotateRight = false;
boolean hyperspace = false;
int cooldown = 10;



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
  for(int b = 0; b < pewpew.size(); b++) {
    pewpew.get(b).move();
    pewpew.get(b).show();
    for(int a = 0; a < ketchUpPacket.size(); a++) {
      float distance = dist(((float)ketchUpPacket.get(a).getMyCenterX()), ((float)ketchUpPacket.get(a).getMyCenterY()), ((float)pewpew.get(b).getMyCenterX()), ((float)pewpew.get(b).getMyCenterY()));
      if(distance <= 29) {
        ketchUpPacket.remove(a);
        pewpew.remove(b);
        break;
      }
    }
  }
  fill(255);
  text("Bullets Left: " + (200-pewpew.size()), 0, 10);
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
  if(key == 'f'){
    cooldown -= 5;
    if(cooldown == 0 && pewpew.size() < 200) {
      pewpew.add(new Bullet(Robin));
      cooldown = 10;
    }
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
