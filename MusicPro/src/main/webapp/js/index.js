/*    特效部分                */
var index = 0;
function changePic(id) {
	if (Number(id)) {
		clearInterval(timer);
		index = id;
	} else {
		// 网页加载之后就执行
		// 首先，判定index
		index = index % 8 + 1;// 保证index从1~8
	}

	// 设置图片
	$("#pic").attr("src",
			"images/banner_" + index + ".jpg");
	$("#banner").attr("style","background:url(images/"
			+ index + ".jpg)");
	// js里面没有background,只有backgroundImage

	// 改变li的class,让其高亮显示
	var ul = document.getElementById("ban_ul");
	var lis = ul.getElementsByTagName("li");
	for (var i = 0; i < lis.length; i++) {
		lis[i].setAttribute("class", "li_out");
		if (i == index - 1) {
			lis[i].setAttribute("class", "li_over");
		}
	}

}

changePic();

timer = window.setInterval("changePic()", 3000);

function start() {
	timer = window.setInterval("changePic()", 3000);
}

var aut_login = document.getElementById("aut-phone");	// 登录板块
var aut_zc = document.getElementById("aut-zc");			// 注册板块
var aut_zz = document.getElementById("aut-zz");			// 注册验证板块
var aut_zm = document.getElementById("aut-zm");			// 注册昵称板块
var mov1 = document.getElementById("mov-1");	
var mov2 = document.getElementById("mov-2");			
var mov3 = document.getElementById("mov-3");	
var mov4 = document.getElementById("mov-4");
move(mov1,aut_login);
move(mov2,aut_zc);
move(mov3,aut_zz);
move(mov4,aut_zm);

// 板块移动
function move(obj1,obj2){
	obj1.onmousedown = function(e) {
		var e = arguments[0] || window.event;
		IsMousedown = true;
		LEFT = e.clientX - parseInt(obj2.style.left);
		TOP = e.clientY - parseInt(obj2.style.top);
		document.onmousemove = function(e) {
			var e = arguments[0] || window.event;
			if (IsMousedown) {
				obj2.style.left = e.clientX - LEFT + "px";
				obj2.style.top = e.clientY - TOP + "px";
			}
		}
		document.onmouseup = function() {
			IsMousedown = false;
		}
	}
}

/* 实现部分 */

// 登录部分
var login = $("#login");
var logout = $("#logout");
var cls1 = $("#cls-1");
var go_zc = $("#go-zc");

var dltel = $("#dltel");
var dlpwd = $("#dlpwd");
var godl = $("#godl");

login.click(function(){	// 打开面板
	aut_login.style.display="block";
});

cls1.click(function(){	// 关闭面板
	aut_login.style.display="none";
});

go_zc.click(function(){	// 去注册
	aut_login.style.display="none";
	aut_zc.style.display="block";
});

if($("#code").val()!=""){
	login.attr("style","display:none");
	$("#info").text($("#code").val());
	logout.text("exit");
}else{
	login.attr("style","display:block");
}

godl.click(function(){	// 登陆
	$.get("muser/login?utel=" + dltel.val() + "&upwd=" + dlpwd.val(), function(data) {
		if (data!=null&data!="") {
			aut_login.style.display="none";
			login.attr("style","display:none");
			$("#info").text(data.uname);
			logout.text("exit");
		}else{
			alert("手机号或密码错误");
		}
	})
});

$("#info").click(function(){
	location.href="/MusicPro/page/person.jsp";
})

logout.click(function(){
	$.get("muser/logout", function(data){
		location.reload();
	})
})


// 注册部分
var next = $("#next");
var cls2 = $("#cls-2");
var re_login = $("#re_login");
var zctel = $("#zctel");
var zcpwd = $("#zcpwd");

var note = $("#note");
var again = $("#again");

var t;
var codenum = '';

cls2.click(function(){	// 关闭面板
	aut_zc.style.display="none";
});

re_login.click(function(){	// 返回登录
	aut_zc.style.display="none";
	aut_login.style.display="block";
});

//注册验证部分
var zcnext = $("#zcnext");
var cls3 = $("#cls-3");
var re2_login = $("#re2_login");
var yzm = $("#yzm");

zcnext.click(function(){	// 关闭面板
	aut_zz.style.display="none";
});

cls3.click(function(){	// 关闭面板
	aut_zz.style.display="none";
});

re2_login.click(function(){	// 返回登录
	aut_zz.style.display="none";
	aut_login.style.display="block";
});

var isExist=true;

zctel.blur(function(){
	$.get("muser/isUtelExist?utel="+zctel.val(),function(data){
		isExist=data;
	});
});

next.click(function(){	// 关闭面板
	var mobilevalid = /^(0|86|17951)?(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}$/;
	var pwdid = /^[0-9A-Za-z]{6,}$/;
	if (!mobilevalid.test(zctel.val())) {
		alert('手机格式不正确！');
	} else if (!pwdid.test(zcpwd.val())) {
		alert('密码格式不正确！');
	} else if (isExist) {
		alert('该手机号已经被注册！');
	} else {
		$.get("send/num?tel=" + zctel.val(), function(data) {
			aut_zc.style.display="none";
			aut_zz.style.display="block";
			note.text(zctel.val().substring(0, 3) + "****"+ zctel.val().substring(7, 11));
			t = setInterval(jishi, 1000);
			again.attr("disabled",true);
			codenum = data.trim();
		});
	}
	
});

again.click(function() {
	t = setInterval(jishi, 1000);
	again.attr("disabled",true);
	$.get("send/num?tel=" + zctel.val(), function(data) {
		alert(data);
		codenum = data.trim();
	});
});

//发送计时
var miao = 60;
function jishi() {
	miao--;
	again.text(miao + "s");
	again.attr("style","background-color:#EEEEEE;color:#BBC4D5");
	if (miao == 0) {
		again.text("重新发送");
		again.removeAttr("disabled");
		again.attr("style","background-color:#fff");
		clearInterval(t);
		miao = 60;
	}
}

//验证用户注册
zcnext.click(function() {
	if (codenum == yzm.val().trim()) {
		yzm.val("");
		$.get("muser/register?utel=" + zctel.val() + "&upwd=" + zcpwd.val(),
				function(data) {
					if (data) {
						alert('恭喜您注册成功！');
						aut_zz.style.display = "none";
						aut_zm.style.display = "block";
					}
				});
	} else {
		alert('验证码错误！');
	}
});



//注册昵称部分
var zccg = $("#zccg");
var cls4 = $("#cls-4");
var re3_login = $("#re3_login");
var zcnc = $("#zcnc");

cls4.click(function(){	// 关闭面板
	aut_zm.style.display="none";
});

re3_login.click(function(){	// 返回登录
	aut_zm.style.display="none";
	aut_login.style.display="block";
});


zccg.click(function(){	// 注册昵称
		$.get("muser/isUnameExist?uname="+zcnc.val(),function(data){
			if(data){
				alert("昵称已经被使用！");
			}else{
				$.get("muser/updateUname?uname="+zcnc.val()+"&utel="+zctel.val(),function(data){
					if(data){
						aut_zm.style.display="none";
						aut_login.style.display="block";
					}
				})
			}
		})
});

/***************************************/
$.get("singer/gethot",function(data){
	var str="";
	for(var i=0;i<data.length;i++){
		str+="<li><a href='singer/detail?s_id="+data[i].s_id+"'>"+data[i].s_name+"</a></li>"
	}
	$("#hotSinger").html(str);
})



