
public class StringTest02 {

	public static void main(String[] args) {
		
		String str = "Hello, Java!";
		
		System.out.println("str.length() : " + str.length() );

		if( str.length() >= 8 && str.length() <= 12 ){
			System.out.println("회원가입되셨습니다!");
		}else{
			System.out.println("ID는 8~12자리로 작성해주셔야합니다");
		}
		
		System.out.println("str.substring(7) : " + str.substring(7));
		
		String hp = "010-1234-5678";
		System.out.println("010-XXXX-" + hp.substring(9));
		
System.out.println("str.substring(3, 9) : " + str.substring(3, 9));
		

		if(str == "Hello, Java!"){
			System.out.println("오 같구먼!!!!");
		}
		
		String str10 = new String("ha");
		String str11 = new String("ha");
		
		if(str10 == str11){
			System.out.println("오 이것도 같네?!");
		}
		
		// 꼭 기억해야된다!!
		// String 변수에 저장된 문자열이 이거니? 물어볼떄는
		// == 기호를 절대 쓰면 안된다.
		// equals 라는 메서드를 써야된다.
		
		String id = "admin";
		
		if(id.equals("admin")){
			System.out.println("관리자 권한으로 접속하셨습니다!!!");
		}else{
			System.out.println("손님으로 접속하셨습니다!");
		}
		
		if("admin".equals(id)){
			System.out.println("관리자 권한으로 접속하셨습니다!!!");
		}else{
			System.out.println("손님으로 접속하셨습니다!");
		}
		
		
		String str12 = "         hahahahaha     ";
		
		System.out.println( str12.trim() );
		
		if( str.trim().substring(1).length()	>= 8 
		&& str.trim().length() <=12 ){
			
		}
		
		
	}

}
