
public class ArrTestHW {

	public static void main(String[] args) {

		int[] gugudan2 = new int[9];
		
		// �� �κ� for�� ���� �ٲ㼭 �ѹ��� 9�� �ݺ��Ǽ� ���� �ְ�
		gugudan2[0] = 2*1;
		gugudan2[1] = 2*2;
		gugudan2[2] = 2*3;
		gugudan2[3] = 2*4;
		gugudan2[4] = 2*5;
		gugudan2[5] = 2*6;
		gugudan2[6] = 2*7;
		gugudan2[7] = 2*8;
		gugudan2[8] = 2*9;

		// �� �κе� for������ �ٲ㼭 �ѹ��� 9�� ����Ҽ� �ְ�
		System.out.println("gugudan2["+0+"] : " + gugudan2[0]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[1]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[2]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[3]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[4]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[5]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[6]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[7]);
		System.out.println("gugudan2["+0+"] : " + gugudan2[8]);
		
		// gugudan3, gugudan4 , . . . , gugudan9
		// �䷸�� �� �ܺ��� ������ ����ֱ� 1���� �迭��
		
		
		// 2���� �迭�ȿ� ������ ��ü�� ����ְ�!
		
		int[][] gugudanAll = new int[8][9];
		
		gugudanAll[0][0] = 2*1;
		gugudanAll[0][1] = 2*2;
		// . . .
		gugudanAll[0][8] = 2*9;
		
		gugudanAll[1][0] = 3*1;
		// . . .
		gugudanAll[1][8] = 3*9;
		// . . . 
		gugudanAll[7][0] = 9*1;
		// . . .
		gugudanAll[7][8] = 9*9;
		
		// ����� �������� �ϵ�, �������� ���ڰ� Ȧ���� �ָ� ���
		
		
		
	}

}
