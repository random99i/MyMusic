var usex = $("#usex").val();
$("#useximg").attr("src",usex==""?"images/baomi.png":(usex=="男"? "images/man.png":"images/woman.png"));

var uaddr = $("#uaddr").val();
var ubri = $("#ubri").val();
var unote = $("#unote").val();
$("#uaddrSpan").text(uaddr==""? "所在地区：保密" :"所在地区："+uaddr);
$("#ubriSpan").text(ubri==""? "生日：保密" :"生日："+ubri);
$("#unoteSpan").text(unote);

var upic = $("#upic").val();
$("dt>img").attr("src",upic==""? "images/person.jpg":upic);
$("#dongUl>li>img").attr("src",upic==""? "images/person.jpg":upic);

//登录人的id
var rusid = $("#rusid").val();
//查看人的id
var usid = $("#usid").val();

$.get("muser/findDynamic?usid=" + usid, function(data) {
	var len0 = data.length;
	var strz = "";
	for (var i = 0; i < len0; i++) {
		strz += "<li><input type='hidden' value='"+data[i].d_id+"'/><img src='" + (upic == "" ? "images/person.jpg" : upic)
				+ "' title=''/><a href='javascript:void(0)'>"
				+ data[i].d_thing + "</a><span>" + data[i].d_date
				+ "</span></li>";
	}
	$("#dongUl").html(strz);
})

$.get("muser/findDynamic?usid="+usid,function(data){
	var len0 = data.length;
	var str0="";
	for(var i=0;i<len0;i++){
		str0+="<li><img src='"+(upic==""? "images/person.jpg":upic)+"' title='"+uname+"'/></li>";
	}
	$("#dongUl").html(str0);
})


$.get("muser/findfollow?usid="+usid,function(data){
	var len1 = data.length;
	$("#follownum").text(len1);
	var str1="";
	for(var i=0;i<len1;i++){
		str1+="<li><a href='muser/detail?usid="+data[i].usid+"'><img src='"+(data[i].upic==null?'images/person.jpg':data[i].upic)+"'><span>"+data[i].uname+"</span></a></li>";
	}
	$("#focusUl").html(str1);
});

$.get("muser/findfans?usid="+usid,function(data){
	var len2 = data.length;
	$("#fansnum").text(len2);
	var str2="";
	for(var i=0;i<len2;i++){
		str2+="<li><a href='muser/detail?usid="+data[i].usid+"'><img src='"+(data[i].upic==null?'images/person.jpg':data[i].upic)+"'><span>"+data[i].uname+"</span></a></li>";
	}
	$("#fansUl").html(str2);
});

$.get("muser/ismyfollow?usid="+usid+"&rusid="+rusid,function(data){
	if(data){
		$("#addguan").html("取消关注");
	}else{
		$("#addguan").html("关注");
	}
})

$("#addguan").click(function(){
	var str=$("#addguan").text().trim();
	if(str=="关注"){
		$.get("muser/tofollow?usid="+usid+"&rusid="+rusid,function(data){
			if(data){
				alert("关注成功");
				$("#addguan").html("取消关注");
			}
		})
	}else{
		$.get("muser/notfollow?usid="+usid+"&rusid="+rusid,function(data){
			if(data){
				alert("取消关注成功");
				$("#addguan").html("关注");
			}
		})
	}
})
