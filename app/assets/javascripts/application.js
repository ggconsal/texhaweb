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
	$('#myCarousel').carousel();

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

	$('#div-mensajes').click(function() {
		$("#div-mensajes").addClass("hide");;
        location.reload();
	});


	$(function() {  

	    // cada vez que se produzca scroll en la ventana
	    $(window).scroll(function(event) {

	    	// Saco la posicion bottom del elemento de arriba al 
	    	// que quiero inmovilizar. Luego pregunto por esa
	    	// posicion (posic).
	    	var	elemento = document.getElementById("divcta"),
		    	posictop = elemento.getBoundingClientRect().top,
		    	posic = posictop + elemento.clientHeight;

		    // la variable fijo indica si el elemento ya fue inmovilizado
		    // (fijo en la pantalla) o esta flotando en (en su estado normal).
		    var	fijo = false;
		    
		    // obtengo el ancho del elemento de arriba que asignarle ese valor.
		    // NO FUNCIONO: en el caso que achiquen o agranden la pantalla el
		    // elemento continua en el mismo tamaño salvo que se haga scroll.
		    // por eso utilicé un porcentaje.
		    var	ancho = elemento.offsetWidth;

	    	// var pwind = document.body.scrollTop;

		    // alert(curtop - curtopscroll);
	        // dependiendo el lugar de la pantalla
	        // modificamos la clase del header
	        // par cambiar su color de fondo
	        // alert(posic.top);
	        if (posic < 90 && fijo == false) 
	        {
	            fijo = true;
	            $("#divcateg").addClass("blog-div-ontop");
	            $("#divcateg").removeClass("blog-div-movible");
	            document.getElementById('divcateg').style.width=29.5+"%";
	        }
	        else 
	        {
	            fijo = false;
	            $("#divcateg").addClass("blog-div-movible");
	            $("#divcateg").removeClass("blog-div-ontop");
	            document.getElementById('divcateg').style.width=94+"%";
	        }
	    });
	});	

	$('.mov-suave').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
		 && location.hostname == this.hostname) {
		    var $target = $(this.hash);
		    $target = $target.length && $target || $('[name=' + this.hash.slice(1) +']');
		    if ($target.length) {
		        var targetOffset = $target.offset().top - 65;
		        $('html,body').animate({scrollTop: targetOffset}, 1000);
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

