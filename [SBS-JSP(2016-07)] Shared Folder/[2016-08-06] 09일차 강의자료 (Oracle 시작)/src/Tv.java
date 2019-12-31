public class Tv {
	public boolean power;
	public int channel;
	public int volume;
	
	public void power(){ power = !power;}
	public void channelUp(){ channel++; }
	public void channelDown(){ channel --; }
	public void volumeUp(){ volume++; }
	public void volumeDown(){ volume--; }
}
