
public class P33_05_FOR {

	public static void main(String[] args) {

		for(int i=1 ; i<=9 ; i++){
			
			if( i == 5) {
				System.out.println("5일땐 출력안함!");
				continue;
			}
			
			System.out.println("2 X " + i + " = " + 2*i);
		}
	}
}
