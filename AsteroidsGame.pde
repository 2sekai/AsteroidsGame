Spaceship hi = new Spaceship();
Star [] stars = new Star[100]; 
boolean pressW = false;
boolean pressD = false;
boolean pressA = false;
public void setup() 
{
  size(500, 500);
  for (int i = 0; i<stars.length; i++)
    stars[i] = new Star();
}
public void draw() 
{
  background(13, 11, 16);
  for (int i = 0; i<stars.length; i++)
    stars[i].show();
  hi.show();
  hi.move();
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
    hi.hyperspace(0, (int)(Math.random()*500), (int)(Math.random()*500),(int)(Math.random()*360));
  }

  if (pressW == true && pressD == true) {
    hi.turn(15);
    hi.accelerate(.5);
  }
   if (pressW == true && pressA == true) {
    hi.turn(-15);
    hi.accelerate(.5);
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W' || key == '8')
    pressW = false;
  if (key == 'a' || key == 'A' || key == '4')
    pressA = false;
  if (key == 'd' || key == 'D' || key == '6')
    pressD = false;
}
