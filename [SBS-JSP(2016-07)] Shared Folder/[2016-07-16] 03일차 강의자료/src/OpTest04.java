
public class OpTest04 {

	public static void main(String[] args) {

		int num1 = 10;
		int num2 = 3;
		
		boolean bool1;
		boolean bool2;
		
		bool1 = num1 > num2;
		bool2 = num1 == num2;
		
		boolean bool3 = bool1 && bool2;	
		
		System.out.println( bool1 && bool2 );
		System.out.println( bool1 || bool2 );
		
		System.out.println( (num1 > num2) && (num1 == num2)  );
		
	}

}
