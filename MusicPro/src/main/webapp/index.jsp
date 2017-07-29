·<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/index.css" />

</head>

<body>
	<!--注意，以下块标签为html5新增加的语义标签-->
	<header>
		<p>听喜欢的音乐，做想做的事，过想过的生活</p>
		<ul>
			<li>
				<input type="hidden" id="code"  value="<%if(session.getAttribute("userinfo")!=""){%>${userinfo.uname}<%}%>"/>
				<a href="JavaScript:void(0)" id="login">请登录</a>
				<a href="JavaScript:void(0)" id="info"></a>
				<a href="JavaScript:void(0)" id="logout" style="margin-left: 15px;"></a>
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
		<div id="banner">
			<div id="banner_t">
				<a href=""><img src="images/banner_1.jpg" alt="图片" title="图片"
					id="pic" /></a>
				<ul id="ban_ul">
					<a href=""><li onMouseOver="changePic(1)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(2)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(3)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(4)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(5)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(6)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(7)" onMouseOut="start()"></li></a>
					<a href=""><li onMouseOver="changePic(8)" onMouseOut="start()"></li></a>
				</ul>
			</div>
		</div>
		<div class="bottomdiv">
			<div class="bottom_left">
				<span>热门歌手 </span>
				<hr />
				<ul id="hotSinger">
				</ul>
			</div>

			<div class="bottom_right">
				<span class="right_span">热门推荐</span> <a href="" class="more_class">&gt;&gt;MORE</a>
				<hr />
				<ul>
					<li><a href="">我是你爱情的终点，爱你宠你念你护你<span>雾与晨</span></a></li>
					<li><a href="">第89届奥斯卡获奖名单及历届最佳原创歌曲<span>掌柜阿俊</span></a></li>
					<li><a href="">我是你爱情的终点，爱你宠你念你护你<span>雾与晨</span></a></li>
					<li><a href="">第89届奥斯卡获奖名单及历届最佳原创歌曲<span>掌柜阿俊</span></a></li>
					<li><a href="">我是你爱情的终点，爱你宠你念你护你<span>雾与晨</span></a></li>
					<li><a href="">第89届奥斯卡获奖名单及历届最佳原创歌曲<span>掌柜阿俊</span></a></li>
					<li><a href="">我是你爱情的终点，爱你宠你念你护你<span>雾与晨</span></a></li>
					<li><a href="">第89届奥斯卡获奖名单及历届最佳原创歌曲<span>掌柜阿俊</span></a></li>
					<li><a href="">我是你爱情的终点，爱你宠你念你护你<span>雾与晨</span></a></li>
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

	<div class="auto" id="aut-phone" style="top:100px; left: 400px;display: none;">
		<div class="bar" id="mov-1">
			<div class="tt">手机号登录</div>
		</div>
		<div class="cnt">
			<div class="con">
				<div class="n-log">
					<div>
						<input type="text" class="ipt" placeholder="请输入手机号" id="dltel" />
					</div>
					<div class="mgt-1">
						<input type="password" class="ipt" placeholder="请输入密码" id="dlpwd" />
					</div>
					<div class="err" style="display: none;">
						<i></i>
					</div>
					<div class="mgt-1">
						<label class="lab"> <input type="checkbox"
							checked="checked" class="u-au" /> 自动登录 
							<a href="javascript:void(0)" class="forget">忘记密码？</a>
						</label>
					</div>
					<div class="mgt-2">
						<a href="javascript:void(0)" class="u-dl"><i id="godl">登&nbsp;&nbsp;录</i></a>
					</div>
				</div>
				<div class="con-b" id="ret">
					<a href="javascript:void(0)" class="con-a" id="go-zc">没有账号？免费注册></a>
				</div>
			</div>
		</div>
		<span class="cls" title="点击关闭" id="cls-1">×</span>
	</div>
	<div class="auto-1" style="display:none;">&nbsp;</div>
    
    <div class="auto" id="aut-zc" style="top:100px;left:400px;display:none;">
    	<div class="bar" id="mov-2">
        	<div class="tt">手机号注册</div>
        </div>
        <div class="cnt">
        	<div class="con">
            	<div class="n-log">
                手机号：<br /><br />
                	<div><input type="tel" class="ipt" placeholder="请输入手机号" required pattern="^(0|86|17951)?(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}" id="zctel"/></div><br />
                密码：<br />    
                	<div class="mgt-1"><input type="password" class="ipt" placeholder="设置登录密码，不少于6位" id="zcpwd"/></div>
                
                    <div class="err" style="display:none;"><i></i></div>
                    
                    <div class="mgt-2">
                    	<a href="javascript:void(0)" class="u-dl" id="next"><i>下一步</i></a>
                    </div>
                </div>
                <div class="con-b" id="ret">
                	<a href="javascript:void(0)" class="con-r" id="re_login" style="color:#666;">< 返回登录</a>
                </div>
            </div>
        </div>
        <span class="cls" title="点击关闭" id="cls-2">×</span>
    </div>
    <div class="auto-1" style="display:none;">&nbsp;</div>
    
    <div class="auto" id="aut-zz" style="top:100px;left:400px;display:none;">
    	<div class="bar" id="mov-3">
        	<div class="tt">手机号注册</div>
        </div>
        <div class="cnt">
        	<div class="con">
            	<div class="n-log">
            	你的手机号：	<span id="note" style="font-weight: bold;"></span><br />
              	<p style="margin-top:5px;color: gray;">为了安全,我们会给您发送短信验证码</p>
                	<div><input type="text" id="yzm" placeholder="请输入验证码"></div>
                	<button class="f-hide" id="again" >重新发送</button>
                <br />
                <br />    
                	<div class="mgt-1"></div>
                
                    <div class="err" style="display:none;"><i></i></div>
                   
                    <div class="mgt-2">
                    	<a href="javascript:void(0)" class="u-dl" id="zcnext"><i>下一步</i></a>
                    </div>
                </div>
                <div class="con-b" id="ret">
                	<a href="javascript:void(0)" class="con-r" id="re2_login" style="color: #666;">< 返回登录</a>
                </div>
            </div>
        </div>
        <span class="cls" title="点击关闭" id="cls-3">×</span>
    </div>
    
    <div class="auto" id="aut-zm" style="top:100px;left:400px;display: none;">
    	<div class="bar" id="mov-4">
        	<div class="tt">注册昵称</div>
        </div>
        <div class="cnt">
        	<div class="con">
            	<div class="n-log">
            	请输入您的昵称：<br />
                	<div><input type="text" id="zcnc" placeholder="请输入您的昵称"></div>
                <br />
                <br />    
                	<div class="mgt-1"></div>
                
                    <div class="err" style="display:none;"><i></i></div>
                   
                    <div class="mgt-2">
                    	<a href="javascript:void(0)" class="u-dl" id="zccg"><i>注册</i></a>
                    </div>
                </div>
                <div class="con-b" id="ret">
                	<a href="javascript:void(0)" class="con-r" id="re3_login" style="color: #666;">< 返回登录</a>
                </div>
            </div>
        </div>
        <span class="cls" title="点击关闭" id="cls-4">×</span>
    </div>
    <div class="auto-1" style="display:none;">&nbsp;</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>
