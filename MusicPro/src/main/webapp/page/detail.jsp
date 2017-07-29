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
	<%
		Object user = session.getAttribute("userinfo");
		if (user==null||user=="") {
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
		<input type="hidden" id="rusid" value="${userinfo.usid}" >
		<input type="hidden" id="usid" value="${selectinfo.usid}" >
		<dl class="main">
			<dt>
				<input type="hidden" id="upic" value="${selectinfo.upic}">
				<img src="" />
			</dt>
			<dd>
				<div class="ztop">
					<input type="hidden" id="usex" value="${selectinfo.usex}">
					<span id="getname" class="gn">${selectinfo.uname}
						<img src="" id="useximg"></span> 
						<button id="addguan"></button>
					<hr />
				</div>
				<ul class="zmut">
					<li class="dong"><a href="/MusicPro/page/detail.jsp#dongtai"> <strong>3</strong> <span>动态</span>
					</a></li>
					<li class="guan"><a href="/MusicPro/page/detail.jsp#follow"> <strong id="follownum"></strong> <span>关注</span>
					</a></li>
					<li class="fans"><a href="/MusicPro/page/detail.jsp#fans"> <strong id="fansnum"></strong> <span>粉丝</span>
					</a></li>
				</ul>
				<div class="zbot">
					<input type="hidden" id="uaddr" value="${selectinfo.uaddr}">
					<input type="hidden" id="ubri" value="${selectinfo.ubri}">
					<input type="hidden" id="unote" value="${selectinfo.unote}">
					<p id="uaddrSpan"></p>
					<p id="ubriSpan"></p>
					<p id="unoteSpan"></p>
				</div>
			</dd>
		</dl>
		<div class="dongtai">
			<a name="dongtai"></a>
			<span>他的动态</span>
			<div class="dongs">
				<ul id="dongUl">
				</ul>
			</div>
		</div>
		<div class="gedan">
			<span>他创建的歌单</span>
			<div class="xians">
				<a href=""> <img src="images/cjgedan.png" />
				</a> <br /> <a title="random喜欢的音乐" href="" class="ti">${selectinfo.uname}喜欢的音乐</a>

			</div>
		</div>
		
		<div class="follow">
			<a name="follow"></a>
			<span>他的关注</span>
			<div class="focu">
				<ul id="focusUl">
				</ul>
			</div>
		</div>
		
		<div class="follow">
			<a name="fans"></a>
			<span>他的粉丝</span>
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

	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/detail.js"></script>
</body>
</html>
