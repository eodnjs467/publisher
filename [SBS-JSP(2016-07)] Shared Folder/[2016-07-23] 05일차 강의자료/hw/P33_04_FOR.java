
public class P33_04_FOR {

	public static void main(String[] args) {

		for(int i=1 ; i<=9 ; i++){
			
			if ( i == 6 ){
				System.out.println("2 X " + i + " = " + 2*i);
				System.out.println("6������ ���ϰ� ��!");
				break;
			}
			
			if( i % 2 == 0)
				System.out.println("2 X " + i + " = " + 2*i);
		}
	}
}
