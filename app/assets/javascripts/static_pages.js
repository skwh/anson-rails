// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;
ready = function() {
	var slider_div = $("div[id*='slider']")[0];
	var slides_div = $("div[u='slides']")[0];
	var jssor_slider;
	var body_width = $('#general_body').getStyleObject().width;
	slider_div.style.width = body_width;
	slides_div.style.width = body_width;
	//setup the options for the sliders
	var options = { 
		$AutoPlay: true,
		$AutoPlayInterval: 5000,
		$DragOrientation: 0,
		$FillMode: 1
	};

	jssor_slider = new $JssorSlider$('slider', options);
	Lightbox_plugin();
}

$(document).ready(ready);
$(document).on('page:load', ready);