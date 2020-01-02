public class Car {
	String 	color	;
	String 	gearType;
	int 	door	;

	public Car() {
		this("WHITE", "AUTO", 4);
	  //Car("WHITE", "AUTO", 4);
	}

	public Car(String color) {
		this(color, "AUTO", 4);
	}

	public Car(String color, String gearType, int door) {
		this.color = color;
		this.gearType = gearType;
		this.door = door;
	}
}
