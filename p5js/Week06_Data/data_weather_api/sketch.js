var cities = ["San Diego", "New York", "Honolulu"];
var weather = [];

function preload() {
  var url = 'http://api.openweathermap.org/data/2.5/weather?q=';
  // Please login into http://openweathermap.org/api and get your own appid
  var settings = '&units=imperial'
  var appid = '&appid=2dd2ba333f1580953e2e4bd38c7b227a';
  for (var i = 0; i < cities.length; i++) {
    var city = cities[i];
    weather.push(loadJSON(url + city + settings + appid));
  }
}

function setup() {
  createCanvas(600, 400);
  noStroke();
  background(255);
  textSize(24);
  textAlign(CENTER);
  translate(width/2, 50);
  for (var i = 0; i < weather.length; i++) {
    text(cities[i] + " - " + weather[i].main.temp, 0, 40*i);
  }
}