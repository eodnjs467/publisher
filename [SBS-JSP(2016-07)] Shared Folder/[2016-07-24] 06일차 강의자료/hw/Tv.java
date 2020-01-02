
public class Tv {
	String color;
	boolean power;
	int channel;
	int volume;
	
	public void power(){
		power = !power;
	}
	
	public void channelUp(){
		channel++;
	}
	
	public void channelDown(){
		if( channel > 0 ){
			channel--;
			System.out.println("채널을 하나 내렸습니다. 현재 채널은 : " + channel);
		}else{
			System.out.println("더이상 채널을 내릴수 없어요! 그만 눌러요!! 현재 채널 : " + channel);
			channel = 1;
		}
	}
	
	public void volumeUp(){
		volume++;
	}
	
	public void volumeDown(){
		volume--;
	}
	

	
}
