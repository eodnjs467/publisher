public class ParameterTest2 {
	public static void main(String[] args) {
		Data d = new Data(); // 0x100
		d.x = 10;
		System.out.println("main() : x = " + d.x);
		
		change(d);
		System.out.println("After change(d)");
		System.out.println("main() : x = " + d.x);
	}
	public static void change(Data d){ //������ �Ű�����
		//                    Data d = ���� ���� d;
		//                    Data d = 0x100;
		d.x = 1000;
		System.out.println("change() : x = " + d.x);
	}
}
