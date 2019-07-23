// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require bootstrap-sprockets
//= require jquery.jscroll.min.js
//= require_tree .

jQuery(window).load(function(){
	$('.bxslider').bxSlider({
		auto: true,
		speed: 1000,
		moveSlide: 1,
		pause: 6000,
		minSlides: 5,
		maxSlides: 5,
		slideWidth: 250,
		randomStart: true,
		autoHover: true,
		touchEnabled: false
	});
});

window.onload = function(){
	$(function(){
		$("#loading").fadeOut();
	});
}

$(function(){
	var h = $(window).height();
	$("#contents").css("display", "none");
	$("#loader-bg ,#loader").height(h).css("display","block");
});

$(window).load(function(){
	$("#loader-bg").delay(900).fadeOut(800);
	$("#loader").delay(600).fadeOut(300);
	$("#contents").css("display", "block");
});