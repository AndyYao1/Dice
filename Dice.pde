void setup()
{
	noLoop();
	Die = new Dice(10,10);
}
void draw()
{
	//your code here
	background(0);
	Die.show;

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y){ 
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{	
		//your code here
	}
}
