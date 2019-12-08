//대기함수
$( function() {
	
	//nav영역안에 마우스 커서가 들어오면 함수 실행
	$( '.main_menu' ).mouseenter( function() {
		
		//모든 dl을 slideDown효과
		$( 'dl', this ).stop().slideDown( 'slow' );
		
	});
	
	
	//nav영역안에 마우스 커서가 빠져나가면 함수 실행
	$( '.main_menu' ).mouseleave( function() {
		
		//모든 dl을 slideUp효과
		$( 'dl', this ).stop().slideUp( 'slow' );
		
	});
	
});




