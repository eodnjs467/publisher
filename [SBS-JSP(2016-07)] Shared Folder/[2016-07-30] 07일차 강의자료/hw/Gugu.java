
public class Gugu {

	// 정수 하나를 입력 받아서
	// 1차원 정수 배열에 num에 1~9까지 곱한값을
	// for문을 사용해서 차례대로 1차원 배열에 넣고,
	// 그렇게 완성된 1차원 배열을 리턴하는 메서드
	public int[] evenGugu(int num){ // 짝수
		System.out.println("[DEBUG] evenGugu 진입!");
		               // int num = 2;
		int[] result = new int[9];
		for(int i=0 ; i<result.length ; i++ ){
			result[i] = num * (i+1);
		}
		return result;
	}
	
	// 정수 하나를 입력받아서
	// 1차원 정수 배열에 num에 1~9까지 곱한값을
	// while문을 사용해서 차례대로 1차원 배열에 넣고,
	// 그렇게 완성된 1차원 배열을 리턴하는 메서드
	public int[] oddGugu(int num){ // 홀수
		System.out.println("[DEBUG] oddGugu 진입!");
		int[] result = new int[9];
		int i = 0;
		while( i < 9 ){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	// 1차원 정수배열을 하나 입력 받아서
	// 그 배열을 역순으로 출력하되
	// 홀수 인덱스를 가진 배열만 출력
	// 그리고 5번 인덱스는 출력하지 않고 넘어감
	public void printGugu(int[] arr){
		System.out.println("[DEBUG] printGugu 진입!");
		
		for(int i = arr.length - 1 ; i >= 0 ; i-- ){
			if( i == 5 ){
				continue;
			}
			if( i % 2 == 1){
				System.out.println(arr[i]);
			}
		}
	}
	
	
	
}
