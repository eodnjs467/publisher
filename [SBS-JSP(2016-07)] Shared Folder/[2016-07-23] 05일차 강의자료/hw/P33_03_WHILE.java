
public class P33_03_WHILE {

	public static void main(String[] args) {

		int i=2;
		int j=1;
		while( i<=9 ){
			j = 0;
			while( j<=9 ){
				System.out.println(i + " X " + j + " = " + i*j);
				j++;
			}
			i++;
		}
	}
}
