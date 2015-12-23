
ArrayList<Heart> hearts = new ArrayList<Heart>();

void setup() {
  size(300, 300);
  background(0);
  noStroke();
  for (int i=0; i<20; i++) hearts.add(new Heart());
}

void draw() {
  background(0);
  for (Heart heart : hearts) heart.draw();
}

class Heart {
  PVector pos = new PVector(random(width), random(height));
  void draw() {
    fill(random(0xFF), 0, 0);
    float rad = 23;
    float esp = 15;
    ellipse(pos.x-esp, pos.y, rad*2, rad*2);
    ellipse(pos.x+esp, pos.y, rad*2, rad*2);
    triangle(pos.x-esp+rad*cos(TWO_PI*3/8), pos.y+rad*sin(TWO_PI*3/8), pos.x+esp+rad*cos(TWO_PI*1/8), pos.y+rad*sin(TWO_PI*1/8), pos.x, pos.y+50);
  }
}
