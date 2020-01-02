
public class CardTest {

	public static void main(String[] args) {
		

		System.out.println("Card.width : " + Card.width);
		System.out.println("Card.height : " + Card.height);
		
		Card c1 = new Card();
		
		
		c1.kind = "HEART";
		c1.number = 7;
		
		Card c2 = new Card();
		c2.kind = "SPADE";
		c2.number = 3;
		
System.out.println(c1.kind+":"+c1.number+":"+c1.width+":"+c1.height);
System.out.println(c2.kind+":"+c2.number+":"+c2.width+":"+c2.height);
		
		c1.width = 30;
		c1.height = 300;

System.out.println(c1.kind+":"+c1.number+":"+c1.width+":"+c1.height);
System.out.println(c2.kind+":"+c2.number+":"+c2.width+":"+c2.height);
	}

}
