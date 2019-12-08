$( function() {
	
	//2초마다 slide_timer함수 호출
	var timer = setInterval( slide_timer, 2000 );
	
	//배열생성
	var sale_arr = new Array();
	
	for( var i=0; i<10; i++ ) {
		/*------------------------------------------------------------------
			배열이름.push( 값 )		->		값을 배열에 밀어넣음
		--------------------------------------------------------------------*/	
		//sale_arr배열에 li를 순차적으로 밀어 넣음
		sale_arr.push( $( '#sale > ul > li' ).eq( i ) );
		
		//160px씩 옆으로 배치
		sale_arr[ i ].css( { 'left' : 160 * i + 'px' } );
		
	}
	
	function slide_timer() {
		/*---------------------------------------------------------------------------------
			 배열이름.shift()		->		배열안의 값을 밀어냄( 가장 첫번째 값이 제거 )
		----------------------------------------------------------------------------------*/	
		
		//sale_arr의 첫번째 값을 first_list에 담아줌
		var first_list = sale_arr.shift();
		
		//밀어낸 첫번째 값을 sale_arr배열에 다시 밀어 넣음
		sale_arr.push( first_list );
		
		//li들을 순차적 반복 실행
		$( '#sale > ul > li' ).each( function( i ) {
			
			//왼쪽으로 160px씩 이동하는 애니메이션 후 재정렬
			$( this ).animate( { 'left' : '-=160px' }, 1500, "easeOutExpo", 
				function() {
					for( i=0; i<10; i++ )	{
						sale_arr[ i ].css( { 'left' : 160 * i +'px' } );
					}
				}
			);	
		});
	}
	
	//sale영역 안에 마우스 커서가 들어오면 함수 실행
	$( '#sale' ).mouseenter( function() {
		//setInterval을 정지
		clearInterval( timer );
	});
	
	//sale영역 안에서 마우스 커서가 빠져나가면 함수 실행
	$( '#sale' ).mouseleave( function() {
		//slide_timer함수를 2초간으로 호출
		timer = setInterval( slide_timer, 2000 );
	});
	
	
});










