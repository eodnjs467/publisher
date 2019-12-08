$( function() {
	
	//.btn을 클릭하면 함수 실행
	$( '.btn' ).click( function() {
		
		//클릭한 .btn의 다음요소( ol )를 sub_menu에 담아줌
		 var sub_menu = $( this ).next();	
		
		// $( 선택자 ).is( ':상태' )		->			is안의 상태값이 참/ 거짓 으로 나타냄
		
		//클릭한 .btn의 다음요소(ol)가 보이는 상태이면
		if( sub_menu.is( ':visible' ) ) {
			
			//클릭한 .btn의 다음요소(ol)에 slideUp
			sub_menu.stop().slideUp( 'slow' );
			//on클래스 제거
			$( this ).removeClass( 'on' );
			
		//클릭한 .btn의 다음요소(ol)이 보이지 않는 상태이면		
		}else {

			//클릭한 .btn의 다음요소(ol)에 slideDown
			sub_menu.stop().slideDown( 'slow' );
			//on클래스 추가
			$( this ).addClass( 'on' );
			
		}
		
		
		
		
		
		
		
	});
	
});




