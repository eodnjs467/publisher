
public class PopQuiz {

	public static void main(String[] args) {
		int idx = 0;
		int sum = 0;
		
		for(idx=0 ; idx<10 ; idx++){
		// idx:0, 0<10 true, sum:0, idx++
		// idx:1, 1<10 true, sum:1, idx++
		// idx:2, 2<10 true, sum:1, idx++
		// idx:3, 3<10 true, sum:4, idx++
		// idx:4, 4<10 true, sum:4, idx++
		// idx:5, 5<10 true, sum:9, idx++
		// idx:6, 6<10 true, sum:9, idx++
		// idx:7, 7<10 true, sum:16, idx++
		// idx:8, 8<10 true, sum:16, idx++
		// idx:9, 9<10 true, sum:25, idx++
		// idx:10, 10<10 false 반복문 종료 
			if(idx % 2 == 0)
				continue;
			if(idx==6)
				break;
			sum += idx;
		}
		System.out.println(sum);
	}

}
