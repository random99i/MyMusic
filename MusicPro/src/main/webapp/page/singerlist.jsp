<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<base href="/MusicPro/">
<meta charset="utf-8">
<title>心悦音乐 听见好时光</title>
<link rel="short icon" href="images/mylogo.png" />
<!--引入外部css-->
<link rel="stylesheet" href="css/basic.css" />
<link rel="stylesheet" href="css/singerlist.css" />
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
		<div class="content_left">
			<div class="n-sgernav">
			<h2 class="tit">搜索</h2>
				<div class="blk">
					<ul class="f-cb">
						<li id="selectid"><a class="cat-flag" href="javaScript:void(0)">A</a> <a class="cat-flag"
							href="javaScript:void(0)">B</a> <a class="cat-flag" href="javaScript:void(0)">C</a> <a
							class="cat-flag" href="javaScript:void(0)">D</a> <a class="cat-flag" href="javaScript:void(0)">E</a><a
							class="cat-flag" href="javaScript:void(0)">F</a> <a class="cat-flag" href="javaScript:void(0)">G</a>
							<a class="cat-flag" href="javaScript:void(0)">H</a><a class="cat-flag" href="javaScript:void(0)">I</a>
							<a class="cat-flag" href="javaScript:void(0)">J</a> <a class="cat-flag" href="javaScript:void(0)">K</a>
							<a class="cat-flag" href="javaScript:void(0)">L</a> <a class="cat-flag" href="javaScript:void(0)">M</a>
							<a class="cat-flag" href="javaScript:void(0)">N</a><a class="cat-flag" href="javaScript:void(0)">O</a>
							<a class="cat-flag" href="javaScript:void(0)">P</a> <a class="cat-flag" href="javaScript:void(0)">Q</a><a
							class="cat-flag" href="javaScript:void(0)">R</a> <a class="cat-flag" href="javaScript:void(0)">S</a>
							<a class="cat-flag" href="javaScript:void(0)">T</a><a class="cat-flag" href="javaScript:void(0)">U</a>
							<a class="cat-flag" href="javaScript:void(0)">V</a> <a class="cat-flag" href="javaScript:void(0)">W</a>
							<a class="cat-flag" href="javaScript:void(0)">Z</a>
						</li>
					</ul>
				</div>

			</div>
		</div>
		<div class="content_right">
			<div class="g-wrap1">
				<div class="g-wrap12">
					<div class="u-title-1">
						<h3>
							<span class="f-ff2">所有歌手</span>
						</h3>
						<div class="more">更多&gt;</div>
					</div>
				</div>
				<div class="m-sgerlist">
					<ul class="m-cvrlst" id="listUl">
					</ul>
				</div>
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
	<script type="text/javascript" src="js/singerlist.js"></script>
</body>
</html>
