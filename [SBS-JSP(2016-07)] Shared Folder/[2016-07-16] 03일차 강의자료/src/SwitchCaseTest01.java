public class SwitchCaseTest01 {
	public static void main(String[] args) {

		int score = 87;
		switch (score / 10) {
			case 10:
				System.out.println("A학점 입니다!");
				break;
			case 9:
				System.out.println("A학점 입니다!");
				break;
			case 8:
				System.out.println("B학점 입니다!");
				break;
			case 7:
				System.out.println("C학점 입니다!");
				break;
			case 6:
				System.out.println("D학점 입니다!");
				break;			
			default :
				System.out.println("F학점 입니다!");
				break;
		}
	}
}
