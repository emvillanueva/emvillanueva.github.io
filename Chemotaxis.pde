Bacteria[] bob;
 //declare bacteria variables here   
 void setup()   
 {     
   background(0);
   size(400,400);
   bob = new Bacteria[350];
   for (int i=0; i< bob.length; i++)
   {
   bob[i] = new Bacteria();
   }
   
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
  for(int i=0; i<bob.length; i++) 
   {
   bob[i].show();
   bob[i].walk();
   bob[i].disperse();
   
   }
   
   //move and show the bacteria   
 }  
 
 class Bacteria    
 {     
   int myColor;
   int x;
   int y;
   int col;
   int temp;
   
   Bacteria()
   {
     x=((int)(Math.random()*400));
     y=((int)(Math.random()*400));
     col= color((int)(Math.random()*250)+9,((int)(Math.random()*250)+9),((int)(Math.random()*250)+9));
     temp=0;
   }
   
   void walk()
   {
     if (mouseX > x)
     {x=x+((int)(Math.random()*5))-1;}
     else
       {x=x+((int)(Math.random()*6))-3;}
     if (mouseY > y)
     {y=y+((int)(Math.random()*5)-1);}
     else
     { y=y+((int)(Math.random()*6)-3);}
     
   }
   void disperse()
   {
     if (mousePressed== true){
       
       if(x>mouseX){
       while(temp<=10){
       x=x+1;
       temp++;}temp=0;
     }
       
       if(x<mouseX){
       while(temp<=10){
       x=x-1;
       temp++;}temp=0;
     }
       
       if(y>mouseY){
       while(temp<=10){
       y=y+1;
       temp++;}temp=0;
     }
       
       if(y<mouseY){
       while(temp<=10){
       y=y-1;
       temp++;}temp=0;
     }
     ;}
 
   }
   
   void show()
   {
     stroke(col);
     fill(0);
     ellipse(x,y,(int)(Math.random()*21)+1,(int)(Math.random()*21)+1);
   }
 }    
