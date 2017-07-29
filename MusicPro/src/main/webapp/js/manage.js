$("#logout").on("click", function() {
	if (confirm("是否确定注销此用户？")) {
		$.get("auser/logout", function(data) {
			if (data) {
				location.href = "/MusicPro/back/login.jsp";
			}
		})
	}
})

$("#main").tabs({
	fit : true,
})

$("#LeftSider").accordion({
	fit : true,
});

var urlJson = {
	"用户维护" : "detailmUsers.jsp",
	"歌手信息" : "detailsinger.jsp"
};

$(".menutree").tree({
	onClick : function(node) {
		var nt = node.text;
		if ($('#main').tabs('exists', nt)) {
			// 打开当前选中面板
			$('#main').tabs('select', nt);
		} else {
			if (urlJson[nt]) {
				$('#main').tabs('add', {
					title : nt,
					href : "back/" + urlJson[nt],
					closable : true,
				});
			} else {
				$('#main').tabs('add', {
					title : nt,
					content : '<h1>' + nt + '</h1>',
					closable : true,
				});
			}

		}

	}
});

var so_rid = 0;
var singer = "";
function openMP(id, name) {
	so_rid = id;
	singer = name;
	$("#addSong").dialog({
		title : '添加歌曲',
		width : 400,
		height : 300,
		left : 450,
		modal : true,
	});
}

function closeMP() {
	$("#addSong").dialog("close", true);
}

$("#addform").form({
	url : "singer/addsong",
	onSubmit : function(param) {
		param.so_rid = so_rid;
		param.singer = singer;
	},
	success : function(data) {
		closeMP();
	}
})