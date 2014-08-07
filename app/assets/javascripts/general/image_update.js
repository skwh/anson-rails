//imageupdate.js
var ready;
ready = function() {
	if ($('#new_image').length == 1) {
		$('#new_image').on('click',function(e) {
			$.ajax({
				type:"POST",
				url:"/images",
				data: {
					p_id:$("#new_image").attr('class')
				},
				success:function(msg) {
					if (msg == "create_success") {
						if (confirm("Before you can edit the new image, the page needs to reload. Reload now?")) {
							location.reload();
						} else {
							$('#image_list').append("<li>A new image listing will appear here after a reload.</li>")	
						}
					} else {
						alert("sorry, there was an error. " + msg);
					}
				},
				error:function(msg) {
					alert("sorry, there was an error. " + msg);
				}
			})
		});

		$('input[class*="delete_image"]').on('click',function(e) {
			var image_id = $(this).attr('class').replace( /^\D+/g, '');
			$.ajax({
				type:"GET",
				url:"/images/"+image_id+"/delete",
				data: {
					id:image_id
				},
				success:function(msg) {
					if (msg == "destroy_success") {
						$('.li_image_'+image_id).remove();
						$('input[id*="attributes"][value='+image_id+']').remove();
					} else {
						alert("sorry, there was an error. " + msg);
					}
				},
				error:function(msg) {
					alert("sorry, there was an error. " + msg);
				}
			})
		});
	}
}

$(document).ready(ready);
$(document).on('page:load',ready);