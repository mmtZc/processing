let numbers = []; //creating array for list of numbers

function setup() {
  createCanvas(400, 400);
  textFont('Poppins'); //loading Google font stored in the index.html file
  numbers = loadStrings('numbers.txt'); //loading txt file with all the numbers and storing it in the array
}

function draw() {

  background(245);
  let hr = nf(hour(), 2, 0);
  let min = nf(minute(), 2, 0);
  let sec = nf(second(), 2, 0);
  
  //main frame
  strokeWeight(5);
  noFill();
  stroke(60);
  rectMode(CENTER);
  rect(200,200,380,380);
  
  //mapping and scaling the current seconds
  textAlign(CENTER);
  strokeCap(PROJECT);
  let endSec = map(sec,0,60,40,380);
  strokeWeight(2);
  fill(50);

  //rectangle, right edge controlled by the current econds
  beginShape();
  vertex(20,220);
  vertex(20,260);
  vertex(endSec, 260);
  vertex(endSec, 220);
  endShape(CLOSE);
  
  //text at the bottom, reading through the array using the current seconds as index
  fill(50);
  strokeWeight(0);
  textSize(40);
  text(numbers[second()], width/2, 350);
  
  //cirlce using current seconds to control diameter
  fill(50);
  ellipse(280,80,second()*1.5,second()*1.5);
  stroke(50);
  strokeWeight(2);
  noFill();
  ellipse(280,80,90,90);
  
  text("it is", 50, 50);
  textSize(60);
  text(hr, 70, 110);
  text(min, 100, 150);
  textSize(15);
  text("and", 152, 150);
  
}
