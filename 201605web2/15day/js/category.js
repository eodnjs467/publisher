$( function() {
	
	//#btn_group > div > label 클릭하면 함수 실행
	$( '#btn_group > div > label' ).click( function() {
		
		//클릭한 label은 btn_push클래스를 추가
		$(this).addClass( 'btn_push' );
		
		//클릭한 label을 제외한 나머지 label에서 btn_push클래스 제거
		$( '#btn_group > div > label' ).not( this ).removeClass( 'btn_push' );
		
		//클릭한 label의 텍스트값을 class_name변수에 담아줌
		var class_name = $( this ).text();		
		
		//모든 li를 감춤
		$( '#list_group > ul > li' ).hide();
		
		//클릭한 label의 텍스트값과 동일한 클래스를 보여줌
		$( '.' + class_name ).show();
		
		list_ani();
		
	});
	
	function list_ani() {
			//#list_group > ul > li > span순차적 반복실행
			$( '#list_group > ul > li > span' ).each( function( i ) {
				
				//현재 반복중인 span에 top, left위치를 부모의 top, left위치로 이동하는 애니메이션
				$(this).stop().animate( {
					'top' : $(this).parent().position().top ,
					'left' : $(this).parent().position().left	
				}, 1000, "easeOutExpo" );
				
			});
	}
	
	//브라우저 창의 크기가 변하면 함수 실행
	$( window ).resize( function() {
		list_ani();
	});	
	
});
