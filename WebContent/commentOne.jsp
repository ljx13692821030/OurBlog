<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论管理</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<link href="css/base.css" rel="stylesheet">
		<link href="css/index.css" rel="stylesheet">
		<link href="css/m.css" rel="stylesheet">
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
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
		  text-align: center;
		    color: black;
        }
	    .nav .navli .a:hover{
            background-color: #000000;
            color: white;
        }
        .nav .navli #navNow{
        	background-color: #000;
            color: white;
        }
		.container{
			width: 1000px;
			margin: 100px auto;
			overflow: hidden;
			/*后加*/
			padding: 0px;
			background-color: white;
		}
		.navigation{
			height: 500px;
			float: left;	
		}
		.content{
			width: 820px;
			/*width: 758px;*/
			float: left;
			padding: 30px;
			border-left: solid 1px #e9e9e9;
		}
		.title{
			border-left: 3px solid #000000;
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
			overflow: hidden;
        }
        .comment .comli .a{
            display: block;
            text-decoration: none;
            color: #999;
           /* font-size: 0.875rem;*/
            margin-right: 24px;
    		padding: 0px;
    		/*后改*/
    		padding-bottom: 10px;
    		float: left;
        }
        .comment .comli .a:hover{
           border-bottom: 3px solid #000000;
           color: #4f4f4f;
        }
        .comment .comli #comNow{
        	border-bottom: 3px solid #000000;
        	color: #4f4f4f;
        }
        .commentList{
        	list-style: none;
        	padding: 0px;
        	/*font-size: 0.875rem;*/
        	
        }
        .commentList .commentLi{
        	overflow: hidden;
        	border-bottom:1px #e9e9e9 dashed;
        	margin-top: 5px;
        }
		.imgdiv{
			width: 50px;
			height: 50px;
			border-radius: 50%;
			overflow: hidden;
			float: left;
		}
		.msgdiv{
			width: 694px;
			float: left;
			margin: 15px 0px 0px 10px;
    		color: #999;
    		position: relative;
		}
		.username{
			color: #4F4F4F;
			margin-right: 8px;
		}
		.article{
		    color: #349EDF;
		    text-decoration: none;
		}
		.do{
			display: inline-block;
			position: absolute;
			right: 0px;
		}
		.delete{
			color: #CA0C16;
			text-decoration: none;
			margin-left: 10px;
			padding-left: 10px;
			border-left: 1px solid #e9e9e9;
		}
		.comdiv{
			color: #4F4F4F;
			padding: 20px 0px;
			height: auto;
    		word-wrap:break-word;
    		word-break:break-all;
    		overflow: hidden;
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
		body{
        	background: #efefef;
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
	    	border-radius:50%;
	    	width: 50px;
	    	height: 50px;
	    	margin-top: 5px;
	    }
	   #starlist li .lili{
			padding:0px;
			margin:0px;
		}
		.dropdown-menu{
			min-width:0px;
		}
     
        .imghead{
            width: 50px;
            height:50px;
            margin-left: 20px;
            
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
    
	</style>
	</head>
	<body>
		<header class="header-navigation" id="header" style="color:#555555">
		<nav><div class="logo" ><a href="/" style="color:#555555;text-decoration: none;" >XX个人博客</a></div>
		    <ul id="starlist" style="color:#555555">
		      <li><a href="homePage.html">首页</a></li>
		      <li><a href="#">文章</a></li>
		      <li><a href="#">留言</a></li>
		      <li><a href="aboutMe.html">关于我</a></li>
		      <li><a href="#">管理博客</a></li>
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
		<div class="container">
			<div class="navigation">
				<ul class="nav">
					<li class="navli"><a class="a" href="#">查看主页</a></li>
					<li class="navli"><a class="a" href="#"><span class="glyphicon glyphicon-pencil">写博客</span></a></li>
					<li class="navli"><a class="a" href="#">文章管理</a></li>
					<li class="navli"><a class="a" href="#" id="navNow">评论管理</a></li>
					<li class="navli"><a class="a" href="#">留言管理</a></li>
					<li class="navli"><a class="a" href="#">个人分类管理</a></li>
				</ul>
			</div>
			<div class="content">
				<div class="title">评论管理</div>
				<ul class="comment">
					<li class="comli"><a class="a" href="#" id="comNow">我的文章评论</a></li>
					<li class="comli"><a class="a" href="commentTwo.html">我发表的评论</a></li>		
				</ul>
			<!--评论列表-->
				<ul class="commentList">
					<li class="commentLi">
						<div class="imgdiv">
							<img src="img/tx9.jpg" width="50px" height="50px"/>
						</div>
						<div class="msgdiv">
							<!--评论头信息-->
							<span class="username">小刚</span>
							回复了你的文章
							<a class="article" href="#">java基础</a>
							<div class="do">
								<a class="article" href="#">快速回复</a>
								<a class="delete" href="#">删除</a>
							</div>
							<!--评论-->
							<div class="comdiv">
								aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
							</div>
							<div class="time">2018-10-7 15:54:11<p>
						</div>
					</li>
					<li class="commentLi">
						<div class="imgdiv">
							<img src="img/tx9.jpg" width="50px" height="50px"/>
						</div>
						<div class="msgdiv">
							<!--评论头信息-->
							<span class="username">sdscdrrrrrrrrrrrererererf2</span>
							回复了你的文章
							<a class="article" href="#">javanon---no</a>
							<div class="do">
								<a class="article" href="#">快速回复</a>
								<a class="delete" href="#">删除</a>
							</div>
							<!--评论-->
							<div class="comdiv">
								你好~
							</div>
							<div class="time">2018-10-7 15:54:11<p>
						</div>
					</li>
					<li class="commentLi">
						<div class="imgdiv">
							<img src="img/tx9.jpg" width="50px" height="50px"/>
						</div>
						<div class="msgdiv">
							<!--评论头信息-->
							<span class="username">sdscdf2</span>
							回复了你的文章
							<a class="article" href="#">javanonono</a>
							<div class="do">
								<a class="article" href="#">快速回复</a>
								<a class="delete" href="#">删除</a>
							</div>
							<!--评论-->
							<div class="comdiv">
								你好~sdsdsdsdsdsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
							</div>
							<div class="time">2018-10-7 15:54:11<p>
						</div>
					</li>
				</ul>
				<div class="pageCon">
					<nav class="pageNav" aria-label="Page navigation">
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
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
