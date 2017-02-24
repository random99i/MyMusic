var jbphone = $("#jbphone");
var send_code = $("#send_verify_code");
var validate = $("#validate");

var password = $("#password");
var pw = $("#pw");

var over = $("#go_step_3");

function phonebrul() {
	$.get("auser/checkphone?jbphone="+jbphone.val(),function(data){
		if(data){
			$("#telerr").attr("style","color:green");
			$("#telerr").text("√");
		}else{
			$("#telerr").attr("style","color:red");
			$("#telerr").text("× 本系统不存在此手机号注册");
		}
	})
}

var code = "";
var sin = 60;
var tel = jbphone.val();
function sendMessage(){
	if("√"!=$("#telerr").text()){
		$.messager.alert('温馨提示','请输入正确您的手机号','info');
		return;
	}
	$.get("send/num?tel="+ tel,function(data){
		$.messager.alert('温馨提示','发送成功','info');
		code = data.trim();
		alert(code);
		time = setInterval(setTime, 1000);
	})
}

function setTime(){
	sin--;
	send_code.text(sin+"s");
	send_code.attr("disabled","true");
	send_code.attr("style","background-color:#BBC4D5");
	if(sin == 0){
		send_code.text("重新发送");
		send_code.removeAttr("disabled");
		send_code.attr("style","background-color:#f60;");
		clearInterval(time);
		sin=60;
	}
}

function next(){
	if(validate.val().trim()==code){
		$("#step_1").attr("style","display:none");
		$("#step_2").attr("style","display:block;margin-left:200px;");
	}else{
		$.messager.alert('警告','验证码输入不正确','warning');
	}
}

function relpwburl(){
	var reg = /^[A-Za-z0-9]{6,16}$/;
	if(!reg.test(password.val())){
		 $.messager.alert('警告','密码必须由 6-16位字母、数字组成','warning');   
		 over.attr("disabled","true");
	}else{
		over.removeAttr("disabled");
	}
}

function checkpwd(){
	if(password.val().trim()!=pw.val().trim()){
		 $.messager.alert('警告','两次输入密码不一致','warning'); 
		 over.attr("disabled","true");
	}else{
		relpwburl();
	}
}

function gg(){
	$.get("auser/modifypwd?jbphone="+tel+"&password="+password.val(),function(data){
		if(data){
			$.messager.alert('温馨提示','密码修改成功，即将跳转至登录界面','info');
			location.href="http://localhost:8080/MusicPro/page/login.jsp";
		}
	});
}