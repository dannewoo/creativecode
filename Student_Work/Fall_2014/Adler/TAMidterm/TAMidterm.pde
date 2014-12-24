import processing.pdf.*;

int Mx=-72;
int y=105;
int test=0;
int Vx=35;
String word="3.14.14";

  
void setup() {   
size (550,850);
beginRecord(PDF, "Midterm.pdf");
background(20);

//VMFONT
PFont vmFont;
vmFont= createFont ("HelveticaCY-Bold", 100);

PFont vmFontbig;
vmFontbig= createFont ("HelveticaCY-Bold", 250);
//Movie Title
PFont tfont;
tfont=createFont("Avenir-Light",20);


//LargeVMsymbol
for(int i=0; i<58; i++)
{
  if( i==24||i==25 ||i==28||i==29)
          {
             if(i==24){
             textFont(vmFontbig);
fill(57,146,147);
text("M",Mx,y);
fill(255);
text("V",Mx+18,y);
             }
           
           }
           
           
           
//BackgroundVMPlacement        
  if(Mx>= width) {y= y+110;
Mx=-72;
}

 Mx=Mx+90;
 {
  if( i==16||i==17 ||i==23||i==24)
          {
          }else {
            {
              
              
//ColoredVMbackground
              if(i==0 ||i== 10|| i== 15|| i==26 ||i==30 ||i==35||i==39 ||i==43 ||i==54)
              
              {
textFont(vmFont);
fill(249,14,147);
text("M",Mx,y);
fill(255);
text("V",Mx+6,y);
}


//RegularSmallVM
 textFont(vmFont);
fill(210,90);
text("M",Mx,y);
fill(255,190);
text("V",Mx+6,y);
//Title
textFont(tfont);
text(word,250,460);

//endrecord
endRecord();



}
}
}
}
}

