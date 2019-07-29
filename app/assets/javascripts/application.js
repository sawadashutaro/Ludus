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
		minSlides: 3,
		maxSlides: 3,
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

$(function () {
	    setInterval(function () {
		    $('.star-1').fadeOut(150).delay(2000).fadeIn(300).fadeOut(150).delay(1254);
	        $('.star-2').fadeOut(300).fadeIn(120).fadeOut(120).delay(1920);
	        $('.star-3').fadeOut(150).delay(1200).fadeIn(300).fadeOut(150).delay(800);
	        $('.star-4').fadeOut(700).fadeIn(300).fadeOut(160).delay(1350);
	    }, 1);
    });

$(function(){
	$(".btn-top").on("click", function(){
		$(".sign-body").addClass("active");
		$(".sign-contents").css("visibility", "visible");
		$(".sign-contents").css("opacity", "1");
	});
	$(".sign-body").on("click", function(){
		$(".sign-body").removeClass("active");
		$(".sign-contents").css("visibility", "hidden");
		$(".sign-contents").css("opacity", "0");
	});
	$(".cancel").on("click", function(){
		$(".sign-body").removeClass("active");
		$(".sign-contents").css("visibility", "hidden");
		$(".sign-contents").css("opacity", "0");
	});
});