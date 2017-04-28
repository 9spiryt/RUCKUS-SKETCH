class Being{
  float x;
  float y;
  float d;
  float step;
  //Constructor
  Being(float tempx,float tempy,float tempd){
    x=tempx;
    y=tempy;
    d=tempd;
  }
  void move(){
    float stepx = random(-1,1);
    float stepy = random(-1,1);
    x += stepx;
    y += stepy;
  }
  void alive(){
    
    
      noStroke();
      int worldX = int(x);
      int worldY = int(y);
      pix = world.get(worldX, worldY);
      println(pix);
      tor = toronto.get(worldX, worldY);
      tint(pix, random(0,7));
      if(frameCount%60==0){
        tint(tor, random(50));
      }
      //fill(random(c_ce/10),random(c_tl/2),random(c_tl/3),random(5,5+d));
      //ellipse(x,y,d,d);
      
      image(tag, x, y, d*3, d*3);
  }
  void grow(){
    float growth = random(0.0001);
    d += growth;
  }
}
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
class Devil{
  float x;
  float y;
  float d;
  float fight;
  

  float step;
  Devil(float tempx,float tempy,float tempd){
    x=tempx;
    y=tempy;
    d=tempd;
    
  }
  void move(){
    
    int choice = int(random(4));
    
   if (choice == 0) {
      y+=2;
    } else if (choice == 1){
      y-=2;
    } else if (choice == 2){
      x+=2;
    } else{
      x-=2;
    }
  }
  void alive(){
    
    
    fight = dist(x,y,mouseX,mouseY);
      noStroke();
      int torontoX = int(x);
      int torontoY = int(y);
      tor = toronto.get(torontoX, torontoY);
      fill(tor,random(15,50+d));
      //fill(random(100)-awakeDevils/3,random(c_tl/2)/10,random(c_tl/3)/10,random(15,25+d));
      if(frameCount%120==0){
        fill(random(255), 50);
      }
      if((frameCount+10)%120==0){
        fill(0, 50);
      }
      //if(fight<3){
      //  fill(200,200,0,50);
      //  d = 10;
      //}
        
      rect(x,y,d,d);
  }
  void grow(){
    float growth = random(0.001);
    d += growth;
  }
  void retreat(){
      fight = dist(x,y,mouseX,mouseY);
      if(fight<10){
        float move = (random(5));
        
        if(mouseX>x){
          x=x-move;
        }
        if(mouseX<x){
          x=x+move;
        }
        if(mouseY>y){
          y=y-move;
        }
        if(mouseY<y){
          y=y+move;
        }
      }
  }
}
////////////////////////////////////////////////////
/////////////////////////////////////////////////////
class Angel{
  float x;
  float x1;
  float y;
  float y1;
  float d;
  float d1;
  

  float step;
  //Constructor
  Angel(float tempx,float tempy,float tempd){
    x=tempx;
    y=tempy;
    d=1;
    d1 = tempd;
    x1 = x;
    y1 = y;
    
  }
  void build(){
              //float stepx = random(-1,1);
              //float stepy = random(-1,1);
              //x1 += stepx;
              //y1 += stepy;
                  int choice = int(random(5));
             if (choice == 0) {
                y1+=2+d/2;
              } else if (choice == 1){
                y1-=2+d/2;
              } else if (choice == 2){
                x1+=2+d/2;
              } else if (choice == 3){
                x1-=2+d/2;
              }  else {
                x1 = x;
                y1 = y;
              }
  }
  void alive(){
    
    d1++;
      noStroke();
      fill(random(d1/1000,d1),random(100,255));
      rectMode(CENTER);
      //rect(x,y,d,d);
      //fill(random(d1/10000,d1/1000),random(100,255));
      ellipse(x,y,d,d);
      fill(200,200,random(200+d1,255),random(20,75));
      rect(x1,y1,2,2);
      
  }
  void grow(){
    float growth = random(0.01);
    if(d<5){
    d += growth;
    }
    if(d>=5){
      growth = 0;
    }
  }
  
}