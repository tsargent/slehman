
$(function(){
    var preload_images    = function(urls, callback)
    {
        var loaded  = 0;

        for(var i = 0, j = urls.length; i < j; i++)
        {
            var img     = new Image();

            img.onload  = function()
            {                               
                if(++loaded == urls.length && callback)
                {
                    callback();
                }
            }

            img.src = urls[i];
        }
    };
    preload_images([$('#home-image').attr('src')], function(){
        console.log('loaded');
    });
    
    
})


