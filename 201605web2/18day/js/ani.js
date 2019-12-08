$( function() {
	
	var page_num = 1;		//현재 페이지 번호를 나타낼 변수
	
	function ani( page_num ) {
		
		//역재생
		$( '.ani > h1' ).not( $('#cont' + page_num + ' > h1' ) )
		.stop().animate( { 'left' : '100%' }, 1000, "easeOutQuad" );
		
		$( '.ani > p' ).not( $('#cont' + page_num + ' > p' ) )
		.stop().animate( { 'left' : '100%' }, 1000, "easeOutQuad" );
		
		$( '.ani > .icon' ).not( $('#cont' + page_num + ' > .icon' ) )
		.stop().animate( { 'right' : '100%' }, 1000, "easeOutQuad" );
		
		//재생
		$( '#cont' + page_num + ' > h1' )
		.stop().animate( { 'left' : '10%' }, 1000, "easeOutQuad" );
		
		$( '#cont' + page_num + ' > p' )
		.stop().animate( { 'left' : '10%' }, 1000, "easeOutQuad" );
		
		$( '#cont' + page_num + ' > .icon' )
		.stop().animate( { 'right' : '10%' }, 1000, "easeOutQuad" );
		
	}
	
	ani( page_num );
	
	
	//브라우저 창에 마우스 휠이 움직이면 함수 실행
	$( window ).mousewheel( function( e, delta ) {
		
		//페이지 전체가 애니메이션 중이면 함수 강제 종료
		if( $('html, body').is(':animated') ) { return; }
		
		//페이지의 높이값을 page_h변수에 담아줌
		var page_h = $( '.ani' ).height();
		
		//마우스 휠을 아래로 굴리면
		if( delta < 0 ) {
			
			$( 'html, body' ).animate( { 'scrollTop' : '+=' + page_h }, 1000, "easeOutExpo" );
			
		}else{
		
			$( 'html, body' ).animate( { 'scrollTop' : '-=' + page_h }, 1000, "easeOutExpo" );
			
		}
		
	});
	
	//마우스 휠에의한 스크롤의 이동을 막아줌
	$( window ).on( 'mousewheel.disableScroll', function(e) {
		e.preventDefault();
		return;
	});	
	
	//브라우저 창의 스크롤바가 움직이면 함수 실행
	$( window ).scroll( function() {
		
		//세로 스크롤바의 위치값
		var scr_top = $( this ).scrollTop();
		
		if( scr_top >= 0 ) { page_num = 1; }
		if( scr_top >= $('#cont2').position().top ) { page_num = 2; }
		if( scr_top >= $('#cont3').position().top ) { page_num = 3; }
		if( scr_top >= $('#cont4').position().top ) { page_num = 4; }
		
		ani( page_num );		
		
	});
	
	
});









