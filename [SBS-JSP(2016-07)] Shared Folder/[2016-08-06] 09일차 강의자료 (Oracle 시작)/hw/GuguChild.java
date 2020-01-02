
public class GuguChild extends Gugu{
	
	public int[] evenGugu(int num){ // 짝수
		System.out.println("[DEBUG] evenGugu 진입!");
		int[] result = new int[9];
		int i = 0;
		while( i < 9 ){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	public int[] oddGugu(int num){ // 홀수
		System.out.println("[DEBUG] oddGugu 진입!");
		int[] result = new int[9];
		for(int i=0 ; i<result.length ; i++ ){
			result[i] = num * (i+1);
		}
		return result;
	}
	
	//  정순으로 짝수 인덱스 중 4번 인덱스를 제외하고 값들을 출력
	public void printGugu(int[] arr){
		System.out.println("[DEBUG] printGugu 진입!");
		
		for(int i=0 ; i<arr.length ; i++){
			if( i == 4 ){
				continue;
			}
			if( i % 2 == 0){
				System.out.println(arr[i]);
			}
		}
	}
}
