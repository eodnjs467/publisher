
public class OpMethodTest {

	public static void main(String[] args) {

		OpMethod myOPM = new OpMethod();
		
		System.out.println( myOPM.add(10, 3) );
		//                  return result;
		//                  return 13;
		//                (       13         );
		
		//int add(int a=10, int b=3){
		//	int result;
		//	result = 10 + 3;
		//	return result;
		//}
		System.out.println("¥ı«œ±‚ :" + myOPM.minus(10, 3));
		System.out.println( myOPM.add(10, 3) + myOPM.minus(10, 3));
		System.out.println( myOPM.minus(10, 3) );
		System.out.println( myOPM.gobHaGi(10, 3) );
		System.out.println( myOPM.naNueGi(10, 3) );
		System.out.println( myOPM.naMuJi(10, 3) );
		
		int num = myOPM.add(10,3);
		System.out.println(num);
	}

}
