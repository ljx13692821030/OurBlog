<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页_杨青个人博客 - 一个站在web前端设计之路的女技术员个人博客网站</title>
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<style type="text/css">
        .imghead{
            width: 50px;
            height:50px;
            margin-left: 10px;
           	margin-top: 5px; 
            cursor: auto;
            background-image: url("img/2.jpg");
            background-repeat:no-repeat;
            background-size:80px,80px;
            background-position: center;
            border-radius:50%;
        }
        .imghead .msg{
            display: none;
            width: 80px;
            height: 30px;
            float: left;
            line-height: 30px;
            text-align: center;
            border: 1px solid #E9E9E9 ;
            background-color: #FFFFFF;
            z-index: 2;
            position: relative;

        }
        .imghead .msg a{
        	color:#000000;
        	text-decoration: none;
            cursor: pointer;

        }
        .imghead .msg a:hover{
        	text-decoration: none;
            cursor: pointer;

        }
        .clearfix:after{
        content:"0";
        display: block;
        clear: both;
        visibility: hidden;
        height: 0;
        }
        .imghead:hover .msg{
            display: block;
        }

	
	.logo li img:hover{
		transform: scale(1.05);
	}
	
	
	.article-info-box { padding-right:20px;}
	.article-info { margin-right: 20px;}
	.follow-nickName { color: red;}
	.hide-article-box { text-align: center; background-image: linear-gradient(-180deg,rgba(248, 248, 255, 0) 0%,rgb(248, 248, 255)70%)}
	.btn { display:inline-block; margin:60px 0px 6px; width:100px; height:40px; border:1px solid red; color: red; line-height:40px; border-radius:10px}
	.btn:hover {color: white; background-color: red}
	.article_content { margin:0px; overflow:hidden;}
</style>

<style type="text/css">
#ad{margin: 0; padding: 0;}
#demo li:nth-of-type(1) img{ transform: translate(-210px);}
#demo li:nth-of-type(2) img{ transform: translate(-180px);}
#demo li:nth-of-type(3) img{ transform: translate(-380px);}
#demo li:nth-of-type(4) img{ transform: translate(-450px);}
#demo li:nth-of-type(5) img{ transform: translate(-320px);}
#demo{width:300px;height:194px;margin:10px 0px;padding:0px 2px;}
#demo img{width: 290px; height: 194px; max-width: 820px;}
#demo li{float:left;position:relative;width:0px;height:100%;overflow:hidden;cursor:pointer; transition:0.5s; transform-origin:bottom;filter:alpha(opacity=50);opacity:0.5;}
#demo li img{transition:1.2s;}
#demo li a{display:block;}
#demo li div{margin-bottom:0px; position:absolute;bottom:0;left:0;width:100%;background:#000;line-height:32px;filter:alpha(opacity=70);opacity:0.7;text-indent:2em;}
#demo li div a{color:#FFF;text-decoration:none;}
#demo li div a:hover{color:#F00;text-decoration:none;}
#demo li.active{cursor:pointer; transform:scale(1.02,1.08); z-index:3;width:290px;filter:alpha(opacity=100);opacity:1;}
#demo li.active img{transform:translate(0px);}
#demo li:nth-of-type(1){transform-origin:bottom left;}
#demo li:nth-of-type(5){transform-origin:bottom right;}

</style>
<script type="text/javascript" src="js/jquery.indexSlidePattern.js"></script>
<script language="javascript">
$(document).ready(function(e){
	  var opt	=	{
		"speed"	:	"fast"		,	//变换速度,三速度可选 slow,normal,fast;
		"by"	:	"mouseover"		,	//触发事件,click或者mouseover;
		"auto"	:	true		,	//是否自动播放;
		"sec"	:	3000	 		//自动播放间隔;
	  };
      $("#demo").IMGDEMO(opt);    
});
</script>

</head>
<body>
<%
String bloger = request.getParameter("bolger");
String userName = (String)request.getSession().getAttribute("userName");
String all = request.getParameter("all");
%>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/"><%=bloger %>的个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="homePage.jsp">首页</a></li>
      <li><a href="articleList.jsp">文章</a></li>
      <li><a href="list.html">留言</a></li>
      <li><a href="aboutMe.html">关于我</a></li>
      <li><a href="manage.jsp">管理博客</a></li>      
      <li>
		<div class="imghead clearfix" >						
			<div class="msg" style="margin-top: 50px;">
				<a href="info.html">个人中心</a>
			</div>
			<div class="msg">
				<a href="#">退出</a>
			</div>										
		</div>

      </li>
    </ul>
