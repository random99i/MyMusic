<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="/MusicPro/">
<title>忘记密码</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/forgetPassword.css">
</head>
<body>
	<div id="body" >

    <h2>忘记密码</h2>
	
    <!-- step_1 -->
    <form data-content="1" autocomplete="off"  style="width:600px;" action="javascript: void(0)" id="step_1">
        <div class="input">
            <label for="account">登录账户</label>
            <p>
                <input name="jbphone" value="18216062440" id="jbphone" placeholder="请输入手机号" tabindex="1" onblur="phonebrul()"><span id="telerr"></span>
            </p>
        </div>
        <div class="input" id="validatecode">
            <label for="validate">验证码</label>
            <p>
                <input class="input" name="validate" id="validate" placeholder="请输入验证码" tabindex="2"><button id="send_verify_code" tabindex="2" onclick="sendMessage()">发送验证码</button>
                <span></span>
            </p>
        </div>
        <div class="action">
        <button id="go_step_2" tabindex="3" onclick="next()">下一步</button>
            如找回密码失败，请在工作日（10:00-17:00） <a href="https://www.github.com/random99i" target="_blank">联系在线客服</a>
        </div>
    </form>

    <!-- setp_2 -->
    <form action="javascript: void(0)" data-content="2" autocomplete="off" style="width:600px;display: none;" id="step_2">
        <div class="input">
            <label for="pw">设置密码</label>
            <p>
                <input name="password" id="password" placeholder="请输入6-16位英文、数字格式密码" tabindex="3" type="password" onblur="relpwburl()" required="required">
                <span></span>
            </p>
        </div>
        <div class="input">
            <label for="pw2">确认密码</label>
            <p>
                <input name="pw" id="pw" placeholder="请重复输入登录密码" tabindex="4" type="password" onblur="checkpwd()" required="required">
                <span></span>
            </p>
        </div>
        <div class="action">
            <button id="go_step_3" tabindex="5" onclick="gg()" disabled="disabled">完成设置</button>
        </div>
    </form>
	
</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/forgetPassword.js"></script>
</body>
</html>