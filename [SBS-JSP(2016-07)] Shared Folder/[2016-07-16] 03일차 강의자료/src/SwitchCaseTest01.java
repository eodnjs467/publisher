public class SwitchCaseTest01 {
	public static void main(String[] args) {

		int score = 87;
		switch (score / 10) {
			case 10:
				System.out.println("A���� �Դϴ�!");
				break;
			case 9:
				System.out.println("A���� �Դϴ�!");
				break;
			case 8:
				System.out.println("B���� �Դϴ�!");
				break;
			case 7:
				System.out.println("C���� �Դϴ�!");
				break;
			case 6:
				System.out.println("D���� �Դϴ�!");
				break;			
			default :
				System.out.println("F���� �Դϴ�!");
				break;
		}
	}
}
