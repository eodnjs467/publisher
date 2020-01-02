
public class ForTest02 {

	public static void main(String[] args) {

		for(int i=1 ; i<=9 ; i++){
			System.out.println("2 X " + i + " = " + 2*i);
		}
		System.out.println("###############################");
		for(int i=1 ; i<=3 ; i++){
			// i=1, 1<=3 true i++
			// i=2, 2<=3 true i++
			// i=3, 3<=3 true i++
			// i=4, 4<=4 false
			for(int j=1 ; j<=4 ; j++){
				// i=1, j=1, j<=4 true 출력, j++
				// i=1, j=2, j<=4 true 출력, j++
				// i=1, j=3, j<=4 true 출력, j++
				// i=1, j=4, j<=4 true 출력, j++
				// i=1, j=5, j<=4 false i++
				
				// i=2, j=1, j<=4 true 출력, j++
				// i=2, j=2, j<=4 true 출력, j++
				// i=2, j=3, j<=4 true 출력, j++
				// i=2, j=4, j<=4 true 출력, j++
				// i=2, j=5, j<=4 false i++		
				
				// i=3, j=1, j<=4 true 출력, j++
				// i=3, j=2, j<=4 true 출력, j++
				// i=3, j=3, j<=4 true 출력, j++
				// i=3, j=4, j<=4 true 출력, j++
				// i=3, j=5, j<=4 false i++	
				System.out.println("i : " + i + ", j : " + j);
			}
		}
		
		System.out.println("끝");
	}
}
