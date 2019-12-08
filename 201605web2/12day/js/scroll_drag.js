$(function() {
	
	$( '#area' ).draggable(
	
		{ containment :  'parent' } ,
		
		{ drag : function() {
			
			/*-----------------------------------------------------------------------------------
			
				스크롤바 가동범위 		a ~ b		x: 0 ~ 252			y: 0 ~ 378
				움직일것 가동범위		c ~ d		x: 0 ~ -840			y: 0 ~ -1260
				
				결과물 = ( d - c ) / ( b - a ) * ( 스크롤바 위치 - a ) + c;
			
			-------------------------------------------------------------------------------------*/
				
				var barX = $( '#area' ).position().left;		//스크롤바의 x축 위치
				var barY = $( '#area' ).position().top;		//스크롤바의 y축 위치

				var posX = ( -840 - 0 ) / ( 252 - 0 ) * ( barX - 0 ) + 0;
				var posY = ( -1260 - 0 ) / ( 378 - 0 ) * ( barY - 0 ) + 0;
				
				$( '#zoom' ).css( { 'background-position' : posX + 'px ' + posY + 'px' } );
				
		} }
	
	);
	
});




