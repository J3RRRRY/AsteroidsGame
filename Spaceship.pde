class Spaceship extends Floater  {
  private int opacity = 255;
  private int r = (int)(Math.random()*100+156);
  private int g = (int)(Math.random()*256);
  private int b = (int)(Math.random()*256);
  public Spaceship() {
    corners = 10;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-16, -4, 4, 4, 40, 4, 4, -4, -16, -4};   
    yCorners = new int[]{-12, -8, -20, -8, 0, 8, 20, 8, 12, 0};    
    myColor = color(r, g, b, opacity);   
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
  public double getMyCenterX(){return myCenterX;}
  public void setMyCenterX(double x) {myCenterX = x;}
  public double getMyCenterY() {return myCenterY;}
  public void setMyCenterY(double y) {myCenterY = y;}
  public int getOpacity() {return opacity;}
  public void setOpacity(int o) {opacity = o;}
  
  public void hyperspace() {
    opacity -= 5;
    myColor = color(r, g, b, opacity);   
    if(opacity == 0) {
      setMyCenterX((int)(Math.random()*500));
      setMyCenterY((int)(Math.random()*500));
      setMyXspeed(0);
      setMyYspeed(0);
      setMyPointDirection((int)(Math.random()*360));
      opacity = 255;
    }  
  }
}
