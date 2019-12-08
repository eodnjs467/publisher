$( function() {
	
	// 360 나누기 메뉴의 갯수 = 메뉴 하나당 가질 각도값
	var deg_value = 360 / $( '#menu > ul > li' ).length;
	
	//#menu > ul > li를 순차적 반복실행
	$( '#menu > ul > li' ).each( function( i ) {
		
		var deg = deg_value * i;		//실제 각도값
		
		//반복중인 li의 회전각을 deg변수값으로 지정
		$(this).css( { 'transform' : 'rotate(' + deg + 'deg)'  } );
		
		//반복중인 li가 0.5초 간격으로 opacity가 1로늘어나는 애니메이션
		$(this).delay( 500 * i ).animate( { 'opacity' : '1' }, 1000 );
		
	});
	
});