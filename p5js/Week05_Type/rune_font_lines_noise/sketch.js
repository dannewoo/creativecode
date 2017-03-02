var fontSize = 100;
var word = "Hello World!";
var path, polys;

function setup(){
    createCanvas(600,400);
    background(0);

    f = new Rune.Font("fonts/ShadowsIntoLight.ttf") 
    // load the font
    f.load(function(err){     
        path = f.toPath(word, 0, 0, fontSize) // this is a rune function
        polys = path.toPolygons({ spacing: 3 }) // this is another handy function to get polygons coordinates
        // now we can draw based on the polygon points
        noFill();
        stroke(255);
        translate(100, height/2);
        var noiseCount = 0;
        noiseDetail(5);
        for (var i=0; i < polys.length ; i++){
            var poly = polys[i];
            for(var j = 1; j < poly.state.vectors.length; j++) {
                var vec1 = poly.state.vectors[j];
                var vec2 = poly.state.vectors[j - 1];
                var r = random(-2, 2);
                strokeWeight(noise(noiseCount)*3);
                line(vec1.x, vec1.y, vec2.x, vec2.y);
                noiseCount += 0.5;
            }
        }

    })
}

