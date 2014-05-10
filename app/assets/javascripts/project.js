// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;
ready = function() {
	var options = { 
		$AutoPlay: true,
		$ArrowNavigatorOptions: {
			$Class: $JssorArrowNavigator$,
			$ChanceToShow: 2
		}
	};
	var slider_divs = $("div[id*='slider']");
	var jssor_slider;
	for (var i=0;i<slider_divs.length;i++) {
		var current_slider = slider_divs[i].dataset.projectId;
		jssor_slider = new $JssorSlider$('slider_container_'+current_slider, options);
	};
}
$(document).ready(ready);
$(document).on('page:load', ready);