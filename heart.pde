
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
    ellipse(pos.x-15, pos.y, 40, 40);
    ellipse(pos.x+15, pos.y, 40, 40);
    triangle(pos.x-35, pos.y, pos.x+35, pos.y, pos.x, pos.y+50);
  }
}
