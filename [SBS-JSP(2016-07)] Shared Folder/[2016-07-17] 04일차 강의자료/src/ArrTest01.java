
public class ArrTest01 {

	public static void main(String[] args) {
		int[] intArr = new int[5];
		intArr[0] = 0;
		intArr[1] = 10;
		intArr[2] = 20;
		intArr[3] = 30;
		intArr[4] = 40;

		/*
		System.out.println(intArr[0]);
		System.out.println(intArr[1]);
		System.out.println(intArr[2]);
		System.out.println(intArr[3]);
		System.out.println(intArr[4]);
		*/
		
		for(int i=0 ; i < 5 ; i++){
			System.out.println("intArr[" + i + "] : " + intArr[i]);
		}
		System.out.println("######################");
		for(int i=4 ; i >= 0 ; i--){
			System.out.println("intArr[" + i + "] : " + intArr[i]);
		}
	}

}
