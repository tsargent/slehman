
$(document).ready(function(){
    var body = $('body');
    var header = $('.navbar-fixed-top');
    
    $(window).scroll(function(){
        if($(this).scrollTop() <= 0) {
            header.removeClass('t1').addClass('t0');
        } else {
            header.removeClass('t0').addClass('t1');
        }
    }).scroll();
})
