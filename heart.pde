
Heart heart = new Heart();

void setup() {
  size(300, 300);
  background(0);
  noStroke();
  fill(0xFF, 0, 0);
}

void draw() {
  background(0);
  heart.draw();
}

class Heart {
  void draw() {
    ellipse(random(width), random(height), 70, 70);
  }
}