
public class IfHW {

	public static void main(String[] args) {
		int num1 = 10;
		int num2 = 10;
		
		// ��ø if��
		if( (num1 >= num2) && (num1 > num2) ){
			System.out.println("num1�� num2 �ʰ��Դϴ�");
		}else if( (num1 >= num2) && !(num1 > num2) ){
			System.out.println("num1�� num2�� �����ϴ�");
		}else{
			System.out.println("num1�� num2 �̸��Դϴ�");
		}
		System.out.println("��");
		
		
	}
}