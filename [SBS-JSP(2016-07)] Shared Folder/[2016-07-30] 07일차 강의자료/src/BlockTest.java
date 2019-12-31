public class BlockTest {
	
	static{
		System.out.println("클래스 초기화 블록 수행");
	}
	
	{
		System.out.println("인스턴스 초기화 블록 수행");
	}
	
	public BlockTest(){
		System.out.println("생성자 수행");
	}
	
	public static void main(String[] args) {
		System.out.println("시작!!");
		System.out.println("BlockTest bt = new BlockTest();");
		BlockTest bt = new BlockTest();
		System.out.println("BlockTest bt2 = new BlockTest();");
		BlockTest bt2 = new BlockTest();
	}

}
