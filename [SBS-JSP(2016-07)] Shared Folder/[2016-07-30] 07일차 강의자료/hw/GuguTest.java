
public class GuguTest {

	public static void main(String[] args) {

		Gugu myGugu = new Gugu();
		int[] guguArr;
		
		//guguArr = myGugu.evenGugu(2);
		//myGugu.printGugu(guguArr);
		
		// 2�ܺ��� 9�ܱ��� �����ּ���.
		for(int i=2 ; i <= 9 ; i++){
			
			if( i % 2 == 0){ // ¦���϶�
				// �ܼ��� ¦���� Gugu Ŭ������ 
				// evenGugu �޼��带 ����ؼ�
				// 1~9���� ������ �迭�� �޾ƿ´�.
				
				
				guguArr = myGugu.evenGugu(i);
				
				// GuguŬ������ printGugu �޼��带 ����ؼ�
				// ��� ���޹��� 1~9���� ������ ����� ����Ǿ��ִ�
				// �迭�� ���
				System.out.println("["+i+"]��!! #############");
				myGugu.printGugu(guguArr);
				
			}else{ // Ȧ���϶�
				// �ܼ��� Ȧ���� Gugu Ŭ������ 
				// oodGugu �޼��带 ����ؼ�
				// 1~9���� ������ �迭�� �޾ƿ´�.
				guguArr = myGugu.oddGugu(i);
				// GuguŬ������ printGugu �޼��带 ����ؼ�
				// ��� ���޹��� 1~9���� ������ ����� ����Ǿ��ִ�
				// �迭�� ���
				System.out.println("["+i+"]��!! #############");
				myGugu.printGugu(guguArr);
			}
		}
	}

}
