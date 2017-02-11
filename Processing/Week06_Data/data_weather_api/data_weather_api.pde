String[] cities = {"San Diego", "New York", "Honolulu"};
XML xml;

void setup() {
  size(600, 400);
  background(255);
  for (int i = 0; i < cities.length; i++) {
    xml = loadXML("http://api.openweathermap.org/data/2.5/weather?q=" + cities[i] + "&mode=xml&units=imperial");
    XML[] children = xml.getChildren("temperature");
    float cityTemp = children[0].getFloat("value");
    fill(0);
    text(cities[i], 50 + (width/cities.length)*i, height/2 - 50);
    text(cityTemp, 50 + (width/cities.length)*i, height/2);
  }
}
