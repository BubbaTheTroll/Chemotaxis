 
Bacteria [] swarm;
Food [] colony;
 //declare bacteria variables here   
 void setup()   
 {     
 	
 	size(700,700);
        swarm = new Bacteria [20];
        for (int j = 0; j < swarm.length; j++){
                swarm[j] = new Bacteria (200,200);
        }	

 	colony = new Food[100];
 	for (int i = 0; i < colony.length; i++){
 		colony[i] = new Food(i,i);
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	
 	background(0,0,0);
 	for(int i = 0; i < colony.length; i++){
 		colony[i].move();
 		colony[i].show();
 	}
        for (int j = 0; j < swarm.length; j++){
                swarm[j].move();
                swarm[j].show();
        }



 }  
 class Bacteria    
 {     
 	int bacX, bacY;
 	Bacteria(int x, int y)
 	{
 		
 		bacX = x;
 		bacY = y;
 	}
 	void move(){
 		
 		frameRate(10);
 		bacX = bacX+(int)(Math.random()*100)-50;
 		bacY = bacY+(int)(Math.random()*100)-50;
 		
 	}
 	void show(){
 		fill(255,255,0);
 		ellipse(bacX, bacY, 20,20);
 	}
 	//lots of java!   
 }
 class Food
 {
 	int foodX, foodY;
 	Food(int x, int y){
 		foodX = x;
 		foodY = y;
 	}
 	void move(){
 		frameRate(10);
 		foodX = (int)(Math.random()*800);
 		foodY = (int)(Math.random()*800);
 	}
 	void show(){
 		fill(0,255,255);
 		ellipse(foodX, foodY, 10,10);
 	}

 } 
