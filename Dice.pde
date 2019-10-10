float diceSize = 20;

void setup()
{
	noLoop();
	size(500,550);
}
void draw()
{
	//your code here
	int dieSum = 0;
	background(150);

	for(int countY=0 ; countY<height-50 ; countY+=diceSize )
	{
		for(int countX=0 ; countX<width ; countX+=diceSize )
		{
			Die baconDie = new Die(countX,countY);
			baconDie.show();
			dieSum+=baconDie.dieValue;
		}
	}
	textAlign(CENTER);
	text("Total: "+ dieSum,250,525);

}
void mousePressed()
{
	redraw();
	
}
class Die //models one single dice cube
{
	int dieValue;
	float dieSize;
	float dieX, dieY;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		dieX = x;
		dieY = y;
		roll();
		dieSize = diceSize;
	}
	void roll()
	{
		dieValue = (int)(Math.random()*6)+1;


	}
	void show()
	{
		//your code here
		fill(255);
		rect(dieX,dieY,dieSize,dieSize);
		fill(0);
		if(dieValue==1 || dieValue==5 || dieValue==3)
		{
			ellipse(dieX+dieSize/2,dieY+dieSize/2,dieSize/5,dieSize/5);
		}
		if(dieValue>=2)
		{
			ellipse(dieX+dieSize/4,dieY+dieSize/4,dieSize/5,dieSize/5);
			ellipse(dieX+dieSize/4*3,dieY+dieSize/4*3,dieSize/5,dieSize/5);
		}
		if(dieValue>=4)
		{
			ellipse(dieX+dieSize/4,dieY+dieSize/4*3,dieSize/5,dieSize/5);
			ellipse(dieX+dieSize/4*3,dieY+dieSize/4,dieSize/5,dieSize/5);
		}
		if(dieValue==6)
		{
			ellipse(dieX+dieSize/4,dieY+dieSize/2,dieSize/5,dieSize/5);
			ellipse(dieX+dieSize/4*3,dieY+dieSize/2,dieSize/5,dieSize/5);
		}

	}
}
