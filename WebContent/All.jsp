<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章管理</title>
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-theme.css" />
<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js"></script>
		<script>
		$(function(){
		
			$("#imghead").hover(function(){
				$("#imghead").click();
			});
		});
		</script>
	<style>
		.nav{
			list-style: none;
            width: 180px;
            padding: 0px;
            margin: 0px;
        }
        .nav .navli .a{
        	height: 50px;
            display: block;
         	 line-height: 30px;
            text-decoration: none;
           	text-align:center;
            color: black;
            font-size: 15px;
        }
	    .navli .a:hover{
            background-color: #000000;
            color: white;
        }
         .nav #navliRed{
          background-color: #000000;
          color:white;
        }
		.container{
			width: 1000px;
			/* height: 1000px; */
			margin: 100px auto;
			/* position: relative; */
			overflow: hidden;
			padding: 0px
			
		}
		.navigation{
			height:500px;
			/* position: absolute; */
			left: 0px;
			float: left;
			
		}
		.content{
			width:820px;
			/* position: absolute; */
			/* right: 0px; */
			padding: 30px;
			border-left: solid 1px gainsboro;
			float: left;
		}
		.title{
			border-left: 3px solid #C92027;
			text-indent: 10px;
			height: 20px;
			line-height: 20px;
		}
		.comment{
			list-style: none;
            padding: 0px;
            overflow: hidden;
            height: 36px;
           	border-bottom: 1px solid #e9e9e9;
           	/*后加*/
           	margin-top: 30px;

        }
        .comment .comli .a1{
            display: block;
            text-decoration: none;
            color: #999;
            margin-right: 24px;
    		padding: 0px;
    		padding-bottom: 14px;
    		float: left;
        }
        .comment .comli .a1:hover{
           border-bottom: 3px solid #C92027;
           color: #4f4f4f;
        }
        .comment .comli #comNow{
        	border-bottom: 3px solid #C92027;
        	color: #4f4f4f;
        }
        .search{
        	width: 100%;
        	height: 40px;
        	background-color:#efefef;
			line-height: 40px;
        }
         .dropdown{
            margin-top: 0px;
            display:inline-block;
        }
        .dropdown-menu .li1{
            margin-left: 20px;
        }
         .dropdown-menu .li2{
            margin-left: 20px;
        }
         .btn1{
        outline: none;
        border: 1px solid red;
        color: red;
        background-color: transparent;
        background-image: none;
        font-weight: 400;
        white-space: nowrap;
        vertical-align: center;
        border-radius:15px;
        width:60px;
        height:35px;
        background-color: #C92027;
        color: white;
        line-height: 10px;
        margin-left: 30px;
        margin-bottom: 5px;
        }
        	
	    #starlist li a:link{
	    	color:#555555;
	    	text-decoration: none
	    }
	    #starlist li a:visited{
	    	color:#555555;
	    	text-decoration: none;
	    }
	     #starlist li a:hover{
	    	color:#0E6DAD;
	    	text-decoration: none;
	    }
	    #starlist li a:active{
	    	color:red;
	    	text-decoration: none;
	    }
	    
	    
	    
	    
	    
	  .imghead{
            width: 50px;
            height:50px;
            margin-left: 20px;
            margin-top: -15px;
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
    
    
    
    
    
    .pageCon{
			text-align: center;
		}
		.pageNav{
			width:auto;
			margin: 0px;
		}
		.pageNav .pageli .a{
            display: block;
            text-decoration: none;
            margin-left: 15px;
    		float: right;
    		color: black;
        }
        .pageNav .pageli .a:hover{
           color: #349EDF;
        }
        </style>
</head>
<body style="background-color:#efefef;">

<header class="header-navigation" id="header" style="color:#555555">
		<nav><div class="logo" ><a href="" style="color:#555555;text-decoration: none;" >XX个人博客</a></div>
		    <ul id="starlist" style="color:#555555;margin-top: 20px">
		      <li><a  href="homePage.html">首页</a></li>
		      <li><a  href="#">文章</a></li>
		      <li><a  href="#">留言</a></li>
		      <li><a  href="aboutMe.html">关于我</a></li>
		      <li><a  href="#">管理博客</a></li>
		    <li>
		    	 	
			<div class="imghead clearfix" >
	
				<div class="msg" style="margin-top: 50px;">
					<a href="info.html">个人中心</a>
				</div>
				<div class="msg">
					<a href="#">退出</a>
				</div>

		    </li>
		     </ul>
		</nav>
		</header>





<div class="container" style="background-color:white;">
			<div class="navigation" >
			<ul class="nav">
					<li class="navli"><a class="a" href="">查看主页</a></li>
					<li class="navli"><a class="a"  href="editor.jsp"><p class="glyphicon glyphicon-pencil"></p>写博客</a></li>
					<li class="navli" ><a id="navliRed" class="a" href="wenZhangGuanLi.jsp"">文章管理</a></li>
					<li class="navli"><a class="a" href="#">评论管理</a></li>
					<li class="navli"><a class="a" href="#">留言管理</a></li>
					<li class="navli"><a class="a" href="#">个人分类管理</a></li>
				</ul>
			</div>
			<div class="content" >
				<div class="title">评论管理</div>
				<ul class="comment">
					<li class="comli"><a class="a1" href="wenZhangGuanLi.jsp" >全部(0)</a></li>
					<li class="comli"><a class="a1" href="All.jsp" id="comNow">已发表(0)</a></li>	
					<li class="comli"><a class="a1" href="simi.jsp">私密(0)</a></li>
					<li class="comli"><a class="a1" href="caogao.jsp">草稿箱()</a></li>	
					<li class="comli"><a class="a1" href="huishou.jsp">回收站(0)</a></li>
				</ul>
				<div class="search">
				<span style="font-size: 11px">发布时间:</span><div class="dropdown">
        <!--通过data-toggle属性来实现下拉菜单-->
        <div style="display: inline-block;">
        <button class="btnYear" data-toggle="dropdown"
         value="不限" style="width: 80px;height:30px;margin-right: 20px;margin-left: 10px;border-radius:12px;border:none">
    		<span style="line-height: 10px;color: gray;" >不限</span>
            <span class="caret" style="float: right;color: gray;"></span>
        </button>
        <ul class="dropdown-menu" style="margin-left:15px;margin-top: -5px;">
           	<li class="li1" id="ll" style="width: 50px">2001</li>
            <li class="li1" id="ll" >2002</li>
            <li class="li1" id="ll">2003</li>
        </ul>
        </div>
        	<div style="display: inline-block;">
         <button class="btnMonth" data-toggle="dropdown"
         value="不限" style="width: 80px;height:30px;border-radius:12px;border:none;margin-right: 15px;wi">
    		<span style="line-height: 10px;color: gray;" >不限</span>
            <span class="caret" style="float: right;color: gray;"></span>
        </button>
        <ul class="dropdown-menu" style="margin-left:120px;margin-top: -5px;">
           	<li class="li2" id="ll" style="width: 50px">2001</li>
            <li class="li2" id="ll">2002</li>
            <li class="li2" id="ll">2003</li>
        </ul>
        </div>
        
        <div style="display: inline-block;">
         <button class="btnFenlei" data-toggle="dropdown"
         value="不限" style="width: 80px;height:30px;border-radius:12px;border:none;margin-right: 15px;width: 150px">
    		<span style="line-height: 10px;color: gray;" >选择个人分类</span>
            <span class="caret" style="float: right;color: gray;"></span>
        </button>
         <ul class="dropdown-menu" style="margin-left:210px;margin-top: -5px">
           	<li class="li3" id="ll" style="width: 150px;text-align: center">2001</li>
            <li class="li3" id="ll" style="width: 150px;text-align: center">2002</li>
            <li class="li3" id="ll" style="width: 150px;text-align: center">2003</li>
        </ul>
        </div>
        	<input type="text"  name="guanjianzi" placeholder="请输入文章关键字搜索" style="margin-top: 10px;background-color:#efefef;">
			<button class="btn1" >搜索</button>
				</div>
				</div>
				<div style="margin-top: 20px">
				<input type="text" readonly="readonly" value="草稿" style=" display: inline-block;width: 45px;margin-right:15px">
				<a href="#" class="timu" style="text-decoration: none">aaaaaa</a>
				</div>
				<div style="margin-top: 10px">
				<span style="color: gray;margin-left: 90px" class="time">2015-12-01</span>
				<span class="glyphicon glyphicon-book" style="margin-left: 50px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="liulan">(0)</a></span>
				<span class="glyphicon glyphicon-comment" style="margin-left: 25px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="pinglun">(0)</a></span>
				<a class="check" style="margin-right:20px;float: right;font-size: 12px">删除</a>
				<span style="float: right;margin: -3px 5px 10px 5px;color: gray;">|</span>
				<a class="check" style="float: right;font-size: 12px">查看</a>
				</div>
				<hr style="margin-top: 0px;width: 100%">
				
				
					<div style="margin-top: 20px">
				<input type="text" readonly="readonly" value="草稿" style=" display: inline-block;width: 45px;margin-right:15px">
				<a href="#" class="timu" style="text-decoration: none">aaaaaa</a>
				</div>
				<div style="margin-top: 10px">
				<span style="color: gray;margin-left: 90px" class="time">2015-12-01</span>
				<span class="glyphicon glyphicon-book" style="margin-left: 50px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="liulan">(0)</a></span>
				<span class="glyphicon glyphicon-comment" style="margin-left: 25px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="pinglun">(0)</a></span>
				<a class="check" style="margin-right:20px;float: right;font-size: 12px">删除</a>
				<span style="float: right;margin: -3px 5px 10px 5px;color: gray;">|</span>
				<a class="check" style="float: right;font-size: 12px">查看</a>
				</div>
				<hr style="margin-top: 0px;width: 100%">
				
				
				
				
					<div style="margin-top: 20px">
				<input type="text" readonly="readonly" value="草稿" style=" display: inline-block;width: 45px;margin-right:15px">
				<a href="#" class="timu" style="text-decoration: none">aaaaaa</a>
				</div>
				<div style="margin-top: 10px">
				<span style="color: gray;margin-left: 90px" class="time">2015-12-01</span>
				<span class="glyphicon glyphicon-book" style="margin-left: 50px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="liulan">(0)</a></span>
				<span class="glyphicon glyphicon-comment" style="margin-left: 25px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="pinglun">(0)</a></span>
				<a class="check" style="margin-right:20px;float: right;font-size: 12px">删除</a>
				<span style="float: right;margin: -3px 5px 10px 5px;color: gray;">|</span>
				<a class="check" style="float: right;font-size: 12px">查看</a>
				</div>
				<hr style="margin-top: 0px;width: 100%">
				
				
				
					<div style="margin-top: 20px">
				<input type="text" readonly="readonly" value="草稿" style=" display: inline-block;width: 45px;margin-right:15px">
				<a href="#" class="timu" style="text-decoration: none">aaaaaa</a>
				</div>
				<div style="margin-top: 10px">
				<span style="color: gray;margin-left: 90px" class="time">2015-12-01</span>
				<span class="glyphicon glyphicon-book" style="margin-left: 50px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="liulan">(0)</a></span>
				<span class="glyphicon glyphicon-comment" style="margin-left: 25px;background-color: gr"><a href="#" style="color: gray;margin-left: 5px;text-decoration: none" class="pinglun">(0)</a></span>
				<a class="check" style="margin-right:20px;float: right;font-size: 12px">删除</a>
				<span style="float: right;margin: -3px 5px 10px 5px;color: gray;">|</span>
				<a class="check" style="float: right;font-size: 12px">查看</a>
				</div>
				<hr style="margin-top: 0px;width: 100%">
				
				
				
				<div class="pageCon">
					<nav class="pageNav" aria-label="Page navigation">
						<ul class="pagination">
							<li>
								<a href=" " aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li>
								<a href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			
			</div>		
</body>
</html>