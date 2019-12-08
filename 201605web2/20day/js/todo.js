$(function() {
	
	//page2, page3의 top 위치값을 각각의 변수에 담아줌
	var page2_top = $( '#page2' ).position().top;
	var page3_top = $( '#page3' ).position().top;
	
	//브라우저 창의 스크롤이 동작하면 함수 실행
	$( window ).scroll( function() {
		
		//세로 스크롤바의 위치값을 scr_val 변수에 담아줌
		var scr_val = $( this ).scrollTop();
		
		//page1의 백그라운드 위치를 스크롤바위치값과 동일하게 지정
		$( '#page1' ).css( { 'background-position-y' : scr_val } );

		//page2의 위치보다 스크롤이 내려가면
		if( scr_val > page2_top ) {
			
			//page2의 백그라운드 위치를 스크롤바위값과 동일하게 지정
			$( '#page2' ).css( { 'background-position-y' : scr_val - page2_top } );
		
		//page2의 위치보다 스크롤이 위면		
		}else{
			
			//page2의 백그라운드 위치를 page2의 가장 위로 맞춤
			$( '#page2' ).css( { 'background-position-y' : '0' } );
				
		}
		
		/*--------------------------------------------------------------------------
		
			스크롤바 가동범위		a ~ b
			움직일것 가동범위		c ~ d
			
			결과값 = ( d - c ) / ( b - a ) * ( 스크롤바 위치 - a ) + c;
		
		---------------------------------------------------------------------------*/
		
		function scroll_fn( a, b, c, d ) {

			return scr_act = ( d - c ) / ( b - a ) * ( $(window).scrollTop() - a ) + c;
			
		}
		
		// a~b: 0~page2_top				c~d: 1~0

		var page1_ani = scroll_fn( 0, page2_top, 1, 0 );
		
		//console.log( page1_ani )
		
		$( '#page1_txt' ).css( {
			'transform' : 'scale(' + page1_ani + ')' ,
			'opacity' : page1_ani
		} );
		
		
		// a~b: 0~page2_top			c~d: 0~1
		var page2_ani = scroll_fn( 0, page2_top, 0, 1 );
		
		// a~b: 0~page2_top			c~d: 0~1440
		var page2_rot = scroll_fn( 0, page2_top, 0, 1440 );
		
		$( '#page2_txt' ).css( {
			'transform' : 'scale(' + page2_ani + ') rotate(' + page2_rot + 'deg)' ,
			'opacity' : page2_ani	
		} );
		
		//a~b : page2_top ~ page3_top			c~d: 0~1
		var page3_ani = scroll_fn( page2_top, page3_top, 0, 1 );
		
		$( '#page3_txt' ).css( { 'opacity' : page3_ani } );
		
		//a~b:	0~page3_top			c~d: 0~-504
		var iphone_ani = scroll_fn( 0, page3_top, 0, -504 );
		
		$( '#mask > ul' ).css( { 'left' : iphone_ani } );
		
			
	});
	
	/*-------------------------------------------------------
		마우스 휠 한페이지씩 이동
		
		키보드 방향키 위, 아래 한페이지씩 이동
		
		버튼 클릭시 해당 페이지 이동
	---------------------------------------------------------*/
	
	$( window ).mousewheel( function( e, delta ) {
		
		if( $('html, body').is(':animated') ) { return; }
		
		var posY = $(this).height();
		
		if( delta < 0 ) {
			$( 'html, body' ).animate( { 'scrollTop' : '+=' + posY },1000, "easeOutExpo" );	
		}else{
			$( 'html, body' ).animate( { 'scrollTop' : '-=' + posY },1000, "easeOutExpo" );
		}
		
	});
	
	
	
	$( window ).keydown( function(e) {
		
		if( $('html, body').is(':animated') ) { return; }
		
		var posY = $(this).height();
		
		if( e.keyCode == 38 ) {
			$( 'html, body' ).animate( { 'scrollTop' : '-=' + posY },1000, "easeOutExpo" );
		}else if( e.keyCode == 40 ) {
			$( 'html, body' ).animate( { 'scrollTop' : '+=' + posY },1000, "easeOutExpo" );	
		}
		
	});
	
	$( '#btn > ul > li > a' ).click( function(e) {
		
		e.preventDefault();
		
		var posY = $(this.hash).position().top;
		
		$( 'html, body' ).animate( { 'scrollTop' : posY }, 1000, "easeOutExpo" );
		
	});
	
	
		
		
	
});











