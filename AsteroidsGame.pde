private Spaceship hi = new Spaceship();
private Star [] stars = new Star[100]; 
private ArrayList <Asteroid> myrocks = new ArrayList<Asteroid>();
private ArrayList <Bullet> bullets = new ArrayList<Bullet>();
private boolean pressW = false;
private boolean pressD = false;
private boolean pressA = false;
private boolean pressE = false;
public void setup() 
{
  size(500, 500);
  for (int i = 0; i<stars.length; i++)
    stars[i] = new Star();

  for (int i = 0; i < 15; i++)
    myrocks.add(new Asteroid());
}
public void draw() 
{
  background(13, 11, 16);
  for (int i = 0; i<bullets.size(); i++) {
    bullets.get(i).show();
    bullets.get(i).move();
  }
  for (int i = 0; i<stars.length; i++)
    stars[i].show();

  hi.show();
  hi.move();
  for (int i = 0; i< myrocks.size(); i++) {
    myrocks.get(i).show();
    myrocks.get(i).move();
  }

  for (int i = 0; i< myrocks.size(); i++) {
    float d = dist((float)hi.getX(), (float)hi.getY(), (float)myrocks.get(i).getX(), (float)myrocks.get(i).getY());
    if (d<13)
    {
      myrocks.remove(i);
      i--;
    }
  }
  for (int i = 0; i< bullets.size(); i++) {
    for (int e = 0; e<myrocks.size(); e++) {
      float d = dist((float)bullets.get(i).getX(), (float)bullets.get(i).getY(), (float)myrocks.get(e).getX(), (float)myrocks.get(e).getY());
      if (d<10)
      {
        bullets.remove(i);
        myrocks.remove(e);
        break;
      }
    }
  }
}

public void keyPressed() {
  if (key == 'a'  || key == 'A' || key == '4') {
    pressA = true; 
    hi.turn(-15);
  }

  if (key == 'w'  || key == 'W' || key == '8') {
    pressW = true; 
    hi.accelerate(.5);
  }
  if (key == 's'  || key == 'S' || key == '5') {
    hi.accelerate(-.5);
  }

  if (key == 'd'  || key == 'D' || key == '6') {
    pressD= true; 
    hi.turn(15);
  }

  if (key == 'r'  || key == 'R' || key =='3') {
    hi.hyperspace(0, (int)(Math.random()*500), (int)(Math.random()*500), (int)(Math.random()*360));
  }
  if (key == 'e'  || key == 'E' || key == '7') {
    pressE = true;
    bullets.add(new Bullet(hi)); 
    bullets.get(bullets.size()-1).accelerate(6);
  }


  if (pressW == true && pressD == true) {
    hi.turn(15); 
    hi.accelerate(.5);
  }

  if (pressD == true && pressE == true) {
    pressE = false;
    bullets.add(new Bullet(hi)); 
    bullets.get(bullets.size()-1).accelerate(6);
    hi.turn(15);
  }

  if (pressA == true && pressE == true) {
    pressE =false;
    bullets.add(new Bullet(hi)); 
    bullets.get(bullets.size()-1).accelerate(6);
    hi.turn(-15);
  }

  if (pressW == true && pressA == true) {
    hi.turn(-15); 
    hi.accelerate(.5);
  }
  
 if (key == 'm' && myrocks.size()==0 || key == 'M' && myrocks.size()==0) {
  for (int i = 0; i < 15; i++)
    myrocks.add(new Asteroid());
 }
}

public void keyReleased() {
  if (key == 'w' || key == 'W' || key == '8')
    pressW = false; 
  if (key == 'a' || key == 'A' || key == '4')
    pressA = false; 
  if (key == 'd' || key == 'D' || key == '6')
    pressD = false;
}






