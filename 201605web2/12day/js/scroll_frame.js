$( function() {
	
	$( '#bar' ).draggable(
		{ containment : 'parent' } ,
		
		{ drag : function() {
			/*-------------------------------------------------------------------------------
	
		Math
		
		Math.ceil( 소수값 )			->		소숫점을 올림처리하여 정수로 표현
		
		Math.round( 소수값 )		->		소수점을 반올림 처리하여 정수로 표현
		
		Math.floor( 소수값 )			->		소수점을 내림 처리하여 정수로 표현
	
	
		console.log( Math.floor( 1.457 ) );
		
		스크롤바 가동범위		a ~ b		0 ~ 400
		움직일것 가동범위		c ~ d		1 ~ 91
		
		결과값 = ( 91 - 1 ) / ( 400 - 0 ) * ( 스크롤바위치 - 0 ) + 1;
	-----------------------------------------------------------------------------------*/
		
		var barX = $( '#bar' ).position().left;
		
		var img_num = Math.floor( ( 91 - 1 ) / ( 400 - 0 ) * ( barX - 0 ) + 1 );
	
		//console.log(  img_num  );
		$( '#pig > img' ).attr( 'src', '../images/' + img_num + '.jpg'  );	
		} }
	
	);
	
});







