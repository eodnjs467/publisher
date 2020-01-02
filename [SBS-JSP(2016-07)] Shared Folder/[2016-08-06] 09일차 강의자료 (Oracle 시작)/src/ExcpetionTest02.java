
public class ExcpetionTest02 {

	public static void main(String[] args) {
		int number = 100;
		int result = 0;
		
		for(int i=0 ; i<10 ; i++){
			try{
				result = number / (int) (Math.random() * 10);
				System.out.println(result);
			}catch(ArithmeticException e){
				System.out.println("0으로 나눈 에러!");
			}finally{
				System.out.println("여기는 에러가 나든 안나든 실행됩니다!");
			}
		}
		System.out.println("for 잘끝났어!!!");
	}

}
