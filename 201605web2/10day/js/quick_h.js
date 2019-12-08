$( function() {
	
	var pos = 0;			//위치값 변수
	
	//#left_btn을 클릭하면 함수 실행
	$( '#left_btn' ).click( function() {
		
		//pos의 값이 800이상이면 함수를 종료
		if( pos >= 800 ) { return; } 
		
		//4개씩 목록을 한번에 움직이므로 100 x 4 -> 400씩 증가
		pos += 400;		
		
		//console.log( pos )
		
		$( '#scroll' ).stop().animate( { 'scrollLeft' : pos }, 1000, "easeOutExpo" );
		
	});
	
	$( '#right_btn' ).click( function() {

		if( pos <= 0 ) { return; }
		
		pos -= 400;
		
		$( '#scroll' ).stop().animate( { 'scrollLeft' : pos }, 1000, "easeOutExpo" );
		
	});
	
});














