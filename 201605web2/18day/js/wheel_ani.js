$( function() {
	
	$( '#main_vis' ).mousewheel( function(e, delta) {
		
		if( $('#back').is(':animated') ) { return; }
		
		var pos_left = $( '#back' ).position().left;
		
		if( delta > 0 && pos_left > -2400 ) {
			
			move_left = '-=1200px';
			vis_ani( move_left );	
			
		}else if( delta < 0 && pos_left < 0 ) {
			
			move_left = '+=1200px';
			vis_ani( move_left );	
			
		}
		
		function vis_ani( move_left ) {
			$( '#back' ).animate( { 'left' : move_left }, 1500, "easeOutExpo" );
			$( '#front' ).delay( 150 )
			.animate( { 'left' : move_left }, 1500, "easeOutExpo" );
		}	
		
	});
	
	$( window ).on( 'mousewheel.disableScroll', function(e) {
		e.preventDefault();
		return;	
	});	
	
});










