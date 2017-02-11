// Create a PShape variable for your parent group and your child shapes
PShape shapes, weirdShape, square;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
  // Load in your parent shape which is the svg file
  shapes = loadShape("shapes.svg");
  // Get the child shapes by their label names
  weirdShape = shapes.getChild("weirdShape");
  square = shapes.getChild("square");
  // Disable all styles associated to those shapes
  square.disableStyle();
  weirdShape.disableStyle();
  
  // Draw your shapes and replace the styles, location and dimensions
  // The shape location is based on where it was in the original
  fill(random(255), random(255), random(255));
  shape(square, 0, 0, 600, 600);
  fill(random(255), random(255), random(255));
  shape(weirdShape, 0, 0);
}
