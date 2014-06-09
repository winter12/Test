
size(500,500);
int i,j;
for(i=0;i<500;i+=20){
  for(j=0;j<500;j+=30){
    fill(j,i,0);
    ellipse(j,i,30,20);
  }
}
