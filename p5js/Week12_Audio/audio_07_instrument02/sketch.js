var s01, s02, s03, s04, s05, s06, s07, s08, s09, s10;
var c;
var circle = new Array(1);
var randomR, randomX, randomY;


function preload() {
  s01 = loadSound("audio/01.mp3");
  s02 = loadSound("audio/02.mp3");
  s03 = loadSound("audio/03.mp3");
  s04 = loadSound("audio/04.mp3");
  s05 = loadSound("audio/05.mp3");
  s06 = loadSound("audio/06.mp3");
  s07 = loadSound("audio/07.mp3");
  s08 = loadSound("audio/08.mp3");
  s09 = loadSound("audio/09.mp3");
  s10 = loadSound("audio/10.mp3");
}

function setup() {
  createCanvas(600, 400);
  colorMode(HSB, 360, 100, 100);
  c = 0;
  noStroke();
  // Volume is a value between 0 and 1
  s01.setVolume(1);
  s02.setVolume(1);
  s03.setVolume(1);
  s04.setVolume(1);
  s05.setVolume(1);
  s06.setVolume(1);
  s07.setVolume(1);
  s08.setVolume(1);
  s09.setVolume(1);
  s10.setVolume(1);
  circle[0] = new Circle(random(width), random(height), 10, color(random(360), 80, 100), 0, 10);
}

function draw() {
  background(0);
  for (var i = 0; i < circle.length; i ++ ) {
    circle[i].drawCircle();
    circle[i].moveCircle();
  }
  stroke(130, 40, 200);
  strokeWeight(1);
  for(var i = 1; i < 10; i++) {
    line(width/10 * i, (height/2) - 10, width/10 * i, (height/2) + 10);
  }
  line(0, height/2, width, height/2);
}

function mousePressed() {
  randomR = random(10, 100);
  randomX = random(-5, 5);
  randomY = random(-5, 5);
  circle[circle.length] = new Circle(mouseX, mouseY, 10, color(random(360), 80, 100), 0, 10);
}

function Circle(x, y, r, c, xSpeed, ySpeed) {
  var lineX1 = 0;
  var lineY1 = height/2;
  var lineX2 = width;
  var lineY2 = height/2;
  this.moveCircle = function() {
    var mValue = x;
    var m = map(mValue, 0, 100, 0, width);

    x += xSpeed;
    y += ySpeed;

    if (x > width-r || x < r) {
      x -= xSpeed;
      xSpeed *= -1;
    }

    if (y > height-r || y < r) {
      y -= ySpeed;
      ySpeed *= -1;
    }
    if (circleLineIntersect(lineX1, lineY1, lineX2, lineY2, x, y, r) == true) {
      if (mValue < width/10) {
        s01.play();
      } 
      else if (mValue < (width/10)*2) {
        s02.play();
      }
      else if (mValue < (width/10)*3) {
        s03.play();
      }
      else if (mValue < (width/10)*4) {
        s04.play();
      }
      else if (mValue < (width/10)*5) {
        s05.play();
      }
      else if (mValue < (width/10)*6) {
        s06.play();
      }
      else if (mValue < (width/10)*7) {
        s07.play();
      }
      else if (mValue < (width/10)*8) {
        s08.play();
      }
      else if (mValue < (width/10)*9) {
        s09.play();
      }
      else if (mValue < width) {
        s10.play();
      }
    }
  }

  this.drawCircle = function() {
    noStroke();
    fill(c);
    ellipse(x, y, r, r);
  }

  function circleLineIntersect(x1, y1, x2, y2, cx, cy, cr ) {
    var dx = x2 - x1;
    var dy = y2 - y1;
    var a = dx * dx + dy * dy;
    var b = 2 * (dx * (x1 - cx) + dy * (y1 - cy));
    var c = cx * cx + cy * cy;
    c += x1 * x1 + y1 * y1;
    c -= 2 * (cx * x1 + cy * y1);
    c -= cr * cr;
    var bb4ac = b * b - 4 * a * c;

    if (bb4ac < 0) {  // Not intersecting
      return false;
    } else {

      var mu = (-b + sqrt( b*b - 4*a*c )) / (2*a);
      var ix1 = x1 + mu*(dx);
      var iy1 = y1 + mu*(dy);
      mu = (-b - sqrt(b*b - 4*a*c )) / (2*a);
      var ix2 = x1 + mu*(dx);
      var iy2 = y1 + mu*(dy);

      var testX;
      var testY;

      if (dist(x1, y1, cx, cy) < dist(x2, y2, cx, cy)) {
        testX = x2;
        testY = y2;
      } else {
        testX = x1;
        testY = y1;
      }

      if (dist(testX, testY, ix1, iy1) < dist(x1, y1, x2, y2) || dist(testX, testY, ix2, iy2) < dist(x1, y1, x2, y2)) {
        return true;
      } else {
        return false;
      }
    }
  }

}