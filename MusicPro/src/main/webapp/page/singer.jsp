<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<base href="/MusicPro/">
<meta charset="utf-8">
<title>心悦音乐 听见好时光</title>
<link rel="short icon" href="images/mylogo.png" />
<!--引入外部css-->
<link rel="stylesheet" href="css/basic.css" />
<link rel="stylesheet" href="css/person.css" />
</head>

<body>
	<!--注意，以下块标签为html5新增加的语义标签-->
	<header>
		<p>听喜欢的音乐，做想做的事，过想过的生活</p>
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
		<input type="hidden" id="s_id" value="${singerinfo.s_id}" >
		<dl class="main">
			<dt>
				<input type="hidden" id="upic" value="${singerinfo.s_pic}">
				<img src="" />
			</dt>
			<dd>
				<div class="ztop">
					<span id="getname" class="gn">${singerinfo.s_name}</span>
					<hr />
				</div>
				<div class="zbot">
					<input type="hidden" id="s_show" value="${singerinfo.s_show}">
					<span id="s_showSpan"></span>
				</div>
			</dd>
		</dl>
		<div class="gedan" >
			<span>歌曲</span>
			<div class='xians' id="gequ">
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

	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/singer.js"></script>
</body>
</html>
