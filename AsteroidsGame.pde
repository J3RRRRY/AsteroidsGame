//your variable declarations here
Star [] nightSky = new Star[200];
Spaceship Robin = new Spaceship();
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
}

public void keyPressed() {
  if(key == 'd'){
     Robin.setMyPointDirection(Robin.getMyPointDirection() + 10);
  }
  if(key == 'a'){
     Robin.setMyPointDirection(Robin.getMyPointDirection() - 10);
  }
  if(key == 'w'){
     Robin.setMyXspeed(Robin.getMyXspeed() - 10);
     Robin.setMyPointDirection(Robin.getMyPointDirection() - 10);
  }
}
