
public class IfHW {

	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 10;
		
		// 중첩 if문
		if( (num1 >= num2) && (num1 > num2) ){
			System.out.println("num1은 num2 초과입니다");
		}else if( (num1 >= num2) && !(num1 > num2) ){
			System.out.println("num1은 num2와 같습니다");
		}else{
			System.out.println("num1은 num2 미만입니다");
		}
		System.out.println("끝");
		
		
	}
}