void setup() {
  size (400, 400);
  background(255);
}

void draw(){
  stroke(0);
  strokeWeight(05);
  line(0, 0, 100, 100);
  line(0, 400, 100, 300);
  line(400, 400, 300, 300);
  line(400, 0, 300, 100);
  line(0, 200, 400, 200);
  stroke(4, 147, 22);
  strokeWeight(02);
  fill(19, 36, 211);
  ellipse(200, 200, 300, 300);
  stroke(255, 0, 0);
  fill(4, 147, 22);
  rect(100, 100, 200, 200);
  stroke(131, 5, 117);
  fill(255, 0, 0);
  strokeWeight(04);
  triangle(200, 100, 300, 300, 100, 300);
  stroke(255);
  strokeWeight(04);
  fill(131, 5, 117);
  circle(200, 235, 105);
}
