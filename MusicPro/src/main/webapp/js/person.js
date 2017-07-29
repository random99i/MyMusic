var uname = $("#getname").text();
$("#edit").click(function() {
	location.href = "/MusicPro/page/setting.jsp";
})

var usex = $("#usex").val();
$("#useximg").attr(
		"src",
		usex == "" ? "images/baomi.png" : (usex == "男" ? "images/man.png"
				: "images/woman.png"));

var uaddr = $("#uaddr").val();
$("#uaddrSpan").text(uaddr == "" ? "所在地区：未知" : "所在地区：" + uaddr);

var upic = $("#upic").val();
$("dt>img").attr("src", upic == "" ? "images/person.jpg" : upic);
var usid = $("#usid").val();

$.get("muser/findDynamic?usid=" + usid, function(data) {
	var len0 = data.length;
	var str0 = "";
	for (var i = 0; i < len0; i++) {
		str0 += "<li><input type='hidden' value='"+data[i].d_id+"'/><img src='" + (upic == "" ? "images/person.jpg" : upic)
				+ "' title='" + uname + "'/><a href='javascript:void(0)'>"
				+ data[i].d_thing + "</a><span>" + data[i].d_date
				+ "</span><a herf='javascript: void(0)' class='del' id='del' onClick='delDynamic(this)'>删除</a></li>";
	}
	$("#dongUl").html(str0);
})

$.get("muser/findfollow?usid=" + usid, function(data) {
	var len1 = data.length;
	$("#follownum").text(len1);
	var str1 = "";
	for (var i = 0; i < len1; i++) {
		str1 += "<li><a href='muser/detail?usid=" + data[i].usid
				+ "'><img src='"
				+ (data[i].upic == null ? 'images/person.jpg' : data[i].upic)
				+ "'><span>" + data[i].uname + "</span></a></li>";
	}
	$("#focusUl").html(str1);
});

$.get("muser/findfans?usid=" + usid, function(data) {
	var len2 = data.length;
	$("#fansnum").text(len2);
	var str2 = "";
	for (var i = 0; i < len2; i++) {
		str2 += "<li><a href='muser/detail?usid=" + data[i].usid
				+ "'><img src='"
				+ (data[i].upic == null ? 'images/person.jpg' : data[i].upic)
				+ "'><span>" + data[i].uname + "</span></a></li>";
	}
	$("#fansUl").html(str2);
});

$('#addDynamic').dialog({
	title : "发布动态",
	width : 250,
	height : 150,
	left : 540,
	top : 400,
	cache : false,
	draggable : true,
});

$('#addDynamic').dialog("close");

function openAdd() {
	$('#addDynamic').dialog("open");
}

$("#formData").form({
	url : "muser/addDynamic",
	success : function(data) {
		$('#addDynamic').dialog("close");
		window.location.reload();
	}
});

function delDynamic(obj){
	var d_id=$(obj).parent().children("input").val();
	$.get("muser/delDynamic?d_id="+d_id,function(data){
		if(data){
			window.location.reload();
		}
	})
}