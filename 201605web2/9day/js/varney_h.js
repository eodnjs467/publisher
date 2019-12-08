$(function() {
	
	//첫번째 버튼의 텍스트를 txt1변수에 담아줌
	var txt1 = $( '.menu:nth-child(1) > a' );
	
	//첫번째 버튼의 div의 위치값은 텍스트위치값으로, 넓이는 텍스트의 길이만큼 지정
	$( '.menu:nth-child(1) > div' ).css( { 
		'left' : txt1.position().left + 'px' ,
		'width' : txt1.width() + 'px'	
	} );
	
	
	/*-------------------------------------------------------------------------------------------
	
		$( 선택자 ).position().top;			선택자의 부모로부터 위에서 떨어진 위치값;
		$( 선택자 ).position().left;			선택자의 부모로부터 왼쪽에서 떨어진 위치값;
		
		$( 선택자 ).offset().top;				선택자의 절대위치 top값
		$( 선택자 ).offset().left;				선택자의 절대위치 left값

		$( 선택자 ).width();					선택자의 넓이값
		$( 선택자 ).height();					선택자의 높이값
	
	--------------------------------------------------------------------------------------------*/
	
	$( '.menu' ).click(function() {
	
	/*-------------------------------------------------------------------------------------------	
		$( 선택자 ).index() 					->		선택자의 index번호 가져옴
		
		$( 선택자 ).eq( index번호 )		-> 	선택자에서 index번호와 일치하는 요소를 찾아줌
		
		$( 선택자 ).parent( 선택자2 )	->	선택자의 부모요소 선택자2
		$( 선택자 ).children( 선택자2 ) -> 	선택자의 자식요소 선택자2
		 
	-------------------------------------------------------------------------------------------*/	
		
		//.bnn_img들 중에서 클릭한 버튼의 index번호와 일치하는것의 left값을 pos에 담아줌
		var pos = $( '.bnn_img' ).eq( $(this).index() ).position().left;

		//#banner의 가로스크롤바 위치를 pos위치로 이동하는 애니메이션
		$( '#banner' ).stop().animate( { 'scrollLeft' : pos }, 1000, "easeOutExpo" );

		//클릭한 li의 자식 div는 left위치값을 클릭한 li의 a태그와 같은 left위치로 이동
		$( this ).children( 'div' ).css( { 'left' : $(this).children('a').position().left } );
		
		//클릭한 li의 자식 div는 클릭한 li의 a태그와 같은 넓이로 늘리는 애니메이션
		$( this ).children( 'div' ).stop()
		.animate( { 'width' : $(this).children('a').width() }, 1000, "easeOutExpo" );
 
 		//.bar들 중에서 클릭한 li의 div가 아닌것들을 모두 넓이를 0으로 만든 애니메이션
 		$( '.bar' ).not( $(this).children('div') ).stop()
		.animate( { 'width' : '0' }, 1000, "easeOutExpo" )
 
	});
		
});













