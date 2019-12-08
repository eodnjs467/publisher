$( function() {
	
	//인덱스 번호 변수
	var num = 0;
	
	//5초 간격으로 vis_ani함수 호출
	var timer = setInterval( vis_ani, 5000 );
	
	function vis_ani() {
	
		num++;				//num값을 1씩 증가
		
		if( num > 2 ) {	//num값이 2보다 크면
			num = 0;		//num값을 0으로 초기화 ( 0 1 2 0 1 2 .... )
		}
		
		//console.log(num);
		
		fade_ani( num );
		
	}
	
	function fade_ani( num ) {
		
		//.vis_img클래스 중에서 인덱스번호가 num과 일치하지 않는것이 사라지는 애니메이션
		$( '.vis_img' ).not( $( '.vis_img' ).eq( num )  )
		.stop().animate( { 'opacity' : '0' }, 3000, "easeOutExpo" );
			
		//.vis_img클래스 중에서 인덱스 번호가 num과 일치하는 것은 나타나는 애니메이션	
		$( '.vis_img' ).eq( num )	
		.stop().animate( { 'opacity' : '1' }, 3000, "easeOutExpo" );
		
		//btn클래스 중에서 인덱스 번호가 num과 일치하지않는것은 on클래스 제거
		$( '.btn' ).not( $( '.btn' ).eq( num ) ).removeClass( 'on' );
		
		//btn클래스 중에서 인덱스 번호가 num과 일치하는것은 on클래스 추가
		$( '.btn' ).eq( num ).addClass( 'on' );
			
	}
	
	//btn클래스를 클릭하면 함수 실행
	$( '.btn' ).click( function() {
		
		//클릭한 버튼의 인덱스번호를 index_num변수에 담아줌
		var index_num = $(this).index();
		
		//클릭한 btn의 인덱스 번호를 num에 담아줌
		num = index_num;
		
		//매개변수를 클릭한 btn의 인덱스번호로 fade_ani호출
		fade_ani( index_num );
		
		//기존에 돌던 setInterval을 정지
		clearInterval( timer );
		
		//setInterval재호출
		timer = setInterval( vis_ani, 5000 );
		
		
	});
	
	
});


















