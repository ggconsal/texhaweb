// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require spin
//= require bootstrap
//= require turbolinks
//= require_self

//Load this when the DOM is ready
$(document).ready(function(){
  // You used .myCarousel here. 
  // That's the class selector not the id selector,
  // which is #myCarousel
	//$('#myCarousel').carousel();

	$('.mov-suave-post').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
		 && location.hostname == this.hostname) {
		    var $target = $(this.hash);
		    $target = $target.length && $target || $('[name=' + this.hash.slice(1) +']');
		    if ($target.length) {
		        var targetOffset = $target.offset().top - 80;
		        $('html,body').animate({scrollTop: targetOffset}, 2000);
		        return false;
		    }
		}
	});

	$('.mov-suave').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
		 && location.hostname == this.hostname) {
		    var $target = $(this.hash);
		    $target = $target.length && $target || $('[name=' + this.hash.slice(1) +']');
		    if ($target.length) {
		        var targetOffset = $target.offset().top - 80;
		        $('html,body').animate({scrollTop: targetOffset}, 2000);
		        return false;
		    }
		}
	});

	$('.mas-consejos').hide();
	$('.boton-mas2').hide();

	$('.boton-mas').click(function() {
		$('.mas-consejos').show();
		$('.boton-mas').hide();
		$('html, body').animate({
		   scrollTop: $(".mas-consejos").offset().top   //$(document).height()
		}, 1500);
		$('.boton-mas2').show();
	});

	$('.js-info').click(function() {
		$("#contact_con_nombre").val("info");
	});

	$('.dropdown-menu li a').on('click', function(){
	    $(".dropdown-menu").click();
	    $(".navbar-toggle").click();
	});


	$(document).on('submit', 'form', function(e) {
	    $('#gc-aceptar').hide(); 
	    var opts = {
	      lines: 11, // la cantidad de líneas
	      length: 0, // el tamaño de cada línea
	      width: 14, // el grosor de las líneas
	      radius: 22, // el radio del círculo
	      corner: 1,
	      rotate: 0,
	      trail: 67, // el efecto luminosidad
	      speed: 1, // la velocidad
	      shadow: false, // habilitar o deshabilitar las sombras
	      Hwaccel: false,
	      color: '#300000' // el color en formato RGB
	    };

	    new Spinner(opts).spin(document.getElementById('msgOK'));
	});

});

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
      'callback=initialize';
  document.body.appendChild(script);
}

function initialize() {

	var direc = {lat: -34.7098566, lng: -58.3886861};

    var mapOptions = {
      zoom: 14,
      center: direc
    };
    var map = new google.maps.Map(document.getElementById('texha_map'),  mapOptions);

	var infowindow = new google.maps.InfoWindow;
	infowindow.setContent('Nuestras Oficinas');

	var marker = new google.maps.Marker({map: map, position: direc});
	marker.addListener('click', function() {
	infowindow.open(map, marker);
	});
}



/*		$('.div-boton').hide();
		$('.boton-mas').addClass("hide"); 
		$('.div-boton').removeClass( "myClass noClass" )

        $('html, body').animate({
           scrollTop: '0px'
        },
        1500); 
		$('#div-mensajes').hide();

*/
