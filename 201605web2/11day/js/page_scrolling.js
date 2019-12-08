$( function() {
	
	//브라우저 창의 스크롤이 동작하면 함수 실행
	$( window ).scroll( function() {
		
		//브라우저 창의 세로 스크롤바 위치값을 pos에 담아줌
		var pos = $( this ).scrollTop();
		
		//#btn의 top값을 스크롤바위치 + 여백 으로 이동하는 애니메이션
		$( '#btn' ).stop().animate( { 'top' : pos + 50}, 800, "easeOutExpo" );
		
	});

	//.scroll을 클릭하면 함수 실행
	$( '.scroll' ).click( function( e ) {

		//이벤트 동작( a태그의 앵커 )을 막아줌
		e.preventDefault();
		
		//클릭한 a태그의 hash( #~~~ ) 절대위치값 top을 posY에 담아줌
		var posY = $( this.hash ).offset().top;
		
		//페이지 전체의 세로 스크롤바를 posY의 값으로 이동하는 애니메이션
		$( 'html, body' ).stop().animate( { 'scrollTop' : posY }, 1000, "easeOutExpo" );
	});	
	
});










