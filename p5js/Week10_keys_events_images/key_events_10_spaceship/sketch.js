var ship;

function setup() {
  createCanvas(600, 400);
  ship = new Ship(new p5.Vector(width/2,  height/2));
}

function draw() {
  background(0, 0, 0);
  ship.run();
  ship.render();
}

function Ship(location) {
  this.location = location;
  this.heading = - Math.PI / 2;
  this.velocity = new p5.Vector();
  this.acceleration = new p5.Vector();

  this.rotationPerTick = 0.075;
  this.forcePerTick = 0.05;
  this.r = 4;

  this.run = function() {
    this.acceleration.mult(0);
  
    if (isKeyPressed) {
      if (keyCode === 37) {
        this.heading -= this.rotationPerTick;
      } else if (keyCode == 39) {
        this.heading += this.rotationPerTick;
      } else if (keyCode == 38) {
        this.acceleration = new p5.Vector(
            Math.cos(this.heading),
            Math.sin(this.heading)
          ).setMag(this.forcePerTick);
      }
    }
  
    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
  
    this.wrapAround();
    this.render();
  }
  
  this.wrapAround = function() {
    if (this.location.x < 0) {
      this.location.x += width;
    } else if (this.location.x >= width) {
      this.location.x -= width;
    }
  
    if (this.location.y < 0) {
      this.location.y += height;
    } else if (this.location.y >= height) {
      this.location.y -= height;
    }
  }
  
  this.render = function() {
    fill(255);
    push();
    translate(this.location.x, this.location.y);
    rotate(this.heading + Math.PI / 2);
    triangle(0, -this.r * 5, -this.r * 3, this.r * 5, this.r * 3, this.r * 5)
    pop();
  }

}