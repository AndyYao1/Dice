Die one;
int total = 0;

void setup()
{
	size(1000, 1000);
	background(0);
	noLoop();
}
void draw()
{
	//your code here
	for (int y = 0; y < 950 ; y+=50) {
		for (int x = 0; x < 1000; x+=50) {
				one = new Die(x,y);
				one.roll();
				one.show();
		}
	}
	fill(255,255,255);
	rect(0,950,1000,50);
	fill(0,0,0);
	text("Total: " + total, 400, 970);
}
void mousePressed()
{
	redraw();
	total = 0;
}
class Die //models one single dice cube
{
	//variable declarations here
	int mySize, myX, myY,roll;
	Die(int x, int y){ 
		//variable initializations here
		mySize = 100;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		roll = (int)(Math.random()*6)+1;
		total = total + roll;
	}
	void show()
	{	
		//your code here
		stroke(0, 0, 0);
		fill(255,255,255);
		rect(myX, myY, mySize, mySize);
		if (roll==1){
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+25, myY+25, 10, 10);
		} else if (roll == 2) {
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+35, myY+25, 10, 10);
			ellipse(myX+15, myY+25, 10, 10);
		}
		 else if (roll == 3) {
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		}
		else if (roll == 4) {
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+35, myY+15, 10, 10);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
		}
		 else if (roll == 5) {
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+15, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);

		}
		 else if (roll == 6) {
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+15, myY+10, 10, 10);
			ellipse(myX+15, myY+40, 10, 10);
			ellipse(myX+15, myY+25, 10, 10);
			ellipse(myX+35, myY+40, 10, 10);
			ellipse(myX+35, myY+10, 10, 10);
			ellipse(myX+35, myY+25, 10, 10);

		}
	}
}
