//回到顶部
document.getElementsByClassName("body1")[0].onscroll = function() {
	var top = document.getElementsByClassName("body1")[0].scrollTop;

	if (top > 0) {

		document.getElementById("back").style.display = "block";
	} else {

		document.getElementById("back").style.display = "none";
	}
}

// 改变nav的背景
function change_bg(obj) {
	var a = document.getElementById("nv").getElementsByTagName("a");
	for (var i = 0; i < a.length; i++) {
		a[i].className = "";
	}
	obj.className = "n_tj";
}

function change_hd(obj) {
	var h = document.getElementById("head").getElementsByTagName("a");
	for (var i = 0; i < h.length; i++) {
		h[i].className = "";
	}
	obj.className = "first_a";
}

// banner
var timer;
var index = 0;

function changePic(id) {
	if (Number(id)) {
		// 如果传进来的参数是个数字(也就是说鼠标移上某一个li,触发onMouseOver事件)，清除定时器,不再轮播,显示当前图片
		clearInterval(timer);
		index = id;
	} else {
		// 网页加载之后就执行
		// 首先，判定index
		index = index % 8 + 1;// 保证index从1~8
	}

	// 设置图片
	document.getElementById("pic").setAttribute("src",
			"images/banner_" + index + ".jpg");
	document.getElementById("banner").style.backgroundImage = "url(images/"
			+ index + ".jpg)";
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

// 点击切换图片
var dla = document.getElementById("dla");
var dra = document.getElementById("dra");

dla.onclick = function() {
	var pic = document.getElementById("pic");
	clearInterval(timer);
	index--;
	while (index == 0) {
		index = 8;
	}
	pic.setAttribute("src", "images/banner_" + index + ".jpg");
	document.getElementById("banner").style.backgroundImage = "url(images/"
			+ index + ".jpg)";

	// 改变li的class,让其高亮显示
	var ul = document.getElementById("ban_ul");
	var lis = ul.getElementsByTagName("li");
	for (var i = 0; i < lis.length; i++) {
		lis[i].setAttribute("class", "li_out");
		if (i == index - 1) {
			lis[i].setAttribute("class", "li_over");
		}
	}
	start();
}

dra.onclick = function() {
	var pic = document.getElementById("pic");
	clearInterval(timer);
	index++;
	while (index == 9) {
		index = 1;
	}
	pic.setAttribute("src", "images/banner_" + index + ".jpg");
	document.getElementById("banner").style.backgroundImage = "url(images/"
			+ index + ".jpg)";

	// 改变li的class,让其高亮显示
	var ul = document.getElementById("ban_ul");
	var lis = ul.getElementsByTagName("li");
	for (var i = 0; i < lis.length; i++) {
		lis[i].setAttribute("class", "li_out");
		if (i == index - 1) {
			lis[i].setAttribute("class", "li_over");
		}
	}
	start();
}

// 获焦失焦
var ipt = document.getElementById("ipt");
ipt.onfocus = function() {
	if (ipt.placeholder != "") {
		ipt.placeholder = "";
	} else if (ipt.value == "") {
		onblur();
	} else {
		ipt.setAttribute("value", this.value);
	}
}
ipt.onblur = function() {
	ipt.placeholder = "单曲/歌手/专辑/歌单/MV/用户";
}

// 新碟上架
var la = document.getElementById("l_a");
var ra = document.getElementById("r_a");

la.onclick = function() {
	var ul = document.getElementById("roll_ul");
	var sty = getStyle(ul, "transition");
	ul.style.left = "-645px";
	console.log(sty);
	/*
	 * window.setTimeout(function(){ sty="";
	 * 
	 * console.log(sty); ul.style.left="-645px";
	 * 
	 * },1000);
	 */
}
ra.onclick = function() {
	var ul = document.getElementById("roll_ul");
	var sty = getStyle(ul, "transition");
	ul.style.left = "0px";
	console.log(sty);
	/*
	 * window.setTimeout(function(){ sty="";
	 * 
	 * console.log(sty); ul.style.left="0px";
	 * 
	 * },1000);
	 */
}

function getStyle(ele, name) {
	if (ele.currentStyle) { // IE下的处理
		return ele.currentStyle[name];
	} else { // 标准浏览器处理
		return getComputedStyle(ele, false)[name];
	}
}

// 登录框
var other = document.getElementById("other");
var sj = document.getElementById("sj");
var IsMousedown, LEFT, TOP, login;
var mov = document.getElementById("mov");
console.log(mov);
mov.onmousedown = function(e) {
	var e = arguments[0] || window.event;
	login = document.getElementById("aut");
	IsMousedown = true;
	LEFT = e.clientX - parseInt(login.style.left);
	TOP = e.clientY - parseInt(login.style.top);
	document.onmousemove = function(e) {
		var e = arguments[0] || window.event;
		if (IsMousedown) {
			login.style.left = e.clientX - LEFT + "px";
			login.style.top = e.clientY - TOP + "px";
		}
	}
	document.onmouseup = function() {
		IsMousedown = false;
	}
}
var aut = document.getElementById("aut");
var login = document.getElementById("login");
var login1 = document.getElementById("login-1");
var cls = document.getElementById("cls");
login.onclick = function() {
	aut.style.display = "block";
}
login1.onclick = function() {
	aut.style.display = "block";
}
cls.onclick = function() {
	aut.style.display = "none";
}
sj.onclick = function() {
	aut.style.display = "none";
	aut1.style.display = "block";
}
other.onclick = function() {
	aut.style.display = "block";
	aut1.style.display = "none";
}

// 手机号登陆
var sjdl = document.getElementById("sjdl");
var aut1 = document.getElementById("aut-phone");
var IsMousedown, LEFT, TOP, login;
var mov1 = document.getElementById("mov-1");
var cls1 = document.getElementById("cls-1");
var wyyx = document.getElementById("wyyx");
var wydl = document.getElementById("wydl");
console.log(mov1);
mov1.onmousedown = function(e) {
	var e = arguments[0] || window.event;
	login = document.getElementById("aut-phone");
	IsMousedown = true;
	LEFT = e.clientX - parseInt(login.style.left);
	TOP = e.clientY - parseInt(login.style.top);
	document.onmousemove = function(e) {
		var e = arguments[0] || window.event;
		if (IsMousedown) {
			login.style.left = e.clientX - LEFT + "px";
			login.style.top = e.clientY - TOP + "px";
		}
	}
	document.onmouseup = function() {
		IsMousedown = false;
	}
}
sjdl.onclick = function() {
	aut.style.display = "none";
	aut1.style.display = "block";
}
wyyx.onclick = function() {
	aut1.style.display = "block";
}
wydl.onclick = function() {
	aut.style.display = "none";
	aut1.style.display = "block";
}
cls1.onclick = function() {
	aut1.style.display = "none";
}

// 注册
var zc = document.getElementById("aut-zc");
console.log(zc);
var zc1 = document.getElementById("zc-1");
var zc2 = document.getElementById("zc-2");
var cls2 = document.getElementById("cls-2");
var cls3 = document.getElementById("cls-3");
var ret = document.getElementById("ret1");
var ret2 = document.getElementById("ret2");
var next = document.getElementById("next");
var zz = document.getElementById("aut-zz");
var tel = document.getElementById("tel");
var errorr = document.getElementById("err");
var note = document.getElementById("note");
var again = document.getElementById("again");
var zcpwd = document.getElementById("zcpwd");
var yzm = document.getElementById("yzm");
var zcnext = document.getElementById("zcnext");
zc1.onclick = function() {
	zc.style.display = "block";
	aut1.style.display = "none";
	aut.style.display = "none";
}
zc2.onclick = function() {
	zc.style.display = "block";
	aut1.style.display = "none";
	aut.style.display = "none";
}
cls2.onclick = function() {
	zc.style.display = "none";
}
cls3.onclick = function() {
	zz.style.display = "none";
}
ret.onclick = function() {
	zc.style.display = "none";
	aut.style.display = "block";
}

ret2.onclick = function() {
	zz.style.display = "none";
	aut.style.display = "block";
}
var t;
var codenum = '';
next.onclick = function() {
	var mobilevalid = /^(0|86|17951)?(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}$/;
	var pwdid = /^[0-9A-Za-z]{6,}$/;
	if (!mobilevalid.test(tel.value)) {
		alert('请输入正确的手机号码！');
	} else if(!pwdid.test(zcpwd.value)){
		alert('密码格式不正确！');
	}else {
		$.get("send/num?tel="+tel.value, function(data) {
				zc.style.display = "none";
				zz.style.display = "block";
				note.innerHTML = tel.value.substring(0, 3) + "****"
						+ tel.value.substring(7, 11);
				t = setInterval(jishi, 1000);
				again.disabled = true;
				codenum = data.trim();
		});
	}
}

zcnext.onclick=function(){
	if(codenum==yzm.value.trim()){
		yzm.value="";
		alert("恭喜您注册成功！");
		zz.style.display = "none";
		aut1.style.display = "block";
	}else{
		alert("输入验证码错误");
	}
}

again.onclick = function() {
	t = setInterval(jishi, 1000);
	again.disabled = true;
	$.get("send/num?tel="+tel.value, function(data) {
		codenum = data.trim();
	});
}

var miao = 60;
function jishi() {
	miao--;
	again.innerHTML = miao + "s";
	again.style = "background-color:#EEEEEE;color:#BBC4D5";
	if (miao == 0) {
		again.innerHTML = "重新发送";
		again.disabled = false;
		again.style = "background-color:#fff";
		clearInterval(t);
		miao = 60;
	}
}

var IsMousedown, LEFT, TOP, login;
var mov2 = document.getElementById("mov-2");
mov2.onmousedown = function(e) {
	var e = arguments[0] || window.event;
	login = document.getElementById("aut-zc");
	IsMousedown = true;
	LEFT = e.clientX - parseInt(login.style.left);
	TOP = e.clientY - parseInt(login.style.top);
	document.onmousemove = function(e) {
		var e = arguments[0] || window.event;
		if (IsMousedown) {
			login.style.left = e.clientX - LEFT + "px";
			login.style.top = e.clientY - TOP + "px";
		}
	}
	document.onmouseup = function() {
		IsMousedown = false;
	}
}

// 设置移入移出事件
var btmbar = document.getElementsByClassName("btmbar")[0];
btmbar.addEventListener("mouseover", btmover, false);
// btmbar.onmouseover=btmover;
function btmover() {

	btmbar.style.bottom = "0px";
}
btmbar.addEventListener("mouseout", btmOut, false)
// btmbar.onmouseout= btmOut;
function btmOut() {
	btmbar.style.bottom = "-46px";
}

// 对锁加点击事件
var flg = true;

var btn = document.getElementsByClassName("btn")[0];
btn.addEventListener("click", aaa);
function aaa() {
	if (flg) {
		btn.style['background-position-x'] = '-100px';
		btmbar.removeEventListener("mouseout", btmOut)
		btmbar.style.bottom = "0px";
	} else {
		btmbar.addEventListener("mouseout", btmOut, false)
		btn.style['background-position-x'] = '-80px';
	}
	;
	flg = !flg;
}

// 音乐播放器
// 播放/暂停
function playOrPause(obj) {
	if (audio.paused) {
		audio.play();
		run();
	} else {
		audio.pause();
	}
}
function aa() {
	var bb = document.getElementById("ply1");
	bb.style['background-position-y'] = '-165px';
}
function cc() {
	var dd = document.getElementById("ply1");
	dd.style['background-position-y'] = '-204px';
}

// 上一首和下一首
function shang(obj) {
	var ply = document.getElementById("ply1");
	audio.src = "music/兴子 - 蓝瘦香菇.mp3";
	audio.play();
	ply.style['background-position-y'] = '-165px';
	var rdy = document.getElementsByClassName("rdy")[0];
	rdy.style.width = "0";
	run();
	var na = document.getElementById("na");
	var st = document.getElementById("st");
	na.innerText = "蓝瘦香菇";
	st.innerText = "兴子";
}

function xia(obj) {
	var ply = document.getElementById("ply1");
	audio.src = "music/PICO太郎 - Pen Pineapple apple Pen - Hoaprox remix.mp3";
	audio.play();
	ply.style['background-position-y'] = '-165px';
	var rdy = document.getElementsByClassName("rdy")[0];
	rdy.style.width = "0";
	run();
	var na = document.getElementById("na");
	var st = document.getElementById("st");
	na.innerText = " Pen Pineapple apple Pen - Hoaprox remix";
	st.innerText = "PICO太郎";
}

// 进度条
var timeout;
function run() {
	if (audio.paused) {
		setTimeout("run", "100000");
	} else {
		var rdy = document.getElementsByClassName("rdy")[0];
		rdy.style.width = parseInt(rdy.style.width) + 2 + "px";
		var curr = getCurrentTime();
		var myem = document.getElementById("myem");
		myem.innerText = curr;
		if (rdy.style.width == "100%") {
			clearInterval(timeout);
		}
	}

}
timeout = window.setInterval("run()", 1000);

// 获取播放时间
function getCurrentTime() {
	var time = audio.currentTime;
	var minute = parseInt(time / 60);
	var second = parseInt(time % 60);
	var t = toTwo(minute) + ":" + toTwo(second);
	return t;
}
function toTwo(n) {
	return n < 10 ? "0" + n : "" + n;
}

// 音量
function vol() {
	var vo = document.getElementById("volu");
	if (vo.style.display == "none") {
		vo.style.display = "block";
	} else {
		vo.style.display = "none";
	}
}
function volu(type) {
	if (type == "up") {
		var volume = audio.volume + 0.1;
		if (volume >= 1) {
			volume = 1;
		}
		audio.volume = volume;
	} else if (type == 'down') {
		var volume = audio.volume - 0.1;
		if (volume <= 0) {
			volume = 0;
		}
		audio.volume = volume;
	}
	document.getElementById("volu").innerHTML = Math.round(audio.volume * 100);
}

// 快捷键
document.onkeydown = function(event) {
	var e = arguments[0] || window.event;
	var keycode = e.keyCode;
	// 空格 -> 播放暂停
	if (keycode == 32) {
		playOrPause();
		var dd = document.getElementById("ply1");
		dd.style['background-position-y'] = '-204px';
	}
	// ctrl + ↑ -> 音量+
	if (e.ctrlKey && keycode == 38) {
		volu("up");
	}
	if (e.ctrlKey && keycode == 39) {
		audio.currentTime = audio.currentTime + 5;
	}
	// ctrl + ↓ -> 音量-
	if (e.ctrlKey && keycode == 40) {
		volu("down");
	}
}
