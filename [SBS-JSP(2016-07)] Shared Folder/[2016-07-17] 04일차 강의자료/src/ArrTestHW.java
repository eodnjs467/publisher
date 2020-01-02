
public class ArrTestHW {

	public static void main(String[] args) {

		int[] gugudan2 = new int[9];
		
		// 이 부분 for문 으로 바꿔서 한번에 9개 반복되서 들어갈수 있게
		gugudan2[0] = 2*1;
		gugudan2[1] = 2*2;
		gugudan2[2] = 2*3;
		gugudan2[3] = 2*4;
		gugudan2[4] = 2*5;
		gugudan2[5] = 2*6;
		gugudan2[6] = 2*7;
		gugudan2[7] = 2*8;
		gugudan2[8] = 2*9;

		// 이 부분도 for문으로 바꿔서 한번에 9개 출력할수 있게
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
		// 요렇게 각 단별로 구구단 집어넣기 1차원 배열에
		
		
		// 2차원 배열안에 구구단 전체는 집어넣고!
		
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
		
		// 출력은 역순으로 하되, 곱해지는 숫자가 홀수인 애만 출력
		
		
		
	}

}
