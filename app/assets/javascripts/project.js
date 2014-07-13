// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;
ready = function() {
	//setup the options for the sliders
	var options = { 
		$AutoPlay: true,
		$FillMode: 1,
		$ArrowNavigatorOptions: {
			$Class: $JssorArrowNavigator$,
			$ChanceToShow: 2
		}
	};
	//get the sliders that exist on the page
	var slider_divs = $("div[id*='slider']");
	//get the divs that contain the sliders
	var right_align_divs = $('div.right_align');
	//get the divs that contain the slides
	var slides_divs = $("div[u='slides']");
	//get the frames that contain videos
	var video_divs = $("iframe");
	//placeholder for the jssorslider object
	var jssor_slider;
	//loop through the sliders
	for (var i=0;i<slider_divs.length;i++) {
		//get the current slider's project id
		var current_slider_id = slider_divs[i].dataset.projectId;
		//standardize the right align div's dimensions
		var right_align_dimensions = [$(right_align_divs[i]).getStyleObject().width, $(right_align_divs[i]).getStyleObject().height];
		//set the width of the slider container to its parent, the right align div
		slider_divs[i].style.width = right_align_dimensions[0];
		//set the width of the slides container to the right align div
		slides_divs[i].style.width = right_align_dimensions[0];
		//set the width and height of the video player to the right align div
		if (video_divs.length != 0) {
			for (var k=0;k<video_divs.length;k++) {
				video_divs[k].style.width = right_align_dimensions[0];
				video_divs[k].style.height = right_align_dimensions[1];
			}
		}
		//create the jssor slider object with the current slider's id and the options
		jssor_slider = new $JssorSlider$('slider_container_'+current_slider_id, options);
	};
	//resize the boxes so that the arrows are positioned correctly
	repositionArrowsAfterResize();
	Lightbox_plugin();
}
window.onresize = function(event) {
	repositionArrowsAfterResize();
}

function repositionArrowsAfterResize() {
	//correct the positions of the arrows after the window is resized
	var slider_divs = $("div.right_align");
	var slider_widths = parseInt($('div.right_align').getStyleObject().width,10);
	for (var i=0;i<slider_divs.length;i++) {
		$('.jssora01r')[i].style.left=(slider_widths-53)+"px";
	}
}

$(document).ready(ready);
$(document).on('page:load', ready);