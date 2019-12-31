
public class Gugu {

	// ���� �ϳ��� �Է� �޾Ƽ�
	// 1���� ���� �迭�� num�� 1~9���� ���Ѱ���
	// for���� ����ؼ� ���ʴ�� 1���� �迭�� �ְ�,
	// �׷��� �ϼ��� 1���� �迭�� �����ϴ� �޼���
	public int[] evenGugu(int num){ // ¦��
		System.out.println("[DEBUG] evenGugu ����!");
		               // int num = 2;
		int[] result = new int[9];
		for(int i=0 ; i<result.length ; i++ ){
			result[i] = num * (i+1);
		}
		return result;
	}
	
	// ���� �ϳ��� �Է¹޾Ƽ�
	// 1���� ���� �迭�� num�� 1~9���� ���Ѱ���
	// while���� ����ؼ� ���ʴ�� 1���� �迭�� �ְ�,
	// �׷��� �ϼ��� 1���� �迭�� �����ϴ� �޼���
	public int[] oddGugu(int num){ // Ȧ��
		System.out.println("[DEBUG] oddGugu ����!");
		int[] result = new int[9];
		int i = 0;
		while( i < 9 ){
			result[i] = num * (i+1);
			i++;
		}
		return result;
	}
	
	// 1���� �����迭�� �ϳ� �Է� �޾Ƽ�
	// �� �迭�� �������� ����ϵ�
	// Ȧ�� �ε����� ���� �迭�� ���
	// �׸��� 5�� �ε����� ������� �ʰ� �Ѿ
	public void printGugu(int[] arr){
		System.out.println("[DEBUG] printGugu ����!");
		
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
