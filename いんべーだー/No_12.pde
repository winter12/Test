PImage enemy_1;
PImage enemy_2;

int image_sw;
int move_sw;

int change_time;
int enemy_number;

float enemy_pos_x;
float enemy_pos_y;
float enemy_size_x;
float enemy_size_y;
float enemy_speed;


void setup(){
  size(500,500);
  enemy_1=loadImage("enemy_1.png");
  enemy_2=loadImage("enemy_2.png");
  
  image_sw=0;
  move_sw=0;

  change_time=0;
  enemy_number=0;
  
  enemy_pos_x=0;
  enemy_pos_y=0;
  enemy_size_x=100;
  enemy_size_y=100;
  enemy_speed=2;
  
}

void draw(){
  background(255,255,255);
  noStroke();

//update
 enemy_pos_x+=enemy_speed;


switch(move_sw){
  case 0:
 if(enemy_pos_x+enemy_size_x>width){
    move_sw=1;
 }
 if(enemy_pos_x<0){
   move_sw=2;
 }  break;
 case 1:
 enemy_speed=2;
 enemy_pos_y+=enemy_size_y;
 move_sw=0;
break;
case 2:
 enemy_speed=-2;
 enemy_pos_y+=enemy_size_y;
 move_sw=0;
break;

}

//draw
  change_time+=1;
  if(change_time>=45){
  image(enemy_1,enemy_pos_x,enemy_pos_y,
  enemy_size_x,enemy_size_y); 
  }
  else{
    image(enemy_2,enemy_pos_x,enemy_pos_y,
    enemy_size_x,enemy_size_y);
  }
  
  if(change_time>=90){
    change_time=0;
  }
}

