var imagesArray = ['/assets/steve_large.jpg'];

$(function(){
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
        var home_image = $('#home-image').attr('src', imagesArray[0]).hide();
        home_image.fadeIn();
    }

    preloadImages(imagesArray, onImageLoad);
});
