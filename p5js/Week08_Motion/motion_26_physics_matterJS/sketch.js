// Watch Dan Shiffmans tutorials on matter.js here:
// https://www.youtube.com/watch?v=urR596FsU68

// You can find more tutorials, examples and the library here:
// http://brm.io/matter-js/

// module aliases
var Engine = Matter.Engine,
  // Dont need this if we are using p5js
  // Render = Matter.Render,
  World = Matter.World,
  Bodies = Matter.Bodies;

var engine;
var world;
var boxes = new Array(30);

var ground;

function setup() {
  createCanvas(600, 400);
  engine = Engine.create();
  world = engine.world;
  var options = {
    isStatic: true
  }
  ground = Bodies.rectangle(width/2, height, width, 100, options);
  for (var i = 0; i < boxes.length; i++) {
    boxes[i] = new Box(random(width), random(-40, -300), random(10, 40), random(10, 40));
  }

  World.add(world, ground);
}

function draw() {
  background(51);
  Engine.update(engine);
  for (var i = 0; i < boxes.length; i++) {
    boxes[i].show();
  }
  noStroke(255);
  fill(170);
  rectMode(CENTER);
  rect(ground.position.x, ground.position.y, width, 100);
}