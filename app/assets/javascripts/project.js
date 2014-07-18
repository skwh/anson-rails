// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;
ready = function() {
	var subsections = $('.subsection');
	var left_aligns = $('.left_align');
	var right_aligns = $('.right_align');
	//find the width of the aligns for each subsection
	for (var i=0;i<subsections.length;i++) {
		var subsection_width = parseInt($(subsections[i]).getStyleObject().width,10);
		var left_align_width = parseInt($(left_aligns[i]).getStyleObject().width,10);
		var right_align_width = parseInt($(right_aligns[i]).getStyleObject().width,10);
		var align_width = left_align_width + right_align_width;
		//find the amount of avaliable space for margins
		var av_space = (subsection_width-align_width)/2;
		if (av_space > 35) {
			av_space = 35;
		}
		//set the margins
		left_aligns[i].style.marginLeft = av_space + "px";
		right_aligns[i].style.marginRight = av_space + "px";
	}

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
	var slider_divs = $("div[id*='slider']");
	var right_align_divs = $('div.right_align');
	var slides_divs = $("div[u='slides']");
	var video_divs = $("iframe");
	//placeholder for the jssorslider object
	var jssor_slider;
	for (var i=0;i<slider_divs.length;i++) {
		var current_slider_id = slider_divs[i].dataset.projectId;
		var right_align_dimensions = [$(right_align_divs[i]).getStyleObject().width, $(right_align_divs[i]).getStyleObject().height];
		slider_divs[i].style.width = (parseInt(right_align_dimensions[0],10) - 10) + "px";
		slides_divs[i].style.width = (parseInt(right_align_dimensions[0],10) - 10) + "px";
		//set the width and height of the video player to the right align div
		if (video_divs.length != 0) {
			for (var k=0;k<video_divs.length;k++) {
				video_divs[k].style.width = (parseInt(right_align_dimensions[0],10) - 10) + "px";
				video_divs[k].style.height = (parseInt(right_align_dimensions[1],10) - 10) + "px";
			}
		}
		//create the jssor slider object with the current slider's id and the options
		jssor_slider = new $JssorSlider$('slider_container_'+current_slider_id, options);
	};
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