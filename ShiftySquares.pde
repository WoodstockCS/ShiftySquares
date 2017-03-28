int theSeed = 0;
int sz = 30;
float d;
int r=0;
int g=0;
int b=0;


void setup() {
  size(500, 500);
  background(220);
  noStroke();
  //noLoop();
}

void draw() {
  background(220);

  fill(0);


  fill(r, g, b, 150);

  randomSeed(theSeed);

  int x = 0;
  int y = 0;
  while (x <= 500)
  {
    while (y <= 500)
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

  saveFrame();
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    d = (int)(random(4));
  }
}

void keyPressed() {
  //if (key == 'j') 
  //{
  //  theSeed = (int)random(2);
  //}




  if (key == 'r') 
  {
    
    r=r+2;
  }

  if (key == 'g') 
   {
   g=g+2; 
   }

  if (key == 'b') 
   {
   b=b+2; 
   }
}
