void draw(){
  //background(0);
  b0.move();
  b0.alive();
  b0.grow();
  //Displays Beings/Greens
  for(int i=0; i<awakeBeings; i++){
    popBeings[i].move();
    popBeings[i].alive();
    popBeings[i].grow();
  }
  //Displays Devils/Reds
  for(int i=0; i<awakeDevils; i++){
    popDevils[i].move();
    popDevils[i].alive();
    //popDevils[i].retreat();
  }
  
  //Displays Angels/Churches
  for(int i=0; i<awakeAngels; i++){
    popAngels[i].build();
    popAngels[i].alive();
    popAngels[i].grow();
  }
  //Displays Message
  float glow = random(-15, 15);
  float glow2 = random(-20, 20);
  float dist = abs(glow)+abs(glow2);
  color fade = int(map(dist, 10, 35, 0, 255));
  fill(0, random(1,10));
  if(abs(dist)>=10){
    fill(fade, random(1, 5));
  }
  if(dist==0){
    fill(255, random(10, 50));
  }
  message = "RUCKUS";
  textSize(250);
  if(mousePressed){
    message = "FINESSIN\'";
    fill(pix, random(10, 20));
    glow = glow*2;
    glow2 = glow2*2;
  }
  if(keyPressed){
    textSize(125);
    fill(random(50),random(150),random(255), 50);
    if(frameCount%2==0){
      fill(255, random(100));
    }
    if(frameCount%3==0){
      fill(pix, random(100));
    }
    glow = glow/2;
    glow2 = glow2/2;
    if(key == 'a' || key == 'A'){
      message = "THE KID LICKIES";
    }
    if(key == 's' || key == 'S'){
      message = "ANIMAL TYPE";
    }
    if(key == 'd' || key == 'D'){
      message = "RUN GALANG";
    }
    if(key == 'f' || key == 'F'){
      message = "SLY WHY: KID";
    }
    if(key == 'g' || key == 'G'){
      message = "MUTARI";
    }
    if(key == 'h' || key == 'H'){
      message = "FADE AWAAYS";
    }
}
  
  textAlign(CENTER, CENTER);
  text(message, (width/2)+glow, (height/2)-50+glow2);
  //Displays Grid
  /*fill(0);
  stroke(0);
  for(int i = 0; i<width; i += 50){
    for(int j = 0; j < height; j += 50){
      line(i, 0, i, height);
      line(0, j, width, j);
    }
   }*/
  //Population Growth algorithms 
              //Beings
              float spawn = random(100);
              if(spawn<2){
                awakeBeings++;
              }
              if(spawn>99 && awakeBeings>500){
                awakeBeings--;
              }
              //Devils
              if(awakeBeings >100){
                float spawnDevil = random(100);
                if(spawnDevil<1){
                  awakeDevils++;
                }
                if(spawnDevil>99 && awakeDevils>200){
                  awakeDevils--;
                }
              }
              //Angels/Churches  
              if(awakeDevils >50){
                float spawnAngel = random(1000);
                if(spawnAngel<5){
                  awakeAngels++;
                }
                if(spawnAngel>990 && awakeAngels>200){
                  awakeAngels--;
                }
                
              }
  
              
  
  //println(pix);
  
}