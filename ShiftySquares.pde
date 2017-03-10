int theSeed = 0;
int sz = 30;
float d;

void setup() {
  size(500, 500);
  background(220);
  noStroke();
  //noLoop();
}

void draw() {
  background(220);

  fill(0);
  d = random(4);
  textSize(40);
  text(d, 50, 50);
  
  fill(78, 193, 78, 150);

  //randomSeed(theSeed);
  
  int x = 0;
  int y = 0;
  while (x <= 450)
  {
    while (y <= 450)
    {     
      float shiftX1 = mouseX/10 * random(-1, 1);
      float shiftY1 = mouseY/10 * random(-1, 1);
      float shiftX2 = mouseX/10 * random(-1, 1);
      float shiftY2 = mouseY/10 * random(-1, 1);
      float shiftX3 = mouseX/10 * random(-1, 1);
      float shiftY3 = mouseY/10 * random(-1, 1);
      float shiftX4 = mouseX/10 * random(-1, 1);
      float shiftY4 = mouseY/10 * random(-1, 1);
      beginShape();
      vertex(x+shiftX1, y+shiftY1);
      vertex(x+sz+shiftX2, y+shiftY2);
      vertex(x+sz+shiftX3, y+sz+shiftY3);
      vertex(x+shiftX4, y+sz+shiftY4);
      endShape();
      y = y + sz;
    }
    x = x + sz;
    y = 0;
  }
  
  
}

void mousePressed() {
 if(mouseButton == RIGHT) {
   d = (int)(random(4));
 }
 
}

void keyPressed() {
  if (key == 'j') 
  {
    theSeed = (int)random(1000);
  }
  if (key == ' ')
  {
    
  }
}