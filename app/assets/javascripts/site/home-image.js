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

// use whatever callback you really want as the argument
preloadImages(["/assets/steve_large.jpg"], function() {
    alert("DONE");
});