$( function() {
	
	$( '.main_menu' ).mouseenter( function() {
		
		$( 'ol', this ).stop().slideDown('slow');
		 
	});
	
	$( '.main_menu' ).mouseleave( function() {
		
		$( 'ol', this ).stop().slideUp('slow');
		 
	});
	
});