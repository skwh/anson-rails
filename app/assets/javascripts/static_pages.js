// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;
ready = function() {
	//setup the options for the sliders
	var options = { 
		$AutoPlay: true,
		$AutoPlayInterval: 5000,
		$DragOrientation: 0,
		$FillMode: 1,
		$ArrowNavigatorOptions: {
			$Class: $JssorArrowNavigator$,
			$ChanceToShow: 2
		}
	};
	//get the slider that exists on the page
	var slider_div = $("div[id*='slider']")[0];
	//get the divs that contain the slides
	var slides_div = $("div[u='slides']")[0];
	//placeholder for the jssorslider object
	var jssor_slider;
	//get the width of the body
	var body_width = $('#general_body').getStyleObject().width;
	//set the width of the slider container to its parent, the body div
	slider_div.style.width = body_width;
	//set the width of the slides container to the body div
	slides_div.style.width = body_width;
	//create the jssor slider object with the current slider's id and the options
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
	var slider_width = parseInt($('#general_body').getStyleObject().width,10);
	var slider_height = parseInt($('#slider').getStyleObject().height,10);
	$('.jssora01r')[0].style.left=(slider_width-53)+"px";
	$('.jssora01r')[0].style.top = ((slider_height/2)-53)+"px";
	$('.jssora01l')[0].style.top = ((slider_height/2)-53)+"px";
}

$(document).ready(ready);
$(document).on('page:load', ready);