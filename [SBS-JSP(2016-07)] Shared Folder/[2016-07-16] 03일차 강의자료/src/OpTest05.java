
public class OpTest05 {

	public static void main(String[] args) {
		
		int result;
		int x = -10;
		
		result = ( x > 0 )? x : -x;
		//       (10 > 0 )? x : -x
		//       (true   )? x : -x
		
		System.out.println(result);
		
		System.out.println( (x > 0)? "양수입니다" : "음수입니다"  );
		
	}

}
