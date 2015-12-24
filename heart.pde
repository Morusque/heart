
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
  color c = color(random(0x100), random(0x80), random(0x50));
  void draw() {
    fill(c);
    float rad = 23;
    float esp = 15;
    ellipse(pos.x-esp, pos.y, rad*2, rad*2);
    ellipse(pos.x+esp, pos.y, rad*2, rad*2);
    triangle(pos.x-esp+rad*cos(TWO_PI*3/8), pos.y+rad*sin(TWO_PI*3/8), pos.x+esp+rad*cos(TWO_PI*1/8), pos.y+rad*sin(TWO_PI*1/8), pos.x, pos.y+50);
    pos.x=(pos.x+1.3f)%width;
    pos.y=(pos.y+1.0f)%height;
  }
}
