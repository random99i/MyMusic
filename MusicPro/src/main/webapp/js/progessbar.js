(function(window){
    var $progressbar = $("#progressbar"),
        bar = $progressbar.find(".bar");

    $progressbar.progress = 0;
    $progressbar.slideable = false;

    //点击进度条
    $progressbar.setProgress = function(val){
        //if(val<0 || val>100)return;
    	//alert(val);
        bar.css({width:val+"%"});
        $progressbar.progress = val;
       // alert(val);
    };

    $progressbar.bind("click",function(e){
    	//alert("hh");
        if(!$progressbar.slideable)return;
        var x = e.offsetX;//1208总长度进度条
        //alert(x);
        var h=$progressbar.offset();
        
        var width = $progressbar.offset();
        //alert("hhh");
        //alert(width);
        var progress = (x/1208)*100;
        //alert(progress);
        $progressbar.setProgress(progress);
        $progressbar.trigger("change");
    });
//
//    var recod = {sx:0,cx:0,width:0};
//    var progressWidth = $progressbar.offset().left;
//   // alert("ss");
//   // alert(progressWidth);
//    bar.bind("touchstart",function(evt){
//        if(!$progressbar.slideable)return;
//        recod.sx = evt.touches[0].pageX;
//        progressWidth = $progressbar.offset().let;
//        recod.width = bar.offset().left;
//    });
//    bar.bind("touchmove",function(evt){
//        if(!$progressbar.slideable)return;
//        recod.cx = evt.touches[0].pageX;
//        var width = recod.width + (recod.cx - recod.sx);
//        var progress = Math.round(width/progressWidth*100);
//        $progressbar.setProgress(progress);
//        $progressbar.trigger("sliding");
//    });
//    bar.bind("touchend",function(){
//        if(!$progressbar.slideable)return;
//        var mx = recod.cx - recod.sx;
//        if(Math.abs(mx)>2){
//            $progressbar.trigger("change");
//        }
//        recod = {sx:0,cx:0,width:0};
//    });

    window.$progressbar = $progressbar;
})(window);