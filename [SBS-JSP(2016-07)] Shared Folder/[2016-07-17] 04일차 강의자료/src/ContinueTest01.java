public class ContinueTest01 {
	public static void main(String[] args) {
		for(int i=1 ; i<=5 ; i++){
			if( i== 3 ){
				System.out.println("�̹��ݺ��� �н�~");
				continue;
			}
			System.out.println("���!! : " + i);
		}
	}
}
