
public class StringTest02 {

	public static void main(String[] args) {
		
		String str = "Hello, Java!";
		
		System.out.println("str.length() : " + str.length() );

		if( str.length() >= 8 && str.length() <= 12 ){
			System.out.println("ȸ�����ԵǼ̽��ϴ�!");
		}else{
			System.out.println("ID�� 8~12�ڸ��� �ۼ����ּž��մϴ�");
		}
		
		System.out.println("str.substring(7) : " + str.substring(7));
		
		String hp = "010-1234-5678";
		System.out.println("010-XXXX-" + hp.substring(9));
		
System.out.println("str.substring(3, 9) : " + str.substring(3, 9));
		

		if(str == "Hello, Java!"){
			System.out.println("�� ������!!!!");
		}
		
		String str10 = new String("ha");
		String str11 = new String("ha");
		
		if(str10 == str11){
			System.out.println("�� �̰͵� ����?!");
		}
		
		// �� ����ؾߵȴ�!!
		// String ������ ����� ���ڿ��� �̰Ŵ�? �������
		// == ��ȣ�� ���� ���� �ȵȴ�.
		// equals ��� �޼��带 ��ߵȴ�.
		
		String id = "admin";
		
		if(id.equals("admin")){
			System.out.println("������ �������� �����ϼ̽��ϴ�!!!");
		}else{
			System.out.println("�մ����� �����ϼ̽��ϴ�!");
		}
		
		if("admin".equals(id)){
			System.out.println("������ �������� �����ϼ̽��ϴ�!!!");
		}else{
			System.out.println("�մ����� �����ϼ̽��ϴ�!");
		}
		
		
		String str12 = "         hahahahaha     ";
		
		System.out.println( str12.trim() );
		
		if( str.trim().substring(1).length()	>= 8 
		&& str.trim().length() <=12 ){
			
		}
		
		
	}

}
