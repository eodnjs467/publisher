
public class P33_05_WHILE {

	public static void main(String[] args) {

		int i = 1;
		while (i <= 9){
			if( i == 5) {
				System.out.println("5�϶� ��¾���!");
				i++;
				continue;
			}
			
			System.out.println("2 X " + i + " = " + 2*i);
			i++;
		}
		
	}
}
