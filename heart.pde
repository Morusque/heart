
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
  PVector pos=new PVector(width/2, height/2);
  void draw() {
    ellipse(pos.x-20, pos.y, 40, 40);
    ellipse(pos.x+20, pos.y, 40, 40);
    triangle(pos.x-40, pos.y, pos.x+40, pos.y, pos.x, pos.y+80);
  }
}