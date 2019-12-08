$( function() {
	
	var pos = 0;			//위치값 변수
	
	//#left_btn을 클릭하면 함수 실행
	$( '#up_btn' ).click( function() {
		
		//pos의 값이 800이상이면 함수를 종료
		if( pos >= 1100 ) { return; } 
		
		//4개씩 목록을 한번에 움직이므로 100 x 4 -> 400씩 증가
		pos += 100;		
		
		//console.log( pos )
		
		$( '#scroll' ).stop().animate( { 'scrollTop' : pos }, 1000, "easeOutExpo" );
		
	});
	
	$( '#down_btn' ).click( function() {

		if( pos <= 0 ) { return; }
		
		pos -= 100;
		
		$( '#scroll' ).stop().animate( { 'scrollTop' : pos }, 1000, "easeOutExpo" );
		
	});
	
});














