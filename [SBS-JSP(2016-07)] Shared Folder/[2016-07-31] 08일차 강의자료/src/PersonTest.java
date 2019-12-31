public class PersonTest {
	public static void main(String[] args) {
		Person brother = new Person();
		brother.age = 100;
		brother.height = 170.0;
		brother.weight = 67.0;
		
		System.out.println("age : "    + brother.age	);
		System.out.println("height : " + brother.height	);
		System.out.println("weight : " + brother.weight	);
	}
}