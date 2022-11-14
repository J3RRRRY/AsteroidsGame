class Spaceship extends Floater  {   
  public Spaceship() {
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-8, 16, -8};   
    yCorners = new int[]{-8, 0, 8};   
    myColor = color(255, 255, 255);   
    myCenterX = myCenterY = 0;//holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees  
  }
}
