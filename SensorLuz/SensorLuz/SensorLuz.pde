//Tomas de Camino Beck

import processing.serial.*;
Serial port;
String data;
float[] val = new float[2];
float columna = width/2;
float fila = height/2;
float orilla;


void setup() {
  surface.setTitle("Lucem Aspicio");
  println(Serial.list());
  //Seleccionar puerto de la lista
  port = new Serial(this, "COM3", 9600);
  port.bufferUntil('\n');  //clear the buffer
  size(600, 600);
  fill(255, 255, 255);
  rect(0, 0, width, height/2);
  fill(0, 0, 0);
  rect(0, width/2, width, height);
  
  //background(255);
}

void draw() {
  stroke(10);
  line(0, height/2, width,height/2);
  //background(255);
  //fill(val[0],val[1],255,200);
  //fill(map(val[0],0,300,0,255), 127, 0);
  //ellipse(map(val[0],0,1023,600,0), map(val[1],0,1023,600,0),100,100);
  //ellipse(width/2, height/2, map(val[0],0,300,0,200), map(val[1],0,300,0,200));
  //ellipse(columna, fila, map(val[0],0,300,0,100), map(val[1],0,300,0,100));
  orilla = random(255);
  fill(orilla,fila%255, columna%255 );
  stroke(orilla,fila%255, columna%255);
  ellipse(columna, fila, 50, 50);
  fila = map(val[0],0,300,0,200);
  columna = (columna+1)%width;
  //fila = map(val[1],0,300,0,100);
}

void serialEvent(Serial port) {
  data = port.readString();
  String[] list = split(data, ',');
  val[0]=float(list[0]);
  val[1]=float(list[1]);
  
}