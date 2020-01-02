
public class P33_02_WHILE {

	public static void main(String[] args) {

		int i=1;
		while( i<=9 ){
			if( i%2 == 1)
				System.out.println("2 X " + i + " = " + 2*i);
			i++;
		}
		System.out.println(i);
	}
}
