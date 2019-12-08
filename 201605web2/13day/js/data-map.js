$( function() {
	
	//store > ul > li 를 클릭하면 함수 실행
	$( '#store > ul > li' ).click( function() {
		
		//#store_bg를 보여줌( display:block )
		$( '#store_bg' ).show();	
		
		//#store_bg의 opacity값을 1로(불투명) 만드는 애니메이션
		$( '#store_bg' ).animate( { 'opacity' : '1' }, 1000, "easeOutExpo" );
		
		//#popup > h1에 클릭한 li의 텍스트값을 담아줌
		$( '#popup > h1' ).text( $(this).text() );
		
		//store_addr에 클릭한 li의 data-addr속성값을 텍스트값으로 담아줌
		$( '#store_addr' ).text( $(this).attr( 'data-addr' ) );
		
		//store_tel에 클릭한 li의 data-tel속성값을 텍스트값으로 담아줌
		$( '#store_tel' ).text( $(this).attr( 'data-tel' ) );
		
		var stamp = $(this).attr( 'data-stamp' );		//stamp값
		var key = $(this).attr( 'data-key' );					//key값
		
		//지도를 그릴 영역
		$( '#store_map' ).html( '<div id="daumRoughmapContainer' + stamp + '" class="root_daum_roughmap root_daum_roughmap_landing"></div>' );
		
		new daum.roughmap.Lander({
			"timestamp" : stamp,
			"key" : key,
			"mapWidth" : "684",
			"mapHeight" : "230"
		}).render();
		
	});
	
});








