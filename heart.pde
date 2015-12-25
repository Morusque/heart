 //<>//
ArrayList<Heart> hearts = new ArrayList<Heart>();

void setup() {
  size(400, 400);
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
  PVector dir = new PVector(random(-1, 1), random(-1, 1));
  color c = color(random(0x100), random(0x80), random(0x50));
  float s = random(10, 30);
  void draw() {
    fill(c);
    float rad = s;
    float esp = rad*2.0f/3.0f;
    ellipse(pos.x-esp, pos.y, rad*2, rad*2);
    ellipse(pos.x+esp, pos.y, rad*2, rad*2);
    triangle(pos.x-esp+rad*cos(TWO_PI*3/8), pos.y+rad*sin(TWO_PI*3/8), pos.x+esp+rad*cos(TWO_PI*1/8), pos.y+rad*sin(TWO_PI*1/8), pos.x, pos.y+s*2);
    pos.x=(pos.x+dir.x+width)%width;
    pos.y=(pos.y+dir.y+height)%height;
  }
}
