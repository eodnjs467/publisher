
public class DataTypeTest01 {

	public static void main(String[] args) {
		
		byte myByte = 10;
		int myInt;
		myInt = myByte;
		
		myByte = (byte)myInt;
		
		int myInt2;
		myInt2 = 2147483647;
		myInt2 = myInt2 + 1;
		
		System.out.println(myInt2);
		
		
	}

}
