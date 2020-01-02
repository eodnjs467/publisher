
public class GuguTest {

	public static void main(String[] args) {

		Gugu myGugu = new Gugu();
		int[] guguArr;
		
		//guguArr = myGugu.evenGugu(2);
		//myGugu.printGugu(guguArr);
		
		// 2단부터 9단까지 돌려주세요.
		for(int i=2 ; i <= 9 ; i++){
			
			if( i % 2 == 0){ // 짝수일때
				// 단수가 짝수면 Gugu 클래스에 
				// evenGugu 메서드를 사용해서
				// 1~9까지 곱해진 배열을 받아온다.
				
				
				guguArr = myGugu.evenGugu(i);
				
				// Gugu클래스에 printGugu 메서드를 사용해서
				// 방금 전달받은 1~9까지 곱해진 결과가 저장되어있는
				// 배열을 출력
				System.out.println("["+i+"]단!! #############");
				myGugu.printGugu(guguArr);
				
			}else{ // 홀수일때
				// 단수가 홀수면 Gugu 클래스에 
				// oodGugu 메서드를 사용해서
				// 1~9까지 곱해진 배열을 받아온다.
				guguArr = myGugu.oddGugu(i);
				// Gugu클래스에 printGugu 메서드를 사용해서
				// 방금 전달받은 1~9까지 곱해진 결과가 저장되어있는
				// 배열을 출력
				System.out.println("["+i+"]단!! #############");
				myGugu.printGugu(guguArr);
			}
		}
		
		
		System.out.println("####################################");
		
		//9단 부터 2단까지 반복해서
		GuguChild myGuguChild = new GuguChild();
		int[] guguChildArr;
		
		//guguArr = myGugu.evenGugu(2);
		//myGugu.printGugu(guguArr);
		
		// 2단부터 9단까지 돌려주세요.
		for(int i=9 ; i >=2 ; i--){
			
			if( i % 2 == 0){ // 짝수일때
				// 단수가 짝수면 Gugu 클래스에 
				// evenGugu 메서드를 사용해서
				// 1~9까지 곱해진 배열을 받아온다.
				
				
				guguChildArr = myGuguChild.evenGugu(i);
				
				// Gugu클래스에 printGugu 메서드를 사용해서
				// 방금 전달받은 1~9까지 곱해진 결과가 저장되어있는
				// 배열을 출력
				System.out.println("["+i+"]단!! #############");
				myGuguChild.printGugu(guguChildArr);
				
			}else{ // 홀수일때
				// 단수가 홀수면 Gugu 클래스에 
				// oodGugu 메서드를 사용해서
				// 1~9까지 곱해진 배열을 받아온다.
				guguChildArr = myGugu.oddGugu(i);
				// Gugu클래스에 printGugu 메서드를 사용해서
				// 방금 전달받은 1~9까지 곱해진 결과가 저장되어있는
				// 배열을 출력
				System.out.println("["+i+"]단!! #############");
				myGuguChild.printGugu(guguChildArr);
			}
		}
	}

}
