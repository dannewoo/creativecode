float linearChange(float in, float inMin, float inMax, float outMin, float outMax){
  return outMin + ((outMax - outMin) * ((in-inMin)/(inMax - inMin)));
}

float nonLinearChange(float in, float inMin, float inMax, float outMin, float outMax, float toWhatPower){
//  float inDif = (inMax - inMin);
//  float outDif = (outMax - outMin);
//  float relIn = (pow(((in-inMin) / inDif), toWhatPower));
  return outMin + ((outMax - outMin) * (pow(((in-inMin) / (inMax - inMin)), toWhatPower)));
}
