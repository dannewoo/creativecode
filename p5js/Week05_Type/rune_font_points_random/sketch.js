var fontSize = 100;
var word = "Hello World!";
var path, polys;

function setup(){
    createCanvas(600,400)  
    background(0)
    var rSpacing = random(5, 20);

    f = new Rune.Font("fonts/ShadowsIntoLight.ttf") 
    // load the font
    f.load(function(err){     
        path = f.toPath(word, 0, 0, fontSize) // this is a rune function
        polys = path.toPolygons({ spacing: rSpacing }) // this is another handy function to get polygons coordinates
        // now we can draw based on the polygon points
        fill(255, 0, 0, 150);
        noStroke();
        translate(100, height/2);
        for (var i=0; i < polys.length ; i++){
            var poly = polys[i];
            for(var j = 1; j < poly.state.vectors.length; j++) {
                var vec = poly.state.vectors[j];
                var r = random(2, 10);
                ellipse(vec.x, vec.y, r, r);
            }
        }

    })
}

