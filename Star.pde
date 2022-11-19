class Star {
  private int myY, myX;

  public Star() {
    myX = (int)(Math.random()*500);
    myY= (int)(Math.random()*500);
  }
  public void show() {
    noStroke();
    fill((int)(Math.random()*255+50), (int)(Math.random()*255+50), (int)(Math.random()*255+50), 150);
    ellipse(myX, myY, (int)(Math.random()*4+1),(int)(Math.random()*4+1));
  }
}
