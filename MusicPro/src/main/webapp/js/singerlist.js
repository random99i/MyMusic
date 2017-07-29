$.get("singer/getall",function(data){
	var str="";
	for(var i=0;i<data.length;i++){
		str+="<li><div class='li_2'><img src='"+data[i].s_pic+"'>"+
		"<span id='msk'></span><a class='msk' href='singer/detail?s_id="+data[i].s_id+"' title='"+data[i].s_name+"的音乐'></a></div><p>"+
		"<a class='nm' href='singer/detail?s_id="+data[i].s_id+"' title='"+data[i].s_name+"的音乐'>"+data[i].s_name+"</a> <a class='f-tdn'"+
		"href='singer/detail?s_id="+data[i].s_id+"' title='"+data[i].s_name+"的个人主页'><i class='u-icn'></i></a></p></li>";
	}
	$("#listUl").html(str);
})

$("#selectid a").click(function(){
	var s_zm = $(this).text();
	alert(s_zm);
	$.get("singer/selectzm?s_zm="+s_zm,function(data){
		var str="";
		for(var j=0;j<data.length;j++){
			str+="<li><div class='li_2'><img src='"+data[j].s_pic+"'>"+
			"<span id='msk'></span><a class='msk' href='singer/detail?s_id="+data[j].s_id+"' title='"+data[j].s_name+"的音乐'></a></div><p>"+
			"<a class='nm' href='singer/detail?s_id="+data[j].s_id+"' title='"+data[j].s_name+"的音乐'>"+data[j].s_name+"</a> <a class='f-tdn'"+
			"href='singer/detail?s_id="+data[j].s_id+"' title='"+data[j].s_name+"的个人主页'><i class='u-icn'></i></a></p></li>";
		}
		$("#listUl").html(str);
	})
})