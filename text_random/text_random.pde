PFont font;
int rand, pt;
String copytext = " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
int i=1;
void setup (){
 size ( 1000, 1000);
 smooth();
 frameRate (10);

}

void draw (){
  //ran font size
  pt = int(random(1, 20));
  font = createFont ("arial", pt, true);
  textFont (font);
   fill (0, mouseX);
 
  if (mousePressed) {
 //places text at mouse point, remove for print  
 //text (copytext.charAt (i-1), mouseX, mouseY);
  text (copytext, 240, 200);
 if (i<copytext.length());{
   i++;}
  }
 else {i=1;};
  
}
 
