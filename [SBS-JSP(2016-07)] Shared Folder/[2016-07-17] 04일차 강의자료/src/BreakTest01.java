
public class BreakTest01 {

	public static void main(String[] args) {
		
		for(int i=1 ; i<=5 ; i++){
			
			if( i == 3){
				System.out.println("�μŹ�������!!!");
				break;
			}
			System.out.println("���! : " + i);
		}
		
		System.out.println("��!");
	}
}
