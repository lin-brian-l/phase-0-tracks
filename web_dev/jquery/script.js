$(document).ready(function(){
	alert("TESTING!");

	$("#1").hover(function(){
		$(this).css("border-style", "dotted");
		}, function(){
		$(this).css("border-style", "");
	});

});

$(function() {
	$("button").click(function(){
		$("body").toggleClass('clicked');
	});
});

var click = 0

$("li").click(function(){
	if (click == 0) {
		$(this).css("color", "red");
		click = 1
	} else {
		$(this).css("color", "black");
		click = 0
	}
});


