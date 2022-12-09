class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 14;
    myCenterX = 250;
    myCenterY = 250;
    xCorners = new int[] {14, 7, 0, -4, -11, -11, -14, -12, -14, -11, -11, -4, 0, 7};
    yCorners = new int[] {0, -5, -5, -7, -7, -5, -5, 0, 5, 5, 7, 7, 5, 5};
    myColor = 210;
  }

  public void hyperspace(double x, double y, double z, double d) {
    myXspeed = x;
    myYspeed = x;
    myCenterX= y;
    myCenterY= z;
    myPointDirection =d;
  }

  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
  
  public double getXspeed() {
    return myXspeed;
  }

  public double getYspeed() {
    return myYspeed;
  }

  public double getDirection() {
    return myPointDirection;
  }
}
