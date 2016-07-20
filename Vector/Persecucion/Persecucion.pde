 
float x,y, z, w;
 
void setup(){
  
 size(600,600);
 smooth();
 surface.setTitle("¡Mis padres me persiguen!");
 noCursor();
 x= width/2;
 y= width/2;
 z = width/4;
 w = width/4;
 ellipseMode(CENTER);
}
 
void draw(){
  //original
  //background(255);
  //fill(0,200,0);
  //noStroke();
  //ellipse(mouseX, mouseY, 100,100);
  //fill(255,0,0,100);
  //ellipse(x ,y ,200,200);
  //x+=(mouseX-x)/50;
  //y+=(mouseY-y)/50;
  
  background(255);
  
  fill(0,200,0);
  noStroke();
  ellipse(mouseX, mouseY, 50,50);
  PVector v1 = new PVector(mouseX, mouseY);
  
  
  
  fill(153,204,255,100);
  //ellipse(x ,y ,100,100);
  x+=(mouseX-x)/50;
  y+=(mouseY-y)/50;
  PVector v2 = new PVector(x, y);
  v2.add(v1.mult(0.5));
  ellipse(v2.x ,v2.y ,100,100);
  //for (int i = 0; i < 40; i = i+1) {
  //line(30, i, 80, i);
//}
////

  
  
  fill(255,204,255,200);
  
  //z+=(mouseX-z)/25;
  //w+=(mouseY-w)/25;
  
  PVector v3 = new PVector(z, w);
  v3.add(v2.mult(0.5));
  ellipse(v3.x ,v3.y ,150,150);
  
}