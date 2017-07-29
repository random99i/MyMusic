<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<base href="/MusicPro/">
<meta charset="utf-8">
<title>心悦音乐 听见好时光</title>
<link rel="short icon" href="images/mylogo.png" />
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<!--引入外部css-->
<link rel="stylesheet" href="css/basic.css" />
<link rel="stylesheet" href="css/setting.css" />
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
		<div class="n-base">
			<form action="" method="post" id="formData" enctype="multipart/form-data">
			<br />
				昵称： ${userinfo.uname}
				<input type="hidden" name="uname" value="${userinfo.uname}" id="uname">
				<br />
				<br />


				<div class="itm f-cb">
					<label class="lab">介绍：</label>
					<br /><br />
					<div class="u-txtwrap">
						<textarea name="unote" id="signature" class="u-txt area" maxlength="140" placeholder="字数不能超过140字"></textarea>
					</div>
				</div>
				<br /> 性别：<input type="radio" name="usex" checked="true" value="男"/>&nbsp;男&nbsp;&nbsp;&nbsp;<input
					type="radio" name="usex" value="女"/>&nbsp;女&nbsp;&nbsp;&nbsp;<input
					type="radio" name="usex" value=""/>&nbsp;保密<br />
				<div class="year">
					&nbsp;&nbsp;&nbsp;&nbsp;生日：<input id="dt" type="text" name="ubri">
				</div>
				<div class="diqu">
					<table>
						<tr>
							<td>地区：</td>
							<td>
								<select id="s_province" name="s_province" style="width: 101px; height: 30px;"></select> 
								<select id="s_city" name="s_city" style="width: 101px; height: 30px;"></select>
								<input type="hidden" name="uaddr" id="uaddr">
							</td>
						</tr>
					</table>

				</div>
				<div class="itm ft">
					<a href="javascript:void(0)" class="baocun" id="keep"> <img
						src="images/keep.jpg" />
					</a>
				</div>
				<div class="avatar">
					<img src="images/person.jpg" id="pic"/>
					<input id="upload" class="upload" type="file" name="upicdata" onchange="changepic(this)"/>
				</div>
		</div>
		</form>
		</div>
	</article>
	<footer>
		<p>
			Copyright &copy; 20017-2030&nbsp;&nbsp;<a href="">心悦科技团队&nbsp;
				版权所有</a>
		</p>
		<p>地址：湖南工学院D6-3楼 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 联系方式： 18216062440</p>
	</footer>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/setting.js"></script>
</body>
</html>