</nav>
</header>
<article>
  <aside class="l_box">
      <div class="about_me">
        <h2>关于我</h2>
        <ul>
          <i><img src="img/4.jpg"></i>
          <p><b>杨青</b>，一个80后草根女站长！09年入行。一直潜心研究web前端技术，一边工作一边积累经验，分享一些个人博客模板，以及SEO优化等心得。</p>
        </ul>
      </div>
      <div class="fenlei">
      	<h2>1</h2>
      	<div style="float: left; padding:10px 15px">
      		<label>访问量</label><br>
      		<label>1</label>
      	</div>
      	<div style="float: left; padding:10px 15px">
      		<label>文章数</label><br>
      		<label>1</label>
      	</div>
      	<div style="float: left; padding:10px 15px">
      		<label>点赞数</label><br>
      		<label>1</label>
      	</div>
      	<div style="float: left; padding:10px 15px">
      		<label>评论数</label><br>
      		<label>1</label>
      	</div>
      </div>
      <div class="wdxc" id="ad">
        <h2>广告</h2>
			<ul id="demo">
				<li class="active">
					<a href="http://sc.chinaz.com/jiaoben/"><img src="img/1.jpg"  /></a>
					<div><a href="http://sc.chinaz.com/jiaoben/">标题1</a></div>
				</li>
				<li>
					<a href="http://sc.chinaz.com/jiaoben/"><img src="img/2.jpg"  /></a>
					<div><a href="http://sc.chinaz.com/jiaoben/">标题2</a></div>
				</li>
				<li>
					<a href="http://sc.chinaz.com/jiaoben/"><img src="img/3.jpg"  /></a>
					<div><a href="http://sc.chinaz.com/jiaoben/">标题3</a></div>
				</li>
				<li>
					<a href="http://sc.chinaz.com/jiaoben/"><img src="img/4.jpg"  /></a>
					<div><a href="http://sc.chinaz.com/jiaoben/">标题4</a></div>
				</li>
				<li>
					<a href="http://sc.chinaz.com/jiaoben/"><img src="img/5.jpg"  /></a>
					<div><a href="http://sc.chinaz.com/jiaoben/">标题5</a></div>
				</li>
			</ul>
      </div>
      <div class="search">
        <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
          <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
          <input name="show" value="title" type="hidden">
          <input name="tempid" value="1" type="hidden">
          <input name="tbname" value="news" type="hidden">
          <input name="Submit" class="input_submit" value="搜索" type="submit">
        </form>
      </div>
      <div class="fenlei">
        <h2>文章分类</h2>
        <ul>
          <li><a href="/">学无止境（33）</a></li>
          <li><a href="/">日记（19）</a></li>
          <li><a href="/">慢生活（520）</a></li>
          <li><a href="/">美文欣赏（40）</a></li>
        </ul>
      </div>
      <div class="tuijian">
        <h2>评论排行</h2>
        <ul>
          <li><a href="/">你是什么人便会遇上什么人</a></li>
          <li><a href="/">帝国cms 列表页调用子栏目，没有则不显示栏目名称</a></li>
          <li><a href="/">第二届 优秀个人博客模板比赛参选活动</a></li>
          <li><a href="/">个人博客模板《绅士》后台管理</a></li>
          <li><a href="/">你是什么人便会遇上什么人</a></li>
          <li><a href="/">帝国cms 列表页调用子栏目，没有则不显示栏目名称</a></li>
          <li><a href="/">第二届 优秀个人博客模板比赛参选活动</a></li>
          <li><a href="/">个人博客模板《绅士》后台管理</a></li>
        </ul>
      </div>
  </aside>
  <main class="r_box">
  <li>
  <div class="acticle-header-box">
  	<div class="article-header">
  		<div class="article-title-box">
  		<h1 class="title-article">我是一条鱼</h1>
  		</div>
  		<div class="article-info-box">
  			<div class="article-bar-top">
  				<span class="article-info">2018年10月7日  14:59:59</span>
  				<a class="article-info follow-nickName" href="aboutme.jsp?username=kong" target="_blank">空</a>
  				<span class="article-info">阅读数:998</span>
  				<span class="article-info">个人分类:歌词</span>
  			</div>
  		</div>
  		<hr>
  	</div>
  </div>
	<article style="width:100%">
	<!-- 句号分隔，每个p标签放置一句话
		这里是文章内容
	 -->
		<div class="article_content" id="article_content">
			<%
				if(all==null||!all.equals("true")){
			%>
			<div class="htmledit_views" style="height: 650px;">
			<%}else{ %>
			<div class="htmledit_views" style="height: auto;">
			<%} %>
				<p>
					<span>
						儿时凿壁偷了谁家的光
					</span>
				</p>
				<p>
					<span>						
						宿昔不梳 一苦十年寒窗
					</span>
				</p>
				<p>
					<span>						
						如今灯下闲读 红袖添香
					</span>
				</p>
				<p>
					<span>						
						半生浮名只是虚妄
					</span>
				</p>
				<p>
					<span>
						三月 一路烟霞 莺飞草长
					</span>
				</p>
				<p>
					<span>
						柳絮纷飞里看见了故乡
					</span>
				</p>
				<p>
					<span>
						不知心上的你是否还在庐阳
					</span>
				</p>
				<p>
					<span>
						一缕青丝一生珍藏
					</span>
				</p>
				<p>
					<span>
						桥上的恋人入对出双
					</span>
				</p>
				<p>
					<span>
						桥边红药叹夜太漫长
					</span>
				</p>
				<p>
					<span>
						月也摇晃 人也彷徨
					</span>
				</p>
				<p>
					<span>
						乌蓬里传来了一曲离殇
					</span>
				</p>
				<p><span>1一二三四五六七八九1一二三四五六七八九2一二三四五六七八九3一二三四五六七八九4一二三四五六七八九5一二三四五六七八九6一二三四五六七八九7一二三四五六七八九8一二三四五六七八九9一二三四五六七八九10</span></p>	
				<p><span>2一二三四五六七八九1一二三四五六七八九2一二三四五六七八九3一二三四五六七八九4一二三四五六七八九5一二三四五六七八九6一二三四五六七八九7一二三四五六七八九8一二三四五六七八九9一二三四五六七八九10</span></p>			
				<p><span>3一二三四五六七八九1一二三四五六七八九2一二三四五六七八九3一二三四五六七八九4一二三四五六七八九5一二三四五六七八九6一二三四五六七八九7一二三四五六七八九8一二三四五六七八九9一二三四五六七八九10</span></p>
			</div>
		</div>
		<%
			if(all==null||!all.equals("true")){
		%>		
		<div class="hide-article-box">
			<a class="btn" id="btn-readmore" href="fullText.jsp?all=true">阅读更多</a>
		</div>
		<%} %>		

	</article>  
