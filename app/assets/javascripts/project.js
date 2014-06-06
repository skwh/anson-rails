// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;
ready = function() {
	var options = { 
		$AutoPlay: true,
		$FillMode: 1,
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
window.onresize = function(event) {
	var slider_divs = $("div.right_align");
	var slider_widths = parseInt($('div.right_align').getStyleObject().width,10);
	for (var i=0;i<slider_divs.length;i++) {
		$('.jssora01r')[i].style.left=(slider_widths-(45+8))+"px";
	}
}

$(document).ready(ready);
$(document).on('page:load', ready);