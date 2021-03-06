PShape states, alabama, alaska, arizona, arkansas, california, colorado, 
connecticut, delaware, florida, georgia, hawaii, idaho, illinois, indiana, iowa, kansas, 
kentucky, louisiana, maine, maryland, massachusetts, michigan, minnesota, mississippi, 
missouri, montana, nebraska, nevada, newHampshire, newJersey, newMexico, newYork, northCarolina, 
northDakota, ohio, oklahoma, oregon, pennsylvania, rhodeIsland, southCarolina, southDakota, 
tennessee, texas, utah, vermont, virginia, washington, westVirginia, wisconsin, wyoming;

int mapXPos = 30;
int mapYPos = 60;

void setup () {
  size(600, 400, P2D);
  background(255);
  colorMode(RGB, 70);
  noStroke();
  smooth();
  colorMode(RGB);
  states = loadShape("map.svg");
  alabama = states.getChild("AL");
  alaska = states.getChild("AK");
  arizona = states.getChild("AZ");
  arkansas = states.getChild("AR");
  california = states.getChild("CA");
  colorado = states.getChild("CO");
  connecticut = states.getChild("CT");
  delaware = states.getChild("DE");
  florida = states.getChild("FL");
  georgia = states.getChild("GA");
  hawaii = states.getChild("HI");
  idaho = states.getChild("ID");
  illinois = states.getChild("IL");
  indiana = states.getChild("IN");
  iowa = states.getChild("IA");
  kansas = states.getChild("KS");
  kentucky = states.getChild("KY");
  louisiana = states.getChild("LA");
  maine = states.getChild("ME");
  maryland = states.getChild("MD");
  massachusetts = states.getChild("Mass");
  michigan = states.getChild("MI");
  minnesota = states.getChild("MN");
  mississippi = states.getChild("MS");
  missouri = states.getChild("MO");
  montana = states.getChild("MT");
  nebraska = states.getChild("NE");
  nevada = states.getChild("NV");
  newHampshire = states.getChild("NH");
  newJersey = states.getChild("NJ");
  newMexico = states.getChild("NM");
  newYork = states.getChild("NY");
  northCarolina = states.getChild("NC");
  northDakota = states.getChild("ND");
  ohio = states.getChild("OH");
  oklahoma = states.getChild("OK");
  oregon = states.getChild("OR");
  pennsylvania = states.getChild("PA");
  rhodeIsland = states.getChild("RI");
  southCarolina = states.getChild("SC");
  southDakota = states.getChild("SD");
  tennessee = states.getChild("TN");
  texas = states.getChild("TX");
  utah = states.getChild("UT");
  vermont = states.getChild("VT");
  virginia = states.getChild("VA");
  washington = states.getChild("WA");
  westVirginia = states.getChild("WV");
  wisconsin = states.getChild("WI");
  wyoming = states.getChild("WY");
  alabama.disableStyle();
  alaska.disableStyle();
  arizona.disableStyle();
  arkansas.disableStyle();
  california.disableStyle();
  colorado.disableStyle();
  connecticut.disableStyle();
  delaware.disableStyle();
  florida.disableStyle();
  georgia.disableStyle();
  hawaii.disableStyle();
  idaho.disableStyle();
  illinois.disableStyle();
  indiana.disableStyle();
  iowa.disableStyle();
  kansas.disableStyle();
  kentucky.disableStyle();
  louisiana.disableStyle();
  maine.disableStyle();
  maryland.disableStyle();
  massachusetts.disableStyle();
  michigan.disableStyle();
  minnesota.disableStyle();
  mississippi.disableStyle();
  missouri.disableStyle();
  montana.disableStyle();
  nebraska.disableStyle();
  nevada.disableStyle();
  newHampshire.disableStyle();
  newJersey.disableStyle();
  newMexico.disableStyle();
  newYork.disableStyle();
  northCarolina.disableStyle();
  northDakota.disableStyle();
  ohio.disableStyle();
  oklahoma.disableStyle();
  oregon.disableStyle();
  pennsylvania.disableStyle();
  rhodeIsland.disableStyle();
  southCarolina.disableStyle();
  southDakota.disableStyle();
  tennessee.disableStyle();
  texas.disableStyle();
  utah.disableStyle();
  vermont.disableStyle();
  virginia.disableStyle();
  washington.disableStyle();
  westVirginia.disableStyle();
  wisconsin.disableStyle();
  wyoming.disableStyle();

  Table data = loadTable("data.csv");
  String[] states = new String[data.getRowCount()];
  float[] values = new float[data.getRowCount()];

  for(int i = 0; i < data.getRowCount(); i++) {
    states[i] = data.getRow(i).getString(0);
    values[i] = data.getRow(i).getFloat(1);
  }

  fill(values[0], 0, 0);
  shape(alabama, mapXPos, mapYPos);
  fill(values[1], 0, 0);
  shape(alaska, mapXPos, mapYPos);
  fill(values[2], 0, 0);
  shape(arizona, mapXPos, mapYPos);
  fill(values[3], 0, 0);
  shape(arkansas, mapXPos, mapYPos);
  fill(values[4], 0, 0);
  shape(california, mapXPos, mapYPos);
  fill(values[5], 0, 0);
  shape(colorado, mapXPos, mapYPos);
  fill(values[6], 0, 0);
  shape(connecticut, mapXPos, mapYPos);
  fill(values[7], 0, 0);
  shape(delaware, mapXPos, mapYPos);
  fill(values[8], 0, 0);
  shape(florida, mapXPos, mapYPos);
  fill(values[9], 0, 0);
  shape(georgia, mapXPos, mapYPos);
  fill(values[10], 0, 0);
  shape(hawaii, mapXPos, mapYPos);
  fill(values[11], 0, 0);
  shape(idaho, mapXPos, mapYPos);
  fill(values[12], 0, 0);
  shape(illinois, mapXPos, mapYPos);
  fill(values[13], 0, 0);
  shape(indiana, mapXPos, mapYPos);
  fill(values[14], 0, 0);
  shape(iowa, mapXPos, mapYPos);
  fill(values[15], 0, 0);
  shape(kansas, mapXPos, mapYPos);
  fill(values[16], 0, 0);
  shape(kentucky, mapXPos, mapYPos);
  fill(values[17], 0, 0);
  shape(louisiana, mapXPos, mapYPos);
  fill(values[18], 0, 0);
  shape(maine, mapXPos, mapYPos);
  fill(values[19], 0, 0);
  shape(maryland, mapXPos, mapYPos);
  fill(values[20], 0, 0);
  shape(massachusetts, mapXPos, mapYPos);
  fill(values[21], 0, 0);
  shape(michigan, mapXPos, mapYPos);
  fill(values[22], 0, 0);
  shape(minnesota, mapXPos, mapYPos);
  fill(values[23], 0, 0);
  shape(mississippi, mapXPos, mapYPos);
  fill(values[24], 0, 0);
  shape(missouri, mapXPos, mapYPos);
  fill(values[25], 0, 0);
  shape(montana, mapXPos, mapYPos);
  fill(values[26], 0, 0);
  shape(nebraska, mapXPos, mapYPos);
  fill(values[27], 0, 0);
  shape(nevada, mapXPos, mapYPos);
  fill(values[28], 0, 0);
  shape(newHampshire, mapXPos, mapYPos);
  fill(values[29], 0, 0);
  shape(newJersey, mapXPos, mapYPos);
  fill(values[30], 0, 0);
  shape(newMexico, mapXPos, mapYPos);
  fill(values[31], 0, 0);
  shape(newYork, mapXPos, mapYPos);
  fill(values[32], 0, 0);
  shape(northCarolina, mapXPos, mapYPos);
  fill(values[33], 0, 0);
  shape(northDakota, mapXPos, mapYPos);
  fill(values[34], 0, 0);
  shape(ohio, mapXPos, mapYPos);
  fill(values[35], 0, 0);
  shape(oklahoma, mapXPos, mapYPos);
  fill(values[36], 0, 0);
  shape(oregon, mapXPos, mapYPos);
  fill(values[37], 0, 0);
  shape(pennsylvania, mapXPos, mapYPos);
  fill(values[38], 0, 0);
  shape(rhodeIsland, mapXPos, mapYPos);
  fill(values[39], 0, 0);
  shape(southCarolina, mapXPos, mapYPos);
  fill(values[40], 0, 0);
  shape(southDakota, mapXPos, mapYPos);
  fill(values[41], 0, 0);
  shape(tennessee, mapXPos, mapYPos);
  fill(values[42], 0, 0);
  shape(texas, mapXPos, mapYPos);
  fill(values[43], 0, 0);
  shape(utah, mapXPos, mapYPos);
  fill(values[44], 0, 0);
  shape(vermont, mapXPos, mapYPos);
  fill(values[45], 0, 0);
  shape(virginia, mapXPos, mapYPos);
  fill(values[46], 0, 0);
  shape(washington, mapXPos, mapYPos);
  fill(values[47], 0, 0);
  shape(westVirginia, mapXPos, mapYPos);
  fill(values[48], 0, 0);
  shape(wisconsin, mapXPos, mapYPos);
  fill(values[49], 0, 0);
  shape(wyoming, mapXPos, mapYPos);
}
