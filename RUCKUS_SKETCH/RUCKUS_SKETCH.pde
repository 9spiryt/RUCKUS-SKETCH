int awakeBeings = 0;
Being[] popBeings = new Being[4000];
int awakeDevils = 0;
Devil[] popDevils = new Devil[4000];
int awakeAngels = 0;
Angel[] popAngels = new Angel[4000];
Being b0;
PFont f;
PImage world;
PImage toronto;
PImage tag;
String message;
color pix;
color tor;
//TODO
//BEINGS SKETCH OUT WORLD MAP(POINTILLISM)
//DEVILS SKETCH OUT TORONTO MAP(POINTILLISM)
//ANGELS OUTLINE HASHTAG OR GEOLOCATE RUPERT HOUSE




void setup(){
  size(1350,750);
  world = loadImage("WORLD3.png");
  toronto = loadImage("TTC2.png");
  tag = loadImage("TAG.png");
  imageMode(CENTER);
  background(255);
  frameRate(60);
  printArray(PFont.list());
  f = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(f);
  b0 = new Being(width/2,height/2,5);
  for(int i=0; i<popBeings.length; i++){
    popBeings[i] = new Being(random(width),random((height*0.40),(height*0.60)),random(5));
  }
  for(int i=0; i<popDevils.length; i++){
    popDevils[i] = new Devil(random(width),random(height),random(5));
  }
  for(int i=0; i<popAngels.length; i++){
    popAngels[i] = new Angel(random(width),random((height/2)-50,(height/2)+50),random(5));
  }
}