var svg, path

function preload() {
  svg = loadSVG('data/shapes.svg');
}

function setup() {
  createCanvas(600, 400, SVG);
  background(255);

  for (var i = 0; i < width/100; i++) {
    for (var k = 0; k < height/100; k++) {
      image(svg, 100*i, 100*k, 100, 100);
      path = querySVG('path');

      for (var j = 0; j < path.length; j++) {
        var c1 = color(random(255), random(255), random(255));
        var c2 = color(0, 100, 200);

        if(path[j].attribute('id') == 'weirdShape') {
          path[j].attribute('fill', c1);
        }
        if(path[j].attribute('id') == 'square') {
          path[j].attribute('fill', c2);
        }
      }
    }

  }

}