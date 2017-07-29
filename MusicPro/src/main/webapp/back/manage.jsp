<%@page import="com.yc.mp.entity.aUser"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	aUser user = (aUser) session.getAttribute("loginUser");
	if (user == null) {
		response.sendRedirect("/MusicPro/back/login.jsp");
	}
%>
<base href="/MusicPro/">
<meta charset="UTF-8">
<title>后台管理</title>
<link rel="short icon" href="images/mylogo.png" />
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/admin.css">
</head>

<body class="easyui-layout" id="LayoutBody">
	<div data-options="region:'north'" style="height: 45px;">
		<div id="header">
			<div id="welcome">
				欢迎 <span style="color: green">&nbsp; ${loginUser.username} </span>
				&nbsp;&nbsp;&nbsp;&nbsp; <span id="logout" style="color: red">注销用户</span>
			</div>
		</div>
	</div>
	<div data-options="region:'west',title:'菜单栏',collapsible:false"
		style="width: 180px;">
		<div id="LeftSider">
			<div title="用户管理" data-options="iconCls:'icon-man'">
				<ul class="menutree">
					<li><span>用户维护</span></li>
				</ul>
			</div>
			<div title="歌手管理" data-options="iconCls:'icon-man'">
				<ul class="menutree">
					<li><span>歌手信息</span></li>
					<li><span>新增歌手</span></li>
				</ul>
			</div>
			<div title="歌曲管理" data-options="iconCls:'icon-man'">
				<ul class="menutree">
					<li><span>歌曲信息</span></li>
				</ul>
			</div>
		</div>
	</div>
	<div data-options="region:'center'">
		<div id="main" style="width: 500px; height: 300px;">
			<div title="主界面">
				<h1>欢迎使用心悦后台系统</h1>
			</div>
		</div>
	</div>
	
	<div id="addSong">
		<form action="javascript:void(0)" method="post" enctype="multipart/form-data" id="addform">
			<ul class="add">
				<li>歌曲名：<input type="text" name="name"/></li>
				<li>作品集：<input type="text" name="album"/></li>
				<li>类&nbsp;&nbsp;&nbsp;别：<input type="text" name="type"/></li>
				<li>歌曲地址：<input type="file" name="link_urldata"/></li>
				<li>歌词地址：<input type="file" name="link_lrcdata"/></li>
				<li>背景图片：<input type="file" name="coverdata"/></li>
				<li><input type="submit" value="添加"></li>
			</ul>
		</form>
	</div>

	<div data-options="region:'south'">
		<div id="footer" style="width: 500px; height: 30px;">
			<p>版权所有&copy; Random</p>
		</div>
	</div>


	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/manage.js"></script>
</body>
</html>