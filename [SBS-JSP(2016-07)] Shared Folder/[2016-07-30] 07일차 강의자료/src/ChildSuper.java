
public class ChildSuper extends ParentSuper{
	int x = 20;
	
	public void method(){
		System.out.println("x : " + x);
		System.out.println("this.x : " + this.x);
		System.out.println("super.x : " + super.x);
	}
}
