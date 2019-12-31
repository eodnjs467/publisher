
public class P33_04_FOR {

	public static void main(String[] args) {

		for(int i=1 ; i<=9 ; i++){
			
			if ( i == 6 ){
				System.out.println("2 X " + i + " = " + 2*i);
				System.out.println("6까지만 곱하고 끝!");
				break;
			}
			
			if( i % 2 == 0)
				System.out.println("2 X " + i + " = " + 2*i);
		}
	}
}
