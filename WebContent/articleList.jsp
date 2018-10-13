
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页_杨青个人博客 - 一个站在web前端设计之路的女技术员个人博客网站</title>
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
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
	
	.r_box .search {
		margin-bottom:20px; 
		left:380px; 
		width:300px; 
		border: 1px solid #000; 
		background: #000; 
		border-radius: 0 5px 5px 0; 
		position: relative; 
	}
	.desc li {padding-left:350px}
	.desc li a {margin-left:30px}
</style>
<script type="text/javascript">
	//文档高度
	function getDocumentTop(){
		var scrollTop = 0, bodyScrollTop = 0, documentScrollTop = 0;
		if(document.body){
			bodyScrollTop = document.body.scrollTop;
		}
		if(document.documentElement){
			documentScrollTop = document.documentElement.scrollTop;
		}
		scrollTop = (bodyScrollTop-documentScrollTop>0)?bodyScrollTop:documentScrollTop;
		return scrollTop;
	}
	//可视窗口高度
	function getWindowHeight(){
		var windowHeight = 0;
		if(document.compatMode == "CSS1Compat"){
			windowHeight = document.documentElement.clientHeight;
		}else{
			windowHeight = document.body.clientHeight;
		}
		return windowHeight;
	}
	//滚动条滚动高度
	function getScrollHeight(){
		var scrollHeight = 0, bodyScrollHeight = 0, documentScrollHeight = 0;
		if(document.body){
			bodyScrollHeight = document.body.scrollHeight;
		}
		if(document.documentElement){
			documentScrollHeight = document.documentElement.scrollHeight;
		}
		scrollHeight = (bodyScrollHeight-documentScrollHeight>0)?bodyScrollHeight:documentScrollHeight;
		return scrollHeight;
	}
	//滚动条监听
	window.onscroll = function(){
		//监听时间内容
		if(getScrollHeight()==getDocumentTop()+getWindowHeight()){

			alert("11111");
			$(".r_box").append("<li><i><a href='fullText.jsp'><img src='img/1.jpg'></a></i><h3><a href='fullText.jsp'>你是什么人便会遇上什么人</a></h3><p>有时就为了一句狠话，像心头一口毒钉，永远麻痺着亲密感情交流。恶言，真要慎出，平日多誠心爱语，乃最简易之佈施。</p></li>");
			//当滚动条到底时，这里是触发内容
			//异步请求数据，局部刷新dom
			//ajax_function();
			
		}
	}
		
</script>


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
//List<Article> list = (List)request.getAttribute("list");
%>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/"><%=bloger %>的个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="homePage.jsp">首页</a></li>
      <li><a href="articleList.jsp">文章</a></li>
      <li><a href="gbook.jsp">留言</a></li>
      <li><a href="aboutMe.jsp">关于我</a></li>
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
      <div class="search">
        <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
          <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
          <input name="show" value="title" type="hidden">
          <input name="tempid" value="1" type="hidden">
          <input name="tbname" value="news" type="hidden">
          <input name="Submit" class="input_submit" value="搜索" type="submit">
        </form>
      </div>
      <div class="desc">
      	<ul>
      	<li>
      	排序:<a href="">默认</a><a href="">按更新时间</a><a href="">按访问量</a>
      	</li>
      	</ul>
      </div>
    <li><i><a href="fullText.jsp"><img src="img/1.jpg"></a></i>
      <h3><a href="fullText.jsp">你是什么人便会遇上什么人</a></h3>
      <p>有时就为了一句狠话，像心头一口毒钉，永远麻痺着亲密感情交流。恶言，真要慎出，平日多誠心爱语，乃最简易之佈施。</p>
    </li>
	<c:forEach items="${list }" var="li">
	    <li><i><a href="/"><img src="img/2.jpg"></a></i>
	    	<h3><a href="/">${li.title }</a></h3>
	    	<p>${li.fulltext }</p>
	    </li>
	</c:forEach>
  </main>
</article>
<footer>
  <p>Design by <a href="http://www.yangqq.com" target="_blank"><%=bloger %>个人博客</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>

</body>
</html>