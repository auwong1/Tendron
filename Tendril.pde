class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {
    //your code here
    double startX = myX;
    double startY = myY;
    double endX = myX;
    double endY = myY;
    stroke((int)endX - 100, (int)endY - 100, 255);
    for(int i = 0; i < myNumSegments; i++){
      myAngle += (double)((Math.random() * 0.4) - 0.2);
      endX = startX + (Math.cos(myAngle) * SEG_LENGTH);
      endY = startY + (Math.sin(myAngle) * SEG_LENGTH);
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = endX;
      startY = endY;
    }    
    if(myNumSegments >= 4)
      new Cluster(myNumSegments/3, (int)startX, (int)startY);
  }
}
