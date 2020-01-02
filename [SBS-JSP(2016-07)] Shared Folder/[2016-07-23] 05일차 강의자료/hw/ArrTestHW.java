
public class ArrTestHW {

	public static void main(String[] args) {

		int[] gugudan2 = new int[9];
		
		// 이 부분 for문 으로 바꿔서 한번에 9개 반복되서 들어갈수 있게
		for(int i=0; i<9 ; i++){
			gugudan2[i] = 2 * (i+1);
		}
		
		// 이 부분도 for문으로 바꿔서 한번에 9개 출력할수 있게
		for(int i=0 ; i<9 ; i++){
			System.out.println("gugudan2["+i+"] : " + gugudan2[i]);
		}
		
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");

		
		// gugudan3, gugudan4 , . . . , gugudan9
		// 요렇게 각 단별로 구구단 집어넣기 1차원 배열에
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
		
		
		
		// 2차원 배열안에 구구단 전체는 집어넣고!
		
		int[][] gugudanAll = new int[8][9];
		
		for(int i=0 ; i<8 ; i++){
			for(int j=0 ; j<9 ; j++){
				gugudanAll[i][j] = (i+2) * (j+1);
			}
		}
		
		// 출력은 역순으로 하되, 곱해지는 숫자가 홀수인 애만 출력
		
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
