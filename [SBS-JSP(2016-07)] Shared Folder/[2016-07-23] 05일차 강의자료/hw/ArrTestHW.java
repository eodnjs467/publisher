
public class ArrTestHW {

	public static void main(String[] args) {

		int[] gugudan2 = new int[9];
		
		// �� �κ� for�� ���� �ٲ㼭 �ѹ��� 9�� �ݺ��Ǽ� ���� �ְ�
		for(int i=0; i<9 ; i++){
			gugudan2[i] = 2 * (i+1);
		}
		
		// �� �κе� for������ �ٲ㼭 �ѹ��� 9�� ����Ҽ� �ְ�
		for(int i=0 ; i<9 ; i++){
			System.out.println("gugudan2["+i+"] : " + gugudan2[i]);
		}
		
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");

		
		// gugudan3, gugudan4 , . . . , gugudan9
		// �䷸�� �� �ܺ��� ������ ����ֱ� 1���� �迭��
		int[] gugudan3 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan3[i] = 3 * (i+1);
		}
		for(int i=0 ; i<9 ; i++){
			System.out.println("gugudan3["+i+"] : " + gugudan3[i]);
		}
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");		
		int[] gugudan4 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan4[i] = 4 * (i+1);
		}
		int[] gugudan5 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan5[i] = 5 * (i+1);
		}
		int[] gugudan6 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan6[i] = 6 * (i+1);
		}
		int[] gugudan7 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan7[i] = 7 * (i+1);
		}
		int[] gugudan8 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan8[i] = 8 * (i+1);
		}
		int[] gugudan9 = new int[9];
		for(int i=0; i<9 ; i++){
			gugudan9[i] = 9 * (i+1);
		}
		
		
		
		// 2���� �迭�ȿ� ������ ��ü�� ����ְ�!
		
		int[][] gugudanAll = new int[8][9];
		
		for(int i=0 ; i<8 ; i++){
			for(int j=0 ; j<9 ; j++){
				gugudanAll[i][j] = (i+2) * (j+1);
			}
		}
		
		// ����� �������� �ϵ�, �������� ���ڰ� Ȧ���� �ָ� ���
		
		for(int i=0 ; i<8 ; i++){
			for(int j=0 ; j<9 ; j++){
				System.out.println(gugudanAll[i][j]);
			}
		}
		System.out.println("#################################");
		for(int i=7 ; i>=0 ; i--){
			for(int j=8 ; j>=0 ; j--){
				if(j % 2 == 0)
					System.out.println(gugudanAll[i][j]);
			}
		}
	}
}
