class Spaceship extends Floater  {   
  public Spaceship() {
    corners = 10;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-16, -4, 4, 4, 40, 4, 4, -4, -16, -4};   
    yCorners = new int[]{-12, -8, -20, -8, 0, 8, 20, 8, 12, 0};    
    myColor = color((int)(Math.random()*06+156), (int)(Math.random()*256), (int)(Math.random()*256));   
    myCenterX = myCenterY = 200;//holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees  
  }
  public double getMyPointDirection(){return myPointDirection;}
  public void setMyPointDirection(double p){myPointDirection = p;}
  public double getMyXspeed(){return myXspeed;}
  public void setMyXspeed(double x){myXspeed = x;}
  public double getMyYspeed(){return myYspeed;}
  public void setMyYspeed(double y){myYspeed = y;}
}
