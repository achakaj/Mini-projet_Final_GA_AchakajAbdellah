$(function(){
     'use strict';
    var win = $(window).height(),
    navbar = $('.navbar').innerHeight();
    $('.first-part').height(win -(navbar));

});

var countDownDate = new Date("Sep 5, 2018 15:37:25").getTime();


var x = setInterval(function() {

   
    var now = new Date().getTime();
    
    
    var distance = countDownDate - now;
    
    
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    
    document.getElementById("lmagana").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("lmagana").innerHTML = "EXPIRED";
    }
}, 1000);
