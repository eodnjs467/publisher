
public class GuguChild extends Gugu{
	
	public int[] evenGugu(int num){ // ¦��
		System.out.println("[DEBUG] evenGugu ����!");
		int[] result = new int[9];
		int i = 0;
		while( i < 9 ){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	public int[] oddGugu(int num){ // Ȧ��
		System.out.println("[DEBUG] oddGugu ����!");
		int[] result = new int[9];
		for(int i=0 ; i<result.length ; i++ ){
			result[i] = num * (i+1);
		}
		return result;
	}
	
	//  �������� ¦�� �ε��� �� 4�� �ε����� �����ϰ� ������ ���
	public void printGugu(int[] arr){
		System.out.println("[DEBUG] printGugu ����!");
		
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
