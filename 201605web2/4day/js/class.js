$( function() {
	/*
	$( '#list1 > dd:nth-of-type(1)' ).click( function() {
		
		$( '#main' ).addClass('effect1');
		
	});
	
	$( '#list1 > dd:nth-of-type(2)' ).click( function() {
		
		$( '#main' ).addClass('effect2');
		
	});
	
	$( '#list1 > dd:nth-of-type(3)' ).click( function() {
		
		$( '#main' ).addClass('effect3');
		
	});*/
	
	
	//#list1>dd를 클릭했을때 함수 실행
	$( '#list1 > dd' ).click( function() {
		
		//$(선택자).index()			->		선택자의 인덱스 번호를 가져옴
		
		//클릭한 dd의 index번호를 num변수에 담아줌
		var num = $( this ).index();
		
		//console.log( num );
		
		//$( '선택자' ).addClass( '클래스명' );			-		클래스가 선택자에 추가
		$( '#main' ).addClass( 'effect' + num );
		
	});
	
	$( '#list2 > dd' ).click( function() {
		
		var num = $( this ).index();
		
		$( '#main' ).removeClass( 'effect' + num );
		
	});
	
	$( '#list3 > dd' ).click( function() {
		
		var num = $( this ).index();
		
		$( '#main' ).toggleClass( 'effect' + num );
		
	});
	
	
	$( '#list4 > dd' ).click( function() {
	
		/*-----------------------------------------------------------------------
			$( 선택자 ).text()							-		선택자의 텍스트 값을 가져옴
			
			$( 선택자 ).text( '텍스트값' )		-		선택자에 텍스트를 작성
		------------------------------------------------------------------------*/
		
		//클릭한 dd의 텍스트값을 txt변수에 담아줌
		var txt = $( this ).text();
		
		alert( $( '#main' ).hasClass( txt ) );
		
	});
	
	
	
	
	
	
});












