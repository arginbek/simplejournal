/**
 * 
 */


$(document).ready(function(){

	var contextRoot = "/" + window.location.pathname.split('/')[1];
	
	removeEvent = function(eventId) {
		
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
	    
		$.ajax({
			url: contextRoot+'/events/remove/'+ eventId,
	 		type: 'PUT',
			dataType: "json",
			//beforeSend: function(xhr) {
	            // here it is
	          //  xhr.setRequestHeader(header, token);
	        //},
		 	 success: function (response) {
	 		 		location.reload(true);
				},
				error: function(){						
//					alert('Error while request..');
					location.reload(true);
					
//					console.log(postId);
		 	 } 
	   });
   }
	
});

