class Asteroid extends Floater  {
  private double rotationSpeed = 0;
  public Asteroid() {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-4, 4, 4, -4};   
    yCorners = new int[]{4, 4, -4, 4};    
    myColor = color(255);   
    myCenterX = myCenterY = 200;//holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees 
    rotationSpeed = 0.1;
  }
  public void move() {

  }
}
