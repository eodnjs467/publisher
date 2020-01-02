
public class TvTest {

	public static void main(String[] args) {
		
		int a = 10;
		Tv myTv = new Tv();
		Tv myTv2 = new Tv();
		Tv myTv3 = myTv;
		
		
		
		myTv.channel = 13;
		System.out.println( myTv.channel );
		
		myTv.channel++;
		System.out.println( myTv.channel );
		
		myTv.channelUp();
		System.out.println( myTv.channel );
	
		System.out.println("채널 내리기 준비......");
		for(int i=0 ; i<20 ; i++){
			myTv.channelDown();
		}
		
		myTv.volumeUp();
		System.out.println(myTv.volume);
		myTv.volumeDown();
		System.out.println(myTv.volume);
		
	}

}
