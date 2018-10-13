<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
		<title>写博客</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/reset.css" />
		<link href="css/base.css" rel="stylesheet"/>
		<link href="css/index.css" rel="stylesheet"/>
		<link href="css/m.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/bootstrap-theme.css" />
		<script src="js/bootstrap.js"></script>
		<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    	<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    	<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    	<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
		<style>
		.nav{
			list-style: none;
            width: 180px;
            padding: 0px;
            margin: 0px;
        }
        .nav li .a{
      			height: 50px;
            display: block;
         	 line-height: 30px;
            text-decoration: none;
           	text-align:center;
            color: black;
            font-size: 15px;
        }
        .nav #navliRed{
          background-color: #000000;
          color: white;
        }
	    .navli .a:hover{
            background-color: #000000;
            color: white;
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
			width:758px;
			/* position: absolute; */
			/* right: 0px; */
			padding: 30px;
			border-left: solid 1px gainsboro;
			float: left;
		}
		.title{
			border-left: solid #C92027;
			text-indent: 10px;
			height: 20px;
			line-height: 20px;
		}
		/* .comment{
			list-style: none;
            width: 180px;
            padding: 0px;
            border: solid 1px;
        } */
        .btn1{
        margin: 20px;
        outline: none;
        border: 1px solid #000000;
        color: #000000;
        background-color: transparent;
        background-image: none;
        font-weight: 400;
        white-space: nowrap;
        vertical-align: center;
        border-radius:15px;
        width: 100px;
        height: 40px;
        }
        .btn1:hover{
         background-color: #000000;
            color: white;
        }
        .btn2{
        border: 1px solid gray;
        color: gray;
        background-color: transparent;
        background-image: none;
        font-weight: 400;
        white-space: nowrap;
        vertical-align: center;
        border-radius:15px;
        width: 50px;
        height: 40px
        }
        .btn2:HOVER{
         background-color:gray;
            color: white;
        }
 .slideThree {
  width: 80px;
  height: 26px;
  margin: 0px 0 0 100px;
  -moz-border-radius: 50px;
  -webkit-border-radius: 50px;
  border-radius: 50px;
  -moz-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.5), 0px 1px 0px rgba(255, 255, 255, 0.2);
  -webkit-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.5), 0px 1px 0px rgba(255, 255, 255, 0.2);
  box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.5), 0px 1px 0px rgba(255, 255, 255, 0.2);
}
.slideThree:after {
  content: 'OFF';
  color: #000;
  position: absolute;
  right: 10px;
  z-index: 0;
  font: 12px/26px Arial, sans-serif;
  font-weight: bold;
  text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.15);
}
.slideThree:before {
  content: 'ON';
  position: absolute;
  left: 10px;
  z-index: 0;
  font: 12px/26px Arial, sans-serif;
  font-weight: bold;
}
.slideThree label {
  display: block;
  width: 34px;
  height: 20px;
  cursor: pointer;
  position: absolute;
  top: 3px;
  left: 3px;
  z-index: 1;
  background: #fcfff4;
  background: -moz-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
  background: -webkit-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
  background: linear-gradient(to bottom, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
  -moz-border-radius: 50px;
  -webkit-border-radius: 50px;
  border-radius: 50px;
  -moz-transition: all 0.4s ease;
  -o-transition: all 0.4s ease;
  -webkit-transition: all 0.4s ease;
  transition: all 0.4s ease;
  -moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.3);
}
.slideThree input[type=checkbox] {
  visibility: hidden;
}
.slideThree input[type=checkbox]:checked + label {
  left: 43px;
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
            margin-top: 5px;
            cursor: auto;
            background-image: url("Jiaxiang/model/img/2.jpg");
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
	<body style="background-color:#efefef;">
	
	<header class="header-navigation" id="header" style="color:#555555">
		<nav><div class="logo" ><a href="" style="color:#555555;text-decoration: none;" >XX个人博客</a></div>
		    <ul id="starlist" style="color:#555555">
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

			</div>
		
		    </li>
		     </ul>
		</nav>
		</header>
	
	
	
		<div class="container" style="background-color:white;">
			<div class="navigation" >
				<ul class="nav">
					<li class="navli"><a class="a" href=" ">查看主页</a></li>
					<li class="navli" ><a id="navliRed" class="a" id="aRed"  href="#"><p  class="glyphicon glyphicon-pencil"></p>写博客</a></li>
					<li class="navli"><a class="a" href="wenZhangGuanLi.jsp">文章管理</a></li>
					<li class="navli"><a class="a" href="#">评论管理</a></li>
					<li class="navli"><a class="a" href="#">留言管理</a></li>
					<li class="navli"><a class="a" href="#">个人分类管理</a></li>
				</ul>
			</div>
			<div class="content" style="background-color:white;">
				<input type="text" id="Title"
				 class="Title" placeholder="请输入标题"
				 style="width:100%;font-size:30px;
				 margin:20px 0 20px 0;background-color:lightgray">
				<br>
				
				
				<!--调用富文本编辑器的地方  -->
		 <div  class="bianji" style="width:"100%;height:100%">
    	<textarea id="editor" type="text/plain" style="width:100%;height:680px;margin-bottom:60px"></textarea>
		</div>
	<label class="Fenlei">个人分类:</label>
	<a href="" style="text-decoration: none;color: blue;" class="glyphicon glyphicon-plus">添加个人分类</a>
	<br><br><br><br>
	
	<p class="pp">私密设置：</p>
	<!--这里是设置私密按钮的地方  -->
	<div class="slideThree">  
   <input type="checkbox" value="None" id="slideThree" name="check">
    <label for="slideThree"></label>
    </div>
	<input type="button" id="btnFb" class="btn1"  value="发布博客">
	<input type="button" id="btnCg" class="btn1"  value="存为草稿">
	<input type="button" id="btnFh" class="btn2" value="返回">
		</div>
		
		
		<!--这里是设置富文本编辑器的地方  -->
		<script type="text/javascript">
    var ue = UE.getEditor('editor',{toolbars:[
                                             [ 'redo', 'italic','strikethrough','formatmatch','selectall',
                                               'horizontal','removeformat', 'deleterow', 'fontfamily',
                                               'fontsize','simpleupload','insertimage','justifyleft', 
                                               'justifyright','justifycenter', 'justifyjustify', 
                                               'forecolor', 'backcolor','fullscreen','wordimage'
                                              ]
                                             ]});
</script>
	</body>
</html>