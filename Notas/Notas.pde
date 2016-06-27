BufferedReader reader;
String line;
float hum=0;

int R=1;//6371;//radio de la tierra en km

void setup() {
  // Open the file from the createWriter() example
  reader = createReader("Qdata.txt"); 
  size(600, 600); 
  background(255);
  smooth(8);
}

void draw() {
  frameRate(30);
  strokeWeight(1);
  noStroke();
  fill(0);
  line = getLine(reader);
  if (line == null) {
    // detiene el loop
    noLoop();
  } 
  else {
    //divide la linea en elementos separados por coma
    String[] pieces = split(line, ',');
    String nombre = pieces[0];
    float nota = float(pieces[1]);
    
    //float hum = float(pieces[4]);
    noStroke();
    if (nota<=100 && nota>=70){
      fill(0, 255, 0, 200);
    }else if (hum<70){
      fill(255, 0, 0, 200);
 
    }
    
    
    //fill(231, 248, 154, 200);
    
    ellipse(width/2, height/2, nota*2, nota*2);
    //fill(56,88,181, 50);
    String c = pieces[0] +": "+ pieces[1];
    text(c, width/2, height/2+nota*2);
    //fill(56,88,181, 50);
    //ellipse(width/2, height/2, air*2, air*2);
    
    noFill();
    stroke(255, 200);
    //ellipse(width/2, height/2, 100*2, 100*2);
    stroke(0,150);
    strokeWeight(2);
    //point(width-toX(x,y)*width-250,toY(x,y)*height);
  }
} 

//geographic to cartessian
float toX(float lat, float lon) {
  float x = R * cos(lat) * cos(lon);
  return x;
}

float toY(float lat, float lon) {
  float y = R * cos(lat) * sin(lon);
  return y;
}

//get each file line
String getLine(BufferedReader r){
  String l;
  try {
   l = r.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    l = null;
  } 
  return l;
}