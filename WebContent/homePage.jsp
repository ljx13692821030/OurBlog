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
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/comm.js"></script>


<!--[if lt IE 9>
<script src="js/modernizr.js"></script>
<! [endif]-->
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
    <li><i><a href="/"><img src="img/1.jpg"></a></i>
      <h3><a href="/">你是什么人便会遇上什么人</a></h3>
      <p>有时就为了一句狠话，像心头一口毒钉，永远麻痺着亲密感情交流。恶言，真要慎出，平日多誠心爱语，乃最简易之佈施。</p>
    </li>
    <li><i><a href="/"><img src="img/2.jpg"></a></i>
      <h3><a href="/">爱情没有永远，地老天荒也走不完</a></h3>
      <p>也许，爱情没有永远，地老天荒也走不完，生命终结的末端，苦短情长。站在岁月的边端，那些美丽的定格，心伤的绝恋，都被四季的掩埋，一去不返。徒剩下这荒芜的花好月圆，一路相随，流离天涯背负了谁的思念？</p>
    </li>
    <li><i><a href="/"><img src="img/3.jpg"></a></i>
      <h3><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></h3>
      <p>还在为浪漫的求婚词而烦恼不知道该怎么说吗？女孩子都有着浪漫的小情怀，对于求婚更是抱着满满的浪漫期待，也希望在求婚那一天对方可以给自己一个最浪漫的求婚词。</p>
    </li>
    <li><i><a href="/"><img src="img/4.jpg"></a></i>
      <h3><a href="/">擦肩而过</a></h3>
      <p>《擦肩而过》文/清河鱼 编绘/天朝羽打开一扇窗，我不曾把你想得平常。看季节一一过往。你停留的那个地方，是否依然花儿开放？在夜里守靠着梦中的，想那仿佛前世铭刻进心肠的</p>
    </li>
     <li><i><a href="/"><img src="img/1.jpg"></a></i>
      <h3><a href="/">你是什么人便会遇上什么人</a></h3>
      <p>有时就为了一句狠话，像心头一口毒钉，永远麻痺着亲密感情交流。恶言，真要慎出，平日多誠心爱语，乃最简易之佈施。</p>
    </li>
    <li><i><a href="/"><img src="img/2.jpg"></a></i>
      <h3><a href="/">爱情没有永远，地老天荒也走不完</a></h3>
      <p>也许，爱情没有永远，地老天荒也走不完，生命终结的末端，苦短情长。站在岁月的边端，那些美丽的定格，心伤的绝恋，都被四季的掩埋，一去不返。徒剩下这荒芜的花好月圆，一路相随，流离天涯背负了谁的思念？</p>
    </li>
    <li><i><a href="/"><img src="img/3.jpg"></a></i>
      <h3><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></h3>
      <p>还在为浪漫的求婚词而烦恼不知道该怎么说吗？女孩子都有着浪漫的小情怀，对于求婚更是抱着满满的浪漫期待，也希望在求婚那一天对方可以给自己一个最浪漫的求婚词。</p>
    </li>
    <li><i><a href="/"><img src="img/4.jpg"></a></i>
      <h3><a href="/">擦肩而过</a></h3>
      <p>《擦肩而过》文/清河鱼 编绘/天朝羽打开一扇窗，我不曾把你想得平常。看季节一一过往。你停留的那个地方，是否依然花儿开放？在夜里守靠着梦中的，想那仿佛前世铭刻进心肠的</p>
    </li>
    <li>
      <h3><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></h3>
      <p>还在为浪漫的求婚词而烦恼不知道该怎么说吗？女孩子都有着浪漫的小情怀，对于求婚更是抱着满满的浪漫期待，也希望在求婚那一天对方可以给自己一个最浪漫的求婚词。</p>
    </li>
    <li><i><a href="/"><img src="img/5.jpg"></a></i>
      <h3><a href="/">擦肩而过</a></h3>
      <p>《擦肩而过》文/清河鱼 编绘/天朝羽打开一扇窗，我不曾把你想得平常。看季节一一过往。你停留的那个地方，是否依然花儿开放？在夜里守靠着梦中的，想那仿佛前世铭刻进心肠的</p>
    </li>
    <li><i><a href="/"><img src="img/6.jpg"></a></i>
      <h3><a href="/">女孩都有浪漫的小情怀——浪漫的求婚词</a></h3>
      <p>还在为浪漫的求婚词而烦恼不知道该怎么说吗？女孩子都有着浪漫的小情怀，对于求婚更是抱着满满的浪漫期待，也希望在求婚那一天对方可以给自己一个最浪漫的求婚词。</p>
    </li>
    <li><i><a href="/"><img src="img/7.jpg"></a></i>
      <h3><a href="/">你是什么人便会遇上什么人</a></h3>
      <p>有时就为了一句狠话，像心头一口毒钉，永远麻痺着亲密感情交流。恶言，真要慎出，平日多誠心爱语，乃最简易之佈施。</p>
    </li>
    <li><i><a href="/"><img src="img/8.jpg"></a></i>
      <h3><a href="/">爱情没有永远，地老天荒也走不完</a></h3>
      <p>也许，爱情没有永远，地老天荒也走不完，生命终结的末端，苦短情长。站在岁月的边端，那些美丽的定格，心伤的绝恋，都被四季的掩埋，一去不返。徒剩下这荒芜的花好月圆，一路相随，流离天涯背负了谁的思念？</p>
    </li>
    <li><i><a href="/"><img src="img/9.jpg"></a></i>
      <h3><a href="/">擦肩而过</a></h3>
      <p>《擦肩而过》文/清河鱼 编绘/天朝羽打开一扇窗，我不曾把你想得平常。看季节一一过往。你停留的那个地方，是否依然花儿开放？在夜里守靠着梦中的，想那仿佛前世铭刻进心肠的</p>
    </li>
  </main>
</article>
<footer>
  <p>Design by <a href="#" target="_blank"><%=bloger %>个人博客</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<a href="#" class="cd-top">Top</a>

</body>
</html>