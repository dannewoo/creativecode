void setup(){
size (612,792);
background (255);

//faceblobs
//blue
beginShape();
fill(#9F4F23, 198); 
noStroke();
curveVertex(377, 121);
curveVertex(381, 139);
curveVertex(389, 162);
curveVertex(409, 175);
curveVertex(399, 194);
curveVertex(417, 208);
curveVertex(398, 262);
curveVertex(379, 282);
curveVertex(377, 305);
curveVertex(393, 329);
curveVertex(437, 369);
curveVertex(435, 455);
curveVertex(408, 450);
curveVertex(358, 462);
curveVertex(310, 482);
curveVertex(285, 478);
curveVertex(249, 432);
curveVertex(282, 327);
curveVertex(291, 297);
curveVertex(301, 281);
curveVertex(294, 273);
curveVertex(289, 259);
curveVertex(290, 241);
curveVertex(299, 215);
curveVertex(277, 205);
curveVertex(276, 171);
curveVertex(296, 136);
curveVertex(317, 122);
curveVertex(336, 117);
curveVertex(365, 118);
endShape();
//green
beginShape();
fill(#6EC5A3, 198); 
noStroke();
curveVertex(286, 170);
curveVertex(267, 176);
curveVertex(254, 184);
curveVertex(237, 210);
curveVertex(235, 230);
curveVertex(240, 244);
curveVertex(245, 248);
curveVertex(248, 251);
curveVertex(248, 255);
curveVertex(247, 259);
curveVertex(237, 268);
curveVertex(229, 274);
curveVertex(212, 295);
curveVertex(202, 316);
curveVertex(197, 336);
curveVertex(195, 350);
curveVertex(191, 366);
curveVertex(183, 413);
curveVertex(183, 441);
curveVertex(186, 463);
curveVertex(199, 481);
curveVertex(221, 488);
curveVertex(248, 478);
curveVertex(266, 459);
curveVertex(287, 433);
curveVertex(300, 425);
curveVertex(309, 428);
curveVertex(313, 435);
curveVertex(314, 449);
curveVertex(317, 457);
curveVertex(328, 458);
curveVertex(336, 452);
curveVertex(342, 445);
curveVertex(343, 435);
curveVertex(340, 413);
curveVertex(338, 366);
curveVertex(338, 339);
curveVertex(333, 296);
curveVertex(327, 277);
curveVertex(321, 262);
curveVertex(315, 240);
curveVertex(317, 210);
curveVertex(320, 202);
curveVertex(321, 185);
curveVertex(319, 181);
curveVertex(302, 170);
curveVertex(286, 170);
endShape();

//left eye white
beginShape();
fill(#FFFFFF); 
stroke(#FFFFFF);
strokeWeight(4);
curveVertex(218, 334.38);
curveVertex(223, 330.6);
curveVertex(228, 330.4);
curveVertex(252.7, 331);
curveVertex(260.5, 334);
curveVertex(254, 337);
curveVertex(222, 336);
curveVertex(216, 334);
endShape();

//right eye white
beginShape();
fill(#FFFFFF); 
stroke(#FFFFFF);
strokeWeight(4);
curveVertex(362, 350);
curveVertex(354, 355);
curveVertex(368, 356);
curveVertex(401, 356);
curveVertex(405, 354);
curveVertex(404, 354);
curveVertex(399, 350);
curveVertex(385, 349);
curveVertex(362, 350);
curveVertex(359, 349);
endShape();

//scale
beginShape();
noFill();
stroke(#FFFFFF);
strokeWeight(2);
curveVertex(237, 340);
curveVertex(237, 325);
curveVertex(238, 320);
curveVertex(238, 310);
curveVertex(238, 303);
curveVertex(239, 303);
curveVertex(244, 303);
curveVertex(330, 303);
curveVertex(360, 308);
curveVertex(390, 308);
endShape();
beginShape();
noFill();
stroke(#FFFFFF);
strokeWeight(2);
line(370, 321, 370, 350);
line(370, 321, 368, 310);
line(368, 310, 361, 309);
line(306, 292, 311, 381);
line(311, 381, 276, 389);
line(276, 389, 258, 394);
line(258, 394, 267, 399);
line(267, 399, 290, 401);
line(290, 401, 325, 402);
line(325, 402, 359, 398);
line(359, 398, 323, 385);
line(323, 385, 311, 381);
endShape();

//eye_dots
//left
beginShape();
fill(#000000); 
stroke(#000000);
strokeWeight(5);
curveVertex(235, 328);
curveVertex(235, 330);
curveVertex(235, 336);
curveVertex(234, 338);
curveVertex(235, 343);
curveVertex(240, 342);
curveVertex(240, 340);
curveVertex(239, 333);
curveVertex(238, 328);
curveVertex(235, 328);
curveVertex(234, 328);
endShape();

//right
beginShape();
fill(#000000);
stroke(#000000);
strokeWeight(5);
curveVertex(380, 345);
curveVertex(380, 347);
curveVertex(380, 352);
curveVertex(379, 355);
curveVertex(380, 360);
curveVertex(385, 360);
curveVertex(385, 357);
curveVertex(384, 350);
curveVertex(383, 345);
curveVertex(380, 345);
curveVertex(379, 345);
endShape();



//letters
//h1_strokes
beginShape();
strokeWeight(2.7);
vertex(236.4, 187.4);
vertex(240.5, 188.4);
endShape();
beginShape();
vertex(245.9, 191.8);
bezierVertex(237.9, 192.9, 241.9, 191.8, 231.7, 190.3); 
endShape();
//h1_bottom_O
noFill();
ellipse(239, 200, 12, 10); 

//h2_strokes
beginShape();
strokeWeight(2.7);
noFill();
line(436, 442, 442, 443);
vertex(434, 445);
bezierVertex(438, 449, 444, 447, 448, 447);
ellipse(441, 457, 11, 10); 
endShape();


//N
beginShape();
vertex(40.52, 323.38);
bezierVertex(45, 324, 36, 333, 54, 331);
endShape();
//UH-E
beginShape();
line(530, 97, 538, 97);
vertex(530, 102);
bezierVertex(533, 104, 534, 103, 537, 101); 
vertex(538, 86);
bezierVertex(538, 97, 537, 106, 538, 113); 
line(542, 85, 543, 116);
endShape();
//O
ellipse(85, 95, 12, 10); 
line(85, 89.5, 88, 87);
//O 2 bottom right
ellipse(491, 658, 11, 10); 
line(490, 652, 494, 650);
//-
beginShape();
vertex(177.197, 471.042);
bezierVertex(183.5, 473, 191, 473, 199.6, 471);
endShape();
//bottomleftOH
beginShape();
line(130,726, 130, 730);
vertex(122, 732);
bezierVertex(129, 734,  135, 732, 141, 732);
line(335, 579, 338, 579);
line(333, 570, 335, 589);
endShape();


//leaves?
/*beginShape();
fill(#762615);
noStroke();
curveVertex(44.8, 543);
curveVertex(51, 530);
curveVertex(52, 526);
curveVertex(52, 524);
curveVertex(47, 513);
curveVertex(48, 510);
curveVertex(51, 508);
curveVertex(53, 508);
curveVertex(49, 509);
curveVertex(53, 508);
curveVertex(55, 506);
curveVertex(56, 503);
curveVertex(51, 493);
curveVertex(53, 490);
curveVertex(55, 489);
curveVertex(60, 492);
curveVertex(64, 490);
curveVertex(66.5, 481);
curveVertex(70, 476);
curveVertex(72, 474);
curveVertex(75, 473);
curveVertex(79, 472);
curveVertex(84, 473);
curveVertex(86, 476);
curveVertex(86, 481);
curveVertex(83, 488);
curveVertex(86, 491);
curveVertex(92, 494);
curveVertex(92, 503);
curveVertex(76, 508);
curveVertex(72, 513);
curveVertex(73, 515);
curveVertex(81, 515);
curveVertex(86, 516);
curveVertex(89, 519);
curveVertex(89, 524);
curveVertex(82, 526);
curveVertex(83, 527);
curveVertex(77, 526);
curveVertex(74, 527);
curveVertex(70, 528);
curveVertex(69, 530);
curveVertex(69, 532);
curveVertex(75, 536);
curveVertex(57, 536);
endShape();*/


}
