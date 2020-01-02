
public class P33_02_FOR {

	public static void main(String[] args) {

		for(int i=1 ; i<=9 ; i++){
			if( i % 2 == 1 )
				System.out.println("2 X " + i + " = " + 2*i);
		}
		System.out.println("##############################");
		for(int i=1 ; i<=9 ; i+=2){
			System.out.println("2 X " + i + " = " + 2*i);
		}
		System.out.println("##############################");
		for(int i=1 ; i<=9 ; i++){
			if( i % 2 == 0 )
				continue;
			System.out.println("2 X " + i + " = " + 2*i);
		}
	}
}
