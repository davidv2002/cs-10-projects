//setup
size(1024, 768);
String title= "Wahoo!";
PFont titleFont;
String[] fontList = PFont.list(); //To list all fonts available on system
println("start");
printArray(fontList);
titleFont = createFont ("Microsoft Sans Serif", 55);
color red = #ED2626;

//drawing
rect(width*1/4, height*0, width*1/2, height*1/10);
fill(red);
textAlign (CENTER, CENTER);
textFont(titleFont, 55);
text(title, width*1/4, height*0, width*1/2, height*1/10);
// coler reset
fill(255);
