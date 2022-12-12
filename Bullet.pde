class Bullet extends Floater  {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getMyPointDirection();
    accelerate(0.6);
  }
    public double getMyPointDirection(){return myPointDirection;}
    public void setMyPointDirection(double p){myPointDirection = p;}
    public double getMyXspeed(){return myXspeed;}
    public void setMyXspeed(double x){myXspeed = x;}
    public double getMyYspeed(){return myYspeed;}
    public void setMyYspeed(double y){myYspeed = y;}
    public double getMyCenterX(){return myCenterX;}
    public void setMyCenterX(double x) {myCenterX = x;}
    public double getMyCenterY() {return myCenterY;}
    public void setMyCenterY(double y) {myCenterY = y;}
    
  public void show() {
    noStroke();
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
}
