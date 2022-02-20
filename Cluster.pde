public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  public Cluster(int len, int x, int y){
      Tendril bob1 = new Tendril(len, (2*PI/7)*0, x, y);
      Tendril bob2 = new Tendril(len, (2*PI/7)*1, x, y);
      Tendril bob3 = new Tendril(len, (2*PI/7)*2, x, y);
      Tendril bob4 = new Tendril(len, (2*PI/7)*3, x, y);
      Tendril bob5 = new Tendril(len, (2*PI/7)*4, x, y);
      Tendril bob6 = new Tendril(len, (2*PI/7)*5, x, y);
      Tendril bob7 = new Tendril(len, (2*PI/7)*6, x, y);
      bob1.show();
      bob2.show();
      bob3.show();
      bob4.show();
      bob5.show();
      bob6.show();
      bob7.show();
  }
}
