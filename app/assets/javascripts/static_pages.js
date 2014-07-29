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
	if ($(slides_div).children().length > 1) {
		options.$ArrowNavigatorOptions = {
				$Class: $JssorArrowNavigator$,
				$ChanceToShow: 2
		}
	}

	jssor_slider = new $JssorSlider$('slider', options);
	//resize the boxes so that the arrows are positioned correctly
	repositionArrowsAfterResize();
	Lightbox_plugin();
}
window.onresize = function(event) {
	repositionArrowsAfterResize();
}

function repositionArrowsAfterResize() {
	//correct the positions of the arrows after the window is resized
	if ($("div[u='slides']").children().length > 1) {
		var slider_width = parseInt($('#general_body').getStyleObject().width,10);
		var slider_height = parseInt($('#slider').getStyleObject().height,10);
		$('.jssora01r')[0].style.left=(slider_width-53)+"px";
		$('.jssora01r')[0].style.top = ((slider_height/2)-53)+"px";
		$('.jssora01l')[0].style.top = ((slider_height/2)-53)+"px";
	}
}

$(document).ready(ready);
$(document).on('page:load', ready);