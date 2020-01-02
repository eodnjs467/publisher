
public class ParentChildTest {

	public static void main(String[] args) {
		
		Parent myParent = new Parent();
		myParent.age = 40;
		System.out.println("myParent.age : " + myParent.age);
		
		Child myChild = new Child();
		myChild.age = 20;
		myChild.yongDon = 200000;
		System.out.println("myChild.age : " + myChild.age);
		System.out.println(myChild.yongDon);
		
		GrandChild myGrandChild = new GrandChild();
		myGrandChild.age = 0;
		myGrandChild.yongDon = 100;
		myGrandChild.yongDonIJa = 1;
		myGrandChild.play();
		
	}
}
