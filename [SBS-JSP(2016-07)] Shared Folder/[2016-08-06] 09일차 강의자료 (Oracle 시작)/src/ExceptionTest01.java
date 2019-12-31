public class ExceptionTest01 {
	public static void main(String[] args) {
		int number = 100;
		int result = 0;
		
		for(int i=0 ; i<10 ; i++){
			result = number / (int) (Math.random() * 10);
			System.out.println(result);
		}
		System.out.println("for Àß³¡³µ¾î!!!");
	}
}
