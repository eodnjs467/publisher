$( function() {
	
	var view_img = 1;				//이미지 번호 변수
	var num	= 1;						//번호값 변수
	var pos = 0;						//위치값 변수
	
	//left_btn을 클릭하면 함수 실행
	$( '#left_btn' ).click( function() {
		
		if( $('.vis_img').is(':animated') ) { return; }
		
		//li들 중에서 num번 li가 아닌것들은 left값을 1400으로( 오른쪽 밖 )
		$( '.vis_img' ).not( 'li:nth-of-type(' + num + ')'  ).css( { 'left' : '1400px' } );
		
		//num값이 4이상일때 
		if( num >= 4 ) {
			num = 1	;			//num을 다시 1로 되돌림
			view_img = 4;	//이전에 보고있던 이미지번호 4
		}else{
			num++;							//num값을 하나씩 증가시킴
			view_img = num-1;		//이전에 보고있던 이미지번호는 1작은값
		}
		
		//console.log( view_img )
		
		pos = '-1400px';
	
		vis_ani( num, view_img, pos );
		
	});
	
	//right_btn을 클릭하면 함수 실행
	$( '#right_btn' ).click( function() {
		
		//.vis_img가 애니메이션 중일때 함수 동작 중지
		if( $( '.vis_img' ).is(':animated') ) { return; }
		
		//.vis_img중에서 num번에 해당하지않는것은 left값을 -1400px로 지정
		$( '.vis_img' ).not( 'li:nth-of-type(' + num + ')' ).css( { 'left' : '-1400px' } );
		
		//num값이 1 이하라면
		if( num <= 1 ) {
			num = 4;			//num을 4로 되돌려줌
			view_img = 1;	//view_img는 처음값인 1로 되돌려줌

		//num값이 1이하가 아닐경우라면
		}else{
			num--;							//num값을 1씩 감소
			view_img = num+1;		//view_img는 num값보다 1 큰값
		}
		
		//pos 변수에 1400px을 담아줌
		pos = '1400px';
		
		//vis_ani함수 호출
		vis_ani( num, view_img, pos );
	});
	
	
	
	function vis_ani( num, view_img, pos ) {
	
		//보고있던 이미지는 pos의 위치로 이동하는 애니메이션
		$( '.vis_img:nth-of-type(' + view_img + ')' )
		.animate( { 'left' : pos }, 1000, "easeOutExpo" );
		
		//다음 나올이미지를 left값을 0으로 이동하는 애니메이션
		$( '.vis_img:nth-of-type(' + num + ')' )
		.animate( { 'left' : '0' }, 1000, "easeOutExpo" );
		
	}
	
	
	
});









