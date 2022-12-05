class Asteroid extends Floater  {
  private double rotationSpeed = 0;
  public Asteroid() {
    corners = 8;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-16, 0, 16, 24, 16, 0, -16, -24};   
    yCorners = new int[]{-16, -24, -16, 0, 16, 24, 16, 0};    
    myColor = color(200);   
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);//holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = (int)(Math.random()*361); //holds current direction the ship is pointing in degrees 
    rotationSpeed = (Math.random()*4-2);
  }
    public double getMyRotationSpeed(){return rotationSpeed;}
    public void setMyRotationSpeed(double x){rotationSpeed = x;}
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
    
  public void move() {
    super.move();
    myXspeed = Math.cos(0);    
    myYspeed = Math.sin(1); 
    turn(rotationSpeed);    
  }
}
