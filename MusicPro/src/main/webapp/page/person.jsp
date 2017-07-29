<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<base href="/MusicPro/">
<meta charset="utf-8">
<title>心悦音乐 听见好时光</title>
<link rel="short icon" href="images/mylogo.png" />
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<!--引入外部css-->
<link rel="stylesheet" href="css/basic.css" />
<link rel="stylesheet" href="css/person.css" />
</head>

<body>
	<%
		Object user = session.getAttribute("userinfo");
		if (user == null || user == "") {
			response.sendRedirect("/MusicPro/index.jsp");
		}
	%>
	<!--注意，以下块标签为html5新增加的语义标签-->
	<header>
		<p>听喜欢的音乐，做想做的事，过想过的生活</p>
		<ul>
			<li><a href="/MusicPro/page/person.jsp" id="info">${userinfo.uname}</a>
			</li>
		</ul>
	</header>
	<menu>
		<ul>
			<li><a href="#">发现音乐</a></li>
			<li><a href="">排行榜</a></li>
			<li><a href="">歌单</a></li>
			<li><a href="/MusicPro/page/singerlist.jsp">歌手</a></li>
		</ul>

	</menu>
	<article>
		<input type="hidden" id="usid" value="${userinfo.usid}">
		<dl class="main">
			<dt>
				<input type="hidden" id="upic" value="${userinfo.upic}"> <img
					src="" />
			</dt>
			<dd>
				<div class="ztop">
					<input type="hidden" id="usex" value="${userinfo.usex}"> <span
						id="getname" class="gn">${userinfo.uname} <img src=""
						id="useximg"></span> <a href="javascript:void(0)" class="edit"
						id="edit">编辑个人资料</a>
					<hr />
				</div>
				<ul class="zmut">
					<li class="dong"><a href="/MusicPro/page/person.jsp#dongtai">
							<strong>3</strong> <span>动态</span>
					</a></li>
					<li class="guan"><a href="/MusicPro/page/person.jsp#follow">
							<strong id="follownum"></strong> <span>关注</span>
					</a></li>
					<li class="fans"><a href="/MusicPro/page/person.jsp#fans">
							<strong id="fansnum"></strong> <span>粉丝</span>
					</a></li>
				</ul>
				<div class="zbot">
					<input type="hidden" id="uaddr" value="${userinfo.uaddr}">
					<span id="uaddrSpan"></span>
				</div>
			</dd>
		</dl>
		<div class="dongtai">
			<a name="dongtai"></a> <span>我的动态</span><b class="add"
				onclick="openAdd()">+</b>
			<div class="dongs">
				<ul id="dongUl">
				</ul>
			</div>
		</div>
		<div class="gedan">
			<span>我创建的歌单</span>
			<div class="xians">
				<a href=""> <img src="images/cjgedan.png" />
				</a> <br /> <a title="random喜欢的音乐" href="" class="ti">${userinfo.uname}喜欢的音乐</a>

			</div>
		</div>

		<div class="follow">
			<a name="follow"></a> <span>我的关注</span>
			<div class="focu">
				<ul id="focusUl">
				</ul>
			</div>
		</div>

		<div class="follow">
			<a name="fans"></a> <span>我的粉丝</span>
			<div class="focu">
				<ul id="fansUl">
				</ul>
			</div>
		</div>


	</article>
	<footer>
		<p>
			Copyright &copy; 20017-2030&nbsp;&nbsp;<a href="">心悦科技团队&nbsp;
				版权所有</a>
		</p>
		<p>地址：湖南工学院D6-3楼 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 联系方式： 18216062440</p>
	</footer>

	<div id="addDynamic" style="display: none;">
		<form id="formData" action="javascript:void(0)" method="post" style="width:90%; margin-top:20px;">
			<input type="hidden" name="d_usid" value="${userinfo.usid}">
			<span>内容：</span><textarea rows="3" cols="20" name="d_thing"></textarea><br/>
			<input type="submit" style="float: right;" value="发布">
		</form>
	</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/person.js"></script>
</body>
</html>
