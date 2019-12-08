$( function() {
	
	//.subj_img에서 마우스 커서가 움직이면 함수 실행
	$( '.subj_img' ).mousemove( function( e ) {
		
		$( '#help_box' ).css( {
			'display' : 'block' ,					//help_box를 보이고
			'top' : e.pageY + 20 ,			//마우스 커서 Y축위치 + 20
			'left' : e.pageX + 20				//마우스 커서 X축위치 + 20
		} );
		
		//마우스커서가 움직이고있는 이미지의 다음요소(div)의 속성값을 
		//h4에 텍스트값으로 지정
		$( '#help_box > h4' ).text( $(this).next().attr( 'data-subj' ) );
		
		//마우스커서가 움직이고있는 이미지의 다음요소(div)의 html내용을 
		//p태그의 html내용으로 지정
		$( '#help_box > p' ).html( $(this).next().html() );
		
		
	});
	
	//이미지영역에서 마우스커서가 빠져나가면 
	$( '.subj_img' ).mouseleave( function() {
	
		//help_box를 감춤
		$( '#help_box' ).hide();
		
	});
	
	
});







