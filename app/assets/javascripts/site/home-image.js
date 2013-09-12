var imagesArray = ['/assets/steve_large.jpg'];

$(function(){
    
    var image_w, image_h, home_image, ratio;
    
    function preloadImages(images, callback) {
        var count = images.length;
        if(count === 0) {
            callback();
        }
        var loaded = 0;
        $(images).each(function() {
            $('<img>').attr('src', this).load(function() {
                loaded++;
                if (loaded === count) {
                    callback();
                }
            });
        });
    };

    var onImageLoad = function() {
        home_image = $('#home-image').attr('src', imagesArray[0]).hide(),
        container = $('#home-image-container');
        image_w = home_image.width();
        image_h = home_image.height();
        
        // if 0 we want to load it again
        if(image_w == 0) preloadImages(imagesArray, onImageLoad);
        
        ratio = image_h/image_w;
        home_image.fadeIn(200, function(){
            $(window).resize();
        });
        // home_image.show();
        $(window).resize();
    }

    preloadImages(imagesArray, onImageLoad);
    
    $(window).on('resize', function(){
        var win_h = $(window).height(), 
            win_w = $(window).width(),
            h, w, t, l;

		if(win_h/win_w <= ratio) {
			// Go by width
			console.log('go by width');
			w = win_w;
			h = win_w * ratio;
		} else {
			// Go by height
			console.log('go by height');
			h = win_h;
			w = win_h / ratio;
		}
		h = Math.ceil(h);
		w = Math.ceil(w);
		
		t = 0;
		
		
		l = (win_w - w)/2;
		
        home_image.css({'height':h, 'width':w, 'position': 'absolute', 'top': 0, 'left': l+'px'});
    });

});