<aside class="htmleaf-container">
	<div id="container">
		<div class="feed" id="feed1">
			<div class="heart " id="like1" rel="like"></div> 
			<div class="likeCount" id="likeCount1">14</div>
		</div>
	</div>

</aside>
	
	   <div class="news_pl">
        <h2>文章评论</h2>
        <div class="gbko"> 
          <div class="fb">
            <ul>
              <p class="fbtime"><span>2018-07-24 11:52:38</span>dancesmile</p>
              <p class="fbinfo">这才是我要的朋友圈</p>
            </ul>
          </div>
          <div class="fb">
            <ul>
              <p class="fbtime"><span>2018-07-24 08:52:48</span> 卜野</p>
              <p class="fbinfo"></p>
              <div class="ecomment"><span class="ecommentauthor">网友 家蚂蚁 的原文：</span>
                <p class="ecommenttext">坚持哟!看你每天都有写，请继续加油，再接再厉哦</p>
              </div>
            </ul>
          </div>
          
          <script>
		  function CheckPl(obj)
		  {
		  if(obj.saytext.value=="")
		  {
		  alert("您没什么话要说吗？");
		  obj.saytext.focus();
		  return false;
		  }
		  return true;
		  }
		  </script>
          <form action="/e/pl/doaction.php" method="post" name="saypl" id="saypl" onsubmit="return CheckPl(document.saypl)">
            <div id="plpost">
              <p class="saying"><span><a href="#">共有<script type="text/javascript" src="#"></script>2条评论</a></span>来说两句吧...</p>
              <input name="nomember" type="hidden" id="nomember" value="1" checked="checked">
              <textarea name="saytext" rows="6" id="saytext"></textarea>
              <input name="imageField" type="submit" value="提交">
              <input name="id" type="hidden" id="id" value="106">
              <input name="classid" type="hidden" id="classid" value="77">
              <input name="enews" type="hidden" id="enews" value="AddPl">
              <input name="repid" type="hidden" id="repid" value="0">
              <input type="hidden" name="ecmsfrom" value="/joke/talk/2018-07-23/106.html">
            </div>
          </form>
        </div>
        </div>
  </main>
</article>

<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank"><%=bloger %>个人博客</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>

</body>
</html>
<script type="text/javascript">
$(document).ready(function()
{

$('body').on("click",'.heart',function()
{
	
	var A=$(this).attr("id");
	var B=A.split("like");
	var messageID=B[1];
	var C=parseInt($("#likeCount"+messageID).html());
	$(this).css("background-position","")
	var D=$(this).attr("rel");
   
	if(D === 'like') 
	{      
	$("#likeCount"+messageID).html(C+1);
	$(this).addClass("heartAnimation").attr("rel","unlike");
	
	}
	else
	{
	$("#likeCount"+messageID).html(C-1);
	$(this).removeClass("heartAnimation").attr("rel","like");
	$(this).css("background-position","left");
	}


});


});
</script>