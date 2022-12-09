class Bullet extends Floater {
  public Bullet(Spaceship hi) {
    myCenterX = hi.getX();
    myCenterY = hi.getY();
    myPointDirection = hi.getDirection();
    myYspeed = hi.getXspeed();
    myXspeed= hi.getYspeed();
  }

  public void show() {
    ellipse((float)myCenterX, (float)myCenterY, 6, 6);
    strokeWeight(3);
    stroke(255);
  }

  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  
   public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
