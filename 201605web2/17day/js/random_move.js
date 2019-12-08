$( function() {
	
	//2초간격으로 random_move함수 호출
	var timer = setInterval( random_move, 2000 );
	
	function random_move() {
	
		var posX = Math.random() * 643;
		var posY = Math.random() * 275;
		
		$( '#light' ).animate( { 
			'top' : posY ,
			'left' : posX
		}, 2000, "easeInOutQuad" );
		
	}
	
});



