
public class ArrTest02 {

	public static void main(String[] args) {
		int[] intArr = new int[5];
		intArr[0] = 0;
		intArr[1] = 10;
		intArr[2] = 20;
		intArr[3] = 30;
		intArr[4] = 40;

		for(int i=0 ; i < intArr.length ; i++){
			System.out.println("intArr[" + i + "] : " + intArr[i]);
		}
		System.out.println("#######################");
		for(int i = intArr.length - 1 ; i >= 0 ; i--){
			System.out.println("intArr[" + i + "] : " + intArr[i]);
		}
	}
}
