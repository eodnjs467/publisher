$( function() {
	
	//.img_box > img영역에 마우스 커서가 들어오면 함수 실행
	$( '.img_box > img' ).mouseenter( function() {
		
		//마우스커서가 들어온 이미지의 크기를 120%만큼 키우는 애니메이션
		$( this ).stop().transition( { 'scale' : '1.2' }, 1000 );
		
	});
	
	//.img_box > img영역에 마우스 커서가 빠져나가면 함수 실행
	$( '.img_box > img' ).mouseleave( function() {
		
		//마우스커서가 빠져나간 이미지의 크기를 100%로 되돌리는 애니메이션
		$( this ).stop().transition( { 'scale' : '1' }, 1000 );
		
	});
	
	//.more > a를 클릭하면 함수 실행
	$( '.more > a' ).click( function( e ) {
		
		e.preventDefault();			//a태그의 기본 이벤트를 막아줌
		
		//bg_area를 나타냄
		$( '#bg_area' ).show();
		
		//bg_area를 서서히 나타내는 애니메이션
		$( '#bg_area' ).animate( { 'opacity' : '1' }, 1000, "easeOutExpo" );
		
		//popup창을 원본비율로 서서히 키우는 애니메이션
		$( '#popup' ).transition( { 'scale' : '1' }, 1000, "easeOutExpo"  ); 
	
		//sub_list를 70%사이즈로 서서히 줄이는 애니메이션	
		$( '#sub_list' ).transition( { 'scale' : '0.7' }, 1000, "easeOutExpo" );
		
		//body의 외곽선을 50px로 만드는 애니메이션
		$( 'body' ).animate( { 'border-width' : '50px' }, 1000, "easeOutExpo" ); 
		
		//popup > p의 내용을 txt클래스 안의 내용으로 가져옴
		$( '#popup > p' ).text( $(this).parent().prev().text() );
		
	});
	
	//#popup > span안의 버튼을 클릭하면 함수 실행
	$( '#popup >span' ).click(function() {
		
		//bg_area가 서서히 사라지는 애니메이션 후 bg_area감춤(display:none)
		$( '#bg_area' ).animate( { 'opacity' : '0' }, 1000, "easeOutExpo",  
			function() { $('#bg_area').hide(); }
		);
		
		//popup을 서서히 작아지면서 사라지는 애니메이션
		$( '#popup' ).transition( { 'scale' : '0' }, 1000, "easeOutExpo" );
		
		//sub_list를 서서히 원본크기로 만드는 애니메이션
		$( '#sub_list' ).transition( { 'scale' : '1' }, 1000, "easeOutExpo" );
		
		//body의 외곽선을 0으로 만드는 애니메이션
		$( 'body' ).animate( { 'border-width' : '0' }, 1000, "easeOutExpo" );
		
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});