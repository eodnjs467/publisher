public class ContinueTest01 {
	public static void main(String[] args) {
		for(int i=1 ; i<=5 ; i++){
			if( i== 3 ){
				System.out.println("이번반복은 패스~");
				continue;
			}
			System.out.println("출력!! : " + i);
		}
	}
}
