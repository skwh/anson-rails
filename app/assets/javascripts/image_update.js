//imageupdate.js
var ready;
ready = function() {
	if ($('#new_image').length == 1) {
		$('#new_image').on('click',function(e) {
			$.ajax({
				type:"POST",
				url:"/images",
				data: {
					p_id:$(this).class();
				},
				success:function(msg) {
					if (msg == "create_success") {
						
					} else {
						
					}
				},
				error:function(msg) {
					
				}
			})
		});

		$('button[class*="delete_image"]').on('click',function(e) {

		});
	}
}
$(document).ready(ready);
$(document).on('page:load',ready);