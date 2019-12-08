$( function() {
	
	//브라우저 창에 스크롤바가 움직이면 함수 실행
	$( window ).scroll( function() {
		
		//console.log( $( this ).scrollTop() );
				
		//브라우저 창의 세로 스크롤바 위치값이 35보다 크면( 아래로 내려갔으면 )
		if( $(this).scrollTop() > 35 ) {
			
			//header영역을 위로 35px만큼 올리는 애니메이션
			$( 'header' ).stop().animate( { 'top' : '-35px' }, 300 );
			
		//세로 스크롤바의 위치값이 35보다 작으면( 위로 올라오면 )
		}else{
		
			//header영역을 top을 0으로 이동하는 애니메이션
			$( 'header' ).stop().animate( { 'top' : '0' }, 300 );
			
		}
		
	});
	
	function move_gnd() {
		//#gorund의 top값을 100으로 이동하고 다시 130으로 이동한 후 move_gnd를 호출
		$( '#ground' ).animate( { 'top' : '100px' }, 1000 )
								.animate( { 'top' : '130px' }, 1000, null, move_gnd );
	}
	
	move_gnd();
	
	function cloud1() {
		//cloud1을 화면의 오른쪽 바깥으로 이동하는 애니메션
		$( '#cloud1' ).animate( { 'left' : '100%' }, 25000, null, 
		
			//애니메이션 후 함수 실행
			function() { 
				//cloud1을 화면의 왼쪽 밖으로 이동
				$( '#cloud1' ).css( { 'left' : '-1000px' } );

				//cloud1함수를 호출
				cloud1();
			}  
		);	
	}
	
	function cloud2() {
		$( '#cloud2' ).animate( { 'left' : '100%' }, 20000, null, 
			function() { 
				$( '#cloud2' ).css( { 'left' : '-1000px' } );
				cloud2();
			}  
		);	
	}
	
	function cloud3() {
		$( '#cloud3' ).animate( { 'left' : '100%' }, 13000, null, 
			function() { 
				$( '#cloud3' ).css( { 'left' : '-1020px' } );
				cloud3();
			}  
		);	
	}
	
	function cloud4() {
		$( '#cloud4' ).animate( { 'left' : '100%' }, 30000, null, 
			function() { 
				$( '#cloud4' ).css( { 'left' : '-506px' } );
				cloud4();
			}  
		);	
	}
	
	cloud1();
	cloud2();
	cloud3();
	cloud4();
	
	$( 'header > nav' ).mouseenter( function() {
		
		$( 'header > nav > ul > li > dl' ).stop().slideDown('slow');
		 
	});
	
	$( 'header' ).mouseleave( function() {
		
			$( 'header > nav > ul > li > dl' ).stop().slideUp('slow');
		
	});	
	
});