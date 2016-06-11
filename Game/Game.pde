/* Welcome to: PACMAN 2.0!
Team Who Killed JFKate -- FINAL PROJECT! */

/*=============================================
  class Game -- The main class!
  Required classes: Map, MapTile, Character, Ghost, Pacman, Dot, Fruit, GlowyDot, RegDot, Stack, ALStack
  =============================================*/

Pacman pac = new Pacman();
int gameState = START;

final static int START = 0;
final static int PLAYING = 1;
final static int GAMEOVER = 2;

void setup() {
    size(630,630);
    background(0);
  }
  
  void draw() {
  
    while (! gameOver()) {
      clear();
      pac.draw();
      pac.move();
    }
    
  }
  
  void keyPressed() {
    
    if (key == CODED ) {
      
      if (keyCode == LEFT) { //move down the x axis
        pac.setDirectionX(-1);
        pac.setDirectionY(0);
      }
      else if (keyCode == RIGHT) { //move up the x axis
        pac.setDirectionX(1);
        pac.setDirectionY(0);
      }
      else if (keyCode == UP) { //move down the y axis
        pac.setDirectionX(0);
        pac.setDirectionY(-1);
      }
      else if (keyCode == DOWN) { //move up the y axis
        pac.setDirectionX(0);
        pac.setDirectionY(1);
      }
      
    }
    
  }
  
  boolean gameOver() {
      boolean r = pac.getMap().getDotCount() == 0 ;
      if ( r ) { gameState = GAMEOVER; }
      return r;
  }
  
  void levelUp() {
    //speed --> increases
    //map --> next?
  }