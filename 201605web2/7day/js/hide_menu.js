$( function() {
	
	var tf = false;			//보이는 상태(false)   보이지 않는 상태(true)
	
	
	//aside > div를 클릭하면 함수 실행
	$( 'aside > div' ).click( function() {
		
		tf = !tf;					//tf변수값을 반대로 다시 tf에 담아줌
		
		//console.log( tf );
		if( tf ) {
			
			//aside영역을 화면의 왼쪽 밖으로 이동하는 애니메이션
			$( 'aside' ).animate( { 'left' : '-25%' }, 1000, "easeOutExpo" );	
			
			//section영역을 화면의 100%크기로 채우는 애니메이션
			$( 'section' ).animate( { 'width' : '100%' }, 1000, "easeOutExpo" );
			
			/*-----------------------------------------------------------------------------------
				$( 선택자 ).attr( '속성이름' );			->		선택자의 속성값을 가져옴
			
				$( 선택자 ).attr( '속성이름' , '속성값' )	->	선택자의 속성값을 바꿔줌
			----------------------------------------------------------------------------------------*/
			
			$( 'aside > div > img' ).attr( 'src' , '../images/btn_next10.gif' );
			
			
		}else{
		
			$( 'aside' ).animate( { 'left' : '0' }, 1000, "easeOutExpo" );
			
			$( 'section' ).animate( { 'width' : '75%' }, 1000, "easeOutExpo" );
			
			$( 'aside > div > img' ).attr( 'src' , '../images/btn_pre10.gif' );
			
		}
		
		
	});
	
});









