var upic = $("#upic").val();
$("dt>img").attr("src",upic==""? "images/person.jpg":upic);

var s_show = $("#s_show").val();
$("#s_showSpan").text(s_show);

var s_id = $("#s_id").val();
$.get("singer/getsong?s_id="+s_id,function(data){
	var str="";
	for(var i=0;i<data.length;i++){
		str+="<a href='/MusicPro/page/playy.jsp?so_id="+data[i].so_id+"'> <img src='"+data[i].cover+"' /></a>";
	}
	$("#gequ").append(str);
})