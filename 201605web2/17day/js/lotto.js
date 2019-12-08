$( function() {
	
	var lotto = new Array();
	
	//1~45까지 반복
	for( var i=1; i<46; i++ ) {
		
		//lotto배열안에 1~45까지 값을 밀어 넣음
		lotto.push( i )	;		
		
	}
	
	$( '.rnd_num' ).each( function( n ) {
		
		//배열방의 갯수만큼 곱한값을 랜덤하게 가져옴( 배열방 번호 )
		var pos = Math.floor( Math.random() * lotto.length );
		
		//lotto배열의 pos번 방의 값을 num에 담아줌( 실제 값 )
		var num = lotto[ pos ];
		
		//반복중인 li의 텍스트값을 num을 사용
		$(this).text( num );
		
		/*------------------------------------------------------------------------------------------
			배열이름.splice( 인덱스번호, 갯수, 값1, 값2 .... ) -> 인덱스번호부터 갯수만큼 제거
		------------------------------------------------------------------------------------------*/
		
		lotto.splice( pos, 1 );
		
		var R = Math.floor( Math.random() * 256 );
		var G = Math.floor( Math.random() * 256 );
		var B = Math.floor( Math.random() * 256 );
		
		$(this).css( { 'background-color' : 'rgb(' + R + ',' + G + ',' + B + ')' } );

		
	});
	
});














