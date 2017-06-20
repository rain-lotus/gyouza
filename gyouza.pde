PImage img;
PFont font;
void setup() {
  colorMode(HSB, 100);//カラーモードを変えるよ
  size(400, 400);
  font = createFont("メイリオ", 100);
  textFont(font);
  img = loadImage("gyouza.png");
  frameRate(30);
}

int n = 0;
float posx = 0, posy = 0, textsize = 1;

void draw() {
  background(n%100, 90, 90);
  blendMode(MULTIPLY);//合成モードを変えるよ
  int d = 0;
  image(img, 0, 0);
  n++;

  blendMode(DIFFERENCE);//合成モードを変えるよ
  if ((int)random(5) == 0) {
    posx = random(width);
    posy = random(height);
    textsize = random(20, 150);
    fill(random(100), 50, 50);
  }
  textSize(textsize);
  text("餃子", posx, posy);
}