PImage img;
PFont font;
void setup() {
  colorMode(HSB, 100);//カラーモードを変えるよ
  size(400, 400);
  font = createFont("メイリオ", 100);
  textFont(font);
  img = loadImage("gyouza.png");
  img.loadPixels();
  loadPixels();
  frameRate(30);
}

int n = 0;
float posx = 0, posy = 0, textsize = 1;

void draw() {
  int d = 0;
  for (int i = 0; i < img.pixels.length; i++) {
    color c = img.pixels[i];
    d += (int)random(50000) == 0? (int)random(width):0; 
    c = color((hue(c)+n)%100, saturation(c), brightness(c));
    if (c == color(100)) c = color(n%100, 90, 90);
    pixels[(i+d)%(img.pixels.length-1)] = c;
  }
  updatePixels();
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