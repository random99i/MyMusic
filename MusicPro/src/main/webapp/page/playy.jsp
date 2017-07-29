<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<base href="/MusicPro/" />
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no"/>
    <title>心悦音乐 听你所爱</title>
    <link rel="short icon" href="images/mylogo.png" />
    <link rel="stylesheet" href="res/style.css"/>
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
     <script src="js/lib/zepto.min.js"></script>
    <script src="js/lib/underscore-min.js"></script>
</head>
<body>
<header>
	<input type="hidden" id="s_id" value="${singerinfo.s_id}" >
    <div class="playing_info">
        <marquee scrollamount="1" behavior="alternate" direction= left width="100%" height="20px">
            <span class="songName">心悦音乐</span>  <span class="singer">听你所爱</span>
        </marquee>
    </div>
</header>
<div class="content">
    <div class="panelGroup">
        <div class="panel playlist">
            <ul class="music_list" id="music_list">
                <li style="text-align: center;display: block;">加载音乐列表...</li>
            </ul>
        </div>
        <div class="panel lyric">
            <div class="lyric_wrap">
                <ul id="lyric">
                    <li>心悦音乐</li>
                </ul>
            </div>
        </div>
        <div class="panel album">
            <div class="album_art">
                <img class="cover"/>
            </div>
            <div class="music_info"></div>
        </div>
    </div>
</div>
<footer>
    <audio id="player" preload="auto"></audio>
    <div id="playerProgress">
        <div class="time currentTime">00:00</div>
        <div class="progressbar" id="progressbar"><span class="bar"></span></div>
        <div class="time totalTime">00:00</div>
    </div>
		<div id="playerCtrl">
			
			<div class="lef">
				<a href="javascript:;" hidefocus="true" data-action="mode" class="loop" title="循环"></a>
				<a href="javascript:;" hidefocus="true" data-action="mode" class="random" title="随机" style="display: none"></a>
				<a href="javascript:;" hidefocus="true" data-action="mode" class="single" title="单曲循环" style="display: none"></a>
				<!--<div class="random" style="display: none;">随机</div>
				<div class="single" style="display: none;">单曲循环</div>
				 <div class="single" style="display: none;">循环</div> -->
			</div>
			<div>
				<a class="button prev"></a>
			</div>
			<div>
				<a class="button play"></a>
			</div>
			<div>
				<a class="button next"></a>
			</div>
			
			<div>
			<a class="button vol" ></a>
				<div class="m-vol" style="visibility:hidden;"id="auto-id-LTDTk0hlnAKVlSaK">
					<div class="barbg"></div>
					<div class="vbg j-t" id="auto-id-Rn3dOTLEsWW9BVK6">
					<div class="curr j-t" >
						<span class="btn f-alpha j-t" ></span>
					</div>
					
				</div>
				
			</div>
			</div>
			<div>
				<a class="button collect"></a>
			</div>
		</div>
	</footer>
<script type="text/html" id="music_list_item">
    <li>
        <div class="left">
            <div class="songName">{{name}}</div>
            <div class="singer">{{singer}}</div>
        </div>
        <div class="right">
            <span class="stateIcon"></span>
        </div>
    </li>
</script>
<script type="text/html" id="music_info">
    <ul>
        <li class="title">{{name}}</li>
        <li class="type">{{type}}</li>
        <li>演唱：{{singer}}</li>
        <li>专辑：{{album}}</li>
    </ul>
</script>
<script src="js/progessbar.js"></script>
<script src="js/player.js"></script>
<script src="js/slidePage.js"></script>
<script src="js/Lyrics.js"></script>
<script src="js/main.js"></script>
</body>
</html>