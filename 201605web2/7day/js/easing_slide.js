$( function() {
	
	//slide_img 클래스를 클릭하면 함수 실행
	$( '.slide_img' ).click( function() {
		
		//slide_img가 애니메이션 중이면 함수종료
		if( $('.slide_img').is( ':animated' ) ) { return; }
		
		$( this ).animate( { 'width' : '731px' }, 1000, "easeOutExpo"  );
		
		$( '.slide_img' ).not( this ).animate( { 'width' : '50px' }, 1000, "easeOutExpo" );
		
	});
	
});