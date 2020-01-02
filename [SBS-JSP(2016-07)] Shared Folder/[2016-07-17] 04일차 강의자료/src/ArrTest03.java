public class ArrTest03 {
	public static void main(String[] args) {
		int[][] intArr = new int[3][4];

		intArr[0][0] = 0;
		intArr[0][1] = 10;
		intArr[0][2] = 20;
		intArr[0][3] = 30;
		intArr[1][0] = 40;
		intArr[1][1] = 50;
		intArr[1][2] = 60;
		intArr[1][3] = 70;
		intArr[2][0] = 80;
		intArr[2][1] = 90;
		intArr[2][2] = 100;
		intArr[2][3] = 110;

		for (int i = 0; i < 3; i++) {
			for (int j = 0; j < 4; j++) {
				System.out.println(
					"intArr[" + i + "][" + j + "] :"+ intArr[i][j]);
			}
		}
		System.out.println("###################");
		for (int i = 2; i >= 0 ; i--) {
			for (int j = 3 ; j >= 0; j--) {
				System.out.println(
					"intArr[" + i + "][" + j + "] :"+ intArr[i][j]);
			}
		}
		System.out.println("###################");
		for (int i = 0; i < intArr.length ; i++) {
			
			for (int j = 0; j < intArr[i].length ; j++) {
				
				System.out.println(
					"intArr[" + i + "][" + j + "] :"+ intArr[i][j]);
			}
		}
		
	}
}
