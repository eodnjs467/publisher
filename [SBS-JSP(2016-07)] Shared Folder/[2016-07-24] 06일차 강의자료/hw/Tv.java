
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
			System.out.println("ä���� �ϳ� ���Ƚ��ϴ�. ���� ä���� : " + channel);
		}else{
			System.out.println("���̻� ä���� ������ �����! �׸� ������!! ���� ä�� : " + channel);
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
