/* ------------------------------------------------------------------------
	galeria
------------------------------------------------------------------------- */
$(".items img").click(function() { 
 
    // calclulate large image's URL based on the thumbnail URL (flickr specific) 
    var url = $(this).attr("").replace("_t", ""); 
 
    // get handle to element that wraps the image and make it semitransparent 
    var wrap = $("#image_wrap").fadeTo("medium", 0.5); 
 
    // the large image from flickr 
    var img = new Image(); 
 
    // call this function after it's loaded 
    img.onload = function() { 
 
        // make wrapper fully visible 
        wrap.fadeTo("fast", 1); 
 
        // change the image 
        wrap.find("img").attr("src", url); 
 
    }; 
 
    // begin loading the image from flickr 
    img.src = url; 
 
// when page loads simulate a "click" on the first image 
}).filter(":first").click();
