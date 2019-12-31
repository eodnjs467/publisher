public class CarTest {
	public static void main(String[] args) {
		Car c1 = new Car();
		Car c2 = new Car("BLUE");
		Car c3 = new Car("RED", "STICK", 2);
		System.out.println(c1.color+":"+c1.gearType+":"+c1.door);
		System.out.println(c2.color+":"+c2.gearType+":"+c2.door);
		System.out.println(c3.color+":"+c3.gearType+":"+c3.door);
	}
}
