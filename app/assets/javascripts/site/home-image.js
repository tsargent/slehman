var imagesArray = ['/assets/steve_large.jpg'];

$(function(){
    
    var image_w, image_h;
    
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
        var home_image = $('#home-image').attr('src', imagesArray[0]).hide(),
        container = $('#home-image-container');
        image_w = home_image.width();
        image_h = home_image.height();
        home_image.fadeIn();
    }

    preloadImages(imagesArray, onImageLoad);
});
