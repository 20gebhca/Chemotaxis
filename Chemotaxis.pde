//To use the program hit any key to create bacteria, and than click and hold the mouse to move them, the more bacteria on the screen the faster they move
//Initializing the array list with help from evan for creating a varying number of arrays
ArrayList<Bacteria> myBacteria = new ArrayList<Bacteria>();
//Global Variables
int i=0;
int num=0;
int randomx;
int randomy;
int ay;
int ax;
int colonysize=10;
int myrandomx;
int myrandomy;
int bias=3;


void setup() {
  //setting up screen
  size(500, 500);
  frameRate(10);
  background(125);
  //for loop to declare bacteria random starting places
  for (int y = 50; y <= 500; y += 50) {
    for (int x = 250; x == 250; x++) {
      ay=(int)(Math.random()*400+50);
      ax=(int)(Math.random()*400+50);
    }
  }
}
//key pressed to create more bacteria in the array list
void keyPressed() {
  for (int i=1; i<10; i++) {
    colonysize+=10;
    ay=(int)(Math.random()*400+50);
    ax=(int)(Math.random()*400+50);
    myBacteria.add(new Bacteria(ax, ay));
  }
}
//mouse pressed to move bacteria towards and past x=0 and y=0
void mousePressed() {
  for (Bacteria b : myBacteria) {
    if ( b.x >20 && b.y > 20) {
      bias+=1;
      System.out.println("ayyy");
    }
    else{
      bias=3;
    }
  }
}
//mouse released to stop movement
void mouseReleased() {
  bias=3;
  System.out.println("ufwhb");
}
//call functions from the classes to draw the bacteria
void draw() {
  background(125);
  for (Bacteria b : myBacteria) {
    b.colonysize();
    b.walk();
    b.show();
    //b.keyPressed();
  }
}
//Bacteria Class
class Bacteria {
  int x;
  int y;
  int r;
  int g;
  int b;

  Bacteria(int _x, int _y) {
    x= _x;
    y= _y;
  }
  //Function to choose random position of bacteria 
  void walk() {
    randomx=(int)(Math.random()*8-bias);
    randomy=(int)(Math.random()*8-bias);
    x += randomx;
    y += randomy;
  }
  //draws bacteria and chooses a random color
  void show() {
    r=(int)(Math.random()*255);
    b=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    fill(r, g, b);
    ellipse(x, y, 20, 20);
  }



//displays how many dots are shown on the screen
  void colonysize() {
    fill(255);
    text("Colony Size- "+colonysize, 300, 490 );
  }
}
