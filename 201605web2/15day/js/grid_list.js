$( function() {
	
	//#grid_list > ul > li들을 순차적 반복 실행
	$( '#grid_list > ul > li' ).each( function() {
		
		/*-------------------------------------------------------------------------------------
		
			$( 선택자1 ).find( 선택자2 )	->		선택자1안에서 선택자2를 찾음
		
		--------------------------------------------------------------------------------------*/
		
		//반복중인 li의 div가 가지는 top, left값을 가각의 변수에 담아줌
		var pos_top = $(this).find( 'div' ).position().top;
		var pos_left = $(this).find( 'div' ).position().left;
		
		//반복중인 li에 마우스 커서가 들어오면 함수 실행
		$(this).mouseenter( function() {
			
			//마우스가 들어온 li의 div를 top, left모두 0으로 이동하는 애니메이션
			$(this).find('div').stop().animate( {
				'top' : '0' ,
				'left' : '0'	
			}, 1000, "easeOutExpo" );
			
		});
		
		//반복중인 li에서 마우스 커서가 빠져나가면 함수 실행
		$(this).mouseleave( function() {
			
			//마우스 커서가 빠져나간 li의 div를 top, left를 원래위치로 이동하는 애니메이션
			$(this).find('div').stop().animate({
				'top' : pos_top ,
				'left' : pos_left	
			}, 1000, "easeOutExpo");
				
		});
		
	});
	
});










