$( function() {
	
	//참/거짓을 나타낼 변수
	var tf = false;
	
	//#btn을 클릭하면 함수 실행
	$( '#btn' ).click( function() {
		
		//변수의 논리값을 반대로 담아줌
		tf = !tf;
	
		//변수의 값이 true일때 동작
		if( tf ) {
			//aside영역을 화면의 왼쪽 밖으로 이동하는 애니메이션
			$( 'aside' ).animate( { 'left' : '-25%' }, 1000, "easeOutExpo" );	
			//section의 넓이값이 100%로 증가하는 애니메이션
			$( 'section' ).animate( { 'width' : '100%' }, 1000, "easeOutExpo" );
			//#btn > img의 src속성 값을 바꿈
			$( '#btn > img') .attr( 'src' , '../images/mb2.png' );
		}else{
		//변수의 값이 false일때 동작
		
			//aside영역을 화면의 왼쪽 끝으로 이동하는 애니메이션
			$( 'aside' ).animate( { 'left' : '0' }, 1000, "easeOutExpo" );	
			//section의 넓이값이 75%로 줄어드는 애니메이션
			$( 'section' ).animate( { 'width' : '75%' }, 1000, "easeOutExpo" );
			//#btn > img의 src속성값을 바꿈
			$( '#btn > img') .attr( 'src' , '../images/mb1.png' );
		}
	});
	
});