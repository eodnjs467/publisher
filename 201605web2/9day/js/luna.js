$(function() {
	
	//참/거짓을 나타낼 변수
	var tf = false;
	
	//#menu_btn를 클릭하면 함수 실행
	$( '#menu_btn' ).click( function() {
		
		tf = !tf;			//tf의 값을 반대로 다시 tf에 담아줌
		
		//tf값이 true이면
		if( tf ) {
			
			//aisde영역의 left값을 0으로 이동하는 애니메이션( 화면 안 )
			$( 'aside' ).animate( { 'left' : '0' }, 800, "easeOutExpo" );
			
			//#t_stick, #b_stick을 가운데로 이동하는 애니메이션 후 45도 회전하는 애니메이션
			$( '#t_stick, #b_stick' ).animate( { 'top' : '24px' }, 400, "easeOutExpo" )
													.transition( { 'rotate' : '45deg' }, 400, "easeOutExpo" );
													
			//#m_stick을 0.4초 대기 후 -45deg도 회전하는 애니메이션									
			$( '#m_stick' ).delay(400).transition( { 'rotate' : '-45deg' }, 400, "easeOutExpo"  );
			
		}else{
		
			$( 'aside' ).animate( { 'left' : '-200px' }, 800, "easeOutExpo" );
			
			$( '.stick' ).transition( { 'rotate' : '0deg' }, 400, "easeOutExpo" );
			
			$( '#t_stick' ).animate( { 'top' : '15px' }, 400, "easeOutExpo" );
			$( '#b_stick' ).animate( { 'top' : '33px' }, 400, "easeOutExpo" );
			
		}
		
	});
	
	
});







