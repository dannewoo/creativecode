////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

  //Choose a density of objects (if you don't want to fry your computer, I'd be careful with very high values); default = 15;
  int density = 15;
  
  //Choose the magnitude of craziness (I suggest toying around wtih values for different effects); default = 6;
  float magnitudeOfCrazyness = 6;
  
  //Choose base color (or set it to random); default = round(random(360));
  int baseColor = round(random(360));
  
  //Choose the file name you want to put the sketch out as. default = TriangleMadness;
  String fileName = "TriangleMadness";

  //Brightening filter Intensity (0-100); default = 3
  int filterIntensity = 3;
  
  //Levels; default = 5;
  int levelsOfZ = 5;
  
  //Fill triangles? (1 = fill; 0 = no fill);
  int fillTriangles = 1;
  
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

  void setup(){
    size(displayWidth, displayHeight);
    colorMode(HSB, 360, 100, 100, 100);
    background(baseColor, 10, 55 + (45 * pow((-1), round(random(1, 1.8)))) );
    noStroke();
    stroke(255);
    fill(0,0,0,0);
  
    int amount = 100 * density;
    int amountOfPoints = amount + 4;
    int triangleSaturation = 70;
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //Create an array that generates randoom coordinates for [i] amount of points.
  //Syntax for the i-th point location = (points[i].x, points[i].y);
      
    PVector[] points = new PVector[amountOfPoints];
    
    //Corner Points:
      points[0] = new PVector (0,0);
      points[1] = new PVector (width,0);
      points[2] = new PVector (width,height);
      points[3] = new PVector (0,height);      
    
    for (int i = 4; i<amountOfPoints; i++){
      float xRandom = random(width);
      float yRandom = random(height);
      points[i] = new PVector (xRandom, yRandom);
    }
  
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //Draw points on the canvas
    
//    for (int a=0; a<amountOfPoints; a++){
//      point( (points[a].x) , (points[a].y) );
//    }
    
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //distance[n][m] is distance between points[n] and points[m]
  
    float[][] distance = new float[amountOfPoints][amountOfPoints];
    
    for (int n = 0; n<amountOfPoints; n++){
      for (int m = 0; m<amountOfPoints; m++){
        distance[n][m] = points[n].dist(points[m]);
      }
    }
    
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //distanceSorted[n][m] is m-th smallest distance from points[n]
    
    float[][] distanceSorted = new float[amountOfPoints][];
    
    for (int n = 0; n<amountOfPoints; n++){
      distanceSorted[n] = sort(distance[n]);
    }
    
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //make the lineDrawn[m][n] array
    
    int[][] lineDrawn = new int[amountOfPoints][amountOfPoints];
    
    for (int n = 0; n<amountOfPoints; n++){
      for (int m = 0; m<amountOfPoints; m++){
        lineDrawn[n][m] = 0;
      }
      lineDrawn[n][n] = 1;
    }
    
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //Draw triangles to two closest points:
    
    strokeWeight(1);
    
    int trianglesDrawn = 0;
    
    int[] firstClosest = new int[amountOfPoints];
    
    for (int n = 0; n<amountOfPoints; n++){
      for (int m = 0; m<amountOfPoints; m++){
        if (distanceSorted[m][1] == distance[m][n]){
          firstClosest[m] = n;
        }
      }
    }
    
    int[] secondClosest = new int[amountOfPoints];
    
    for (int n = 0; n<amountOfPoints; n++){
      for (int m = 0; m<amountOfPoints; m++){
        if (distanceSorted[m][2] == distance[m][n]){
          secondClosest[m] = n;
        }
      }
    }
    
    for (int a = 0; a<amountOfPoints; a++){
      for (int z = 0; z<levelsOfZ; z++){
        trianglesDrawn++;
        int negOneZeroOrOne = round(random(-1,1));
        int randomMonochromatic = abs(baseColor + (negOneZeroOrOne*30) )%360;
        pushMatrix();
        translate(/*(levelsOfZ-z)**/random(-magnitudeOfCrazyness,magnitudeOfCrazyness),/*(levelsOfZ-z)**/random(-magnitudeOfCrazyness,magnitudeOfCrazyness));
        stroke(randomMonochromatic , triangleSaturation, 100, 20 + ( (80 / ( pow(levelsOfZ,3) ) ) * pow((z+1),3) ) );
        triangle(points[a].x, points[a].y, points[firstClosest[a]].x, points[firstClosest[a]].y, points[secondClosest[a]].x, points[secondClosest[a]].y);
        popMatrix();
      }
    }
    
    println("Triangles Drawn: " + trianglesDrawn);
    
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //mthClosestPointID[n][m] returns the ID of m-th closest point to point n.
    
    int[][] mthClosestPointID = new int[amountOfPoints][amountOfPoints];
    
    for (int n = 0; n<amountOfPoints; n++){
      for (int m = 0; m<amountOfPoints; m++){
        for (int z = 0; z<amountOfPoints; z++){
          if (distanceSorted[n][m] == distance[n][z]){
            mthClosestPointID[n][m] = z;
//            println("Top " + m + "-th closest point to points[" + n + "] is points[" + mthClosestPointID[n][m] + "].");
          }
        }
      }
//      println();
    }
    
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //Draw two closest points (only if not drawn already!)
  //linesDrawn[z] = how many lines drawn from point z

    int[] linesDrawn = new int[amountOfPoints];
    
    for(int z = 0; z<amountOfPoints; z++){
      pushMatrix();
      beginShape();
      strokeWeight(0);
      stroke(200,0,100);
      fill(baseColor, 50, 100, fillTriangles * random(20,30));
      vertex(points[z].x, points[z].y);
      for (int m = 0; m<amountOfPoints; m++){
        if (lineDrawn[z][mthClosestPointID[z][m]] == 0 && linesDrawn[z] < 2){
          vertex(points[mthClosestPointID[z][m]].x, points[mthClosestPointID[z][m]].y);
//          vertex(points[mthClosestPointID[z][1]].x, points[mthClosestPointID[z][1]].y);
//          vertex(points[mthClosestPointID[z][2]].x, points[mthClosestPointID[z][2]].y);
          linesDrawn[z]++;
        }
      }
      vertex(points[z].x, points[z].y);
      endShape();
      popMatrix();
    }

////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
  //Filter
    noStroke();
    fill(0,0,100,filterIntensity);
    rect(0,0,width,height);
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
    saveFrame(fileName + ".png");
    println();
    println("I hope you like the sketch! Try adjusting the variables in the beginning of the code for more fun.");
    println("By: Adolfas Lapsys");
    //System.exit(0);
}

