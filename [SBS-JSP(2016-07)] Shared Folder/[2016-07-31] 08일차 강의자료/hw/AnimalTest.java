
public class AnimalTest {

	public static void main(String[] args) {

		System.out.println("###[Animal]##############");
		Animal myAnimal = new Animal();
		myAnimal.makeNoise();
		myAnimal.eat();
		myAnimal.sleep();
		myAnimal.roam();
		
		
		// feline
		System.out.println("###[Feline]##############");
		Feline myFeline = new Feline();
		myFeline.makeNoise();
		myFeline.eat();
		myFeline.sleep();
		myFeline.roam();
		
		
		// lion
		System.out.println("###[Lion]##############");
		Lion myLion = new Lion();
		myLion.makeNoise();
		myLion.eat();
		myLion.sleep();
		myLion.roam();
		
		// tiger
		// cat
		// hippo
		System.out.println("###[Hippo]##############");
		Hippo myHippo = new Hippo();
		myHippo.makeNoise();
		myHippo.eat();
		myHippo.sleep();
		myHippo.roam();
		// canine
		// wolf
		// dog
		
		
	}

}
