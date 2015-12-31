 //<>//
ArrayList<Heart> hearts = new ArrayList<Heart>();
int state = 0;

void setup() {
  size(400, 400);
  background(0);
  noStroke();
  for (int i=0; i<30; i++) hearts.add(new Heart(random(1)));
}

void draw() {
  if (state==0) { 
    background(0);
    for (int i=0; i<hearts.size (); i++) {
      if (hearts.get(i).life>1) hearts.set(i, new Heart(0));
    }
    for (Heart heart : hearts) heart.draw();
  }
  if (state==1) { 
    fill(0, 0x0A);
    rect(0, 0, width, height);
    for (int i=0; i<hearts.size (); i++) {
      if (hearts.get(i).life>1) hearts.set(i, new Heart(0));
    }
    for (Heart heart : hearts) heart.draw();
  }
  if (random(100)<1) state=(state+1)%2;
}

class Heart {
  PVector pos = new PVector(random(width), random(height));
  PVector dir = new PVector(random(-1, 1), random(-1, 1));
  color c = color(random(0x100), random(0x80), random(0x50));
  float s = random(10, 30);
  float life=0;
  float mergeA = random(TWO_PI);
  float mergeL = random(100);
  Heart (float life) {
    this.life=life;
  }
  void draw() {
    fill(red(c)*life, green(c)*life, blue(c)*life);
    float rad = s*pow(life, 5);
    float esp = rad*2.0f/3.0f;
    float thisMergeL = mergeL*(1-life); 
    if (state==1) thisMergeL=0;
    ellipse(pos.x-esp+cos(mergeA)*thisMergeL, pos.y+sin(mergeA)*thisMergeL, rad*2, rad*2);
    ellipse(pos.x+esp+cos(mergeA+PI)*thisMergeL, pos.y+sin(mergeA+PI)*thisMergeL, rad*2, rad*2);
    triangle(pos.x-esp+rad*cos(TWO_PI*3/8), pos.y+rad*sin(TWO_PI*3/8), pos.x+esp+rad*cos(TWO_PI*1/8), pos.y+rad*sin(TWO_PI*1/8), pos.x, pos.y+rad*2);
    pos.x=(pos.x+dir.x+width)%width;
    pos.y=(pos.y+dir.y+height)%height;
    life+=random(0.01);
  }
}
