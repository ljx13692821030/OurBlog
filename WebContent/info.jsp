<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
		<link rel="stylesheet" href="css/myselfInfo.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>

		
	<style>
		
	
        
   
	</style>
	</head>
	<body id="b">
		<div class="content">
			<div class="navigation">
				<ul class="nav1">
					<li class="navli"><a href="#">查看主页</a></li>
					<li class="navli"><a href="#"><span class="glyphicon glyphicon-pencil">写博客</a></li>
					<li class="navli"><a href="#">文章管理</a></li>
					<li class="navli"><a href="#">评论管理</a></li>
					<li class="navli"><a href="#">留言管理</a></li>
					<li class="navli"><a href="sort.html">个人分类管理</a></li>
				</ul>
			</div>
			<div class="right-aside">
			<div class="title">
				
				<h2>个人资料</h2>
				
				<hr>
			</div>
			<div class="conter">
			<div class="img">
				<img id="image1" src="img/6.jpg" width="100px" height="100px" style="border-radius: 50%;"><br>
					<a href="myModal1" data-toggle="modal" data-target="#myModal1">修改头像</a>
			</div>
			<div class="info">
				<div class="change"><a href="#myModal" data-toggle="modal" data-target="#myModal">修改资料</a></div>
				<div class="edior"><a href="editor.jsp"><span class="glyphicon glyphicon-pencil">编辑详细介绍</span></a></div>
				<p>用户名：<label name="name">zcn123</label></p>
				<p>昵称:<label name="username">zcn</label></p>
				<p>密码:<label name="pwd">123</label></p>
				<p>性别:<label name="sex">女</label></p>
				<p>生日:<label name="birth">1996-3-15</label></p>
				<p>地址:<label name="address">广州</label></p>
				<p>联系方式:<label name="phoneNum">12345678901</label></p>
				<p>简介：</p>
				<textarea style="width:70%;height: 100px; font-size:17px; font-family: '宋体';" maxlength="300">常用的数据源有：DBCP(apache提供的一个开源连接池)，
C3P0相对于DBCP数据流来说性能更优越并易于扩展，是目前最流行，使用最多的数据源

</textarea>
			</div>
			</div>
		</div>
		
</div>		
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改资料
				</h4>
			</div>
			<div class="modal-body">
				<p>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：<input type="text" name="username"><br></p>
				<p>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" id="pwd" name="pwd" maxlength="16"><span id="txt1">*</span><br></p>
				<p>确认密码：<input type="password" name="pwdV" id="pwdV"><span id="txt2">*</span><br></p>	
				<p>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="radio" name="sex" value="0">男&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="1">女<br></p>
			    <p>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input type="text" name="address" placeholder="广东广州"><br></p>
				<p>联系方式：<input type="text" maxlength="11" id="phone"><span id="txt3">*</span></p>
				<p>简介：</p>
				<textarea name="simple" id="text1" style="width:70%;height:100px;font-size:17px;"  maxlength="300" placeholder="300字以内"></textarea><span id="txt4">*</span>
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" name="close">关闭
				</button>
				<button type="button" class="btn btn-primary" name="submit">
					确定
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
	
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel1">
					上传图片
				</h4>
			</div>
			<div class="modal-body" >
			
			<div id="box"><h1 style="text-align: center;">点击或拖此上传图片</h1></div>
				<input type="file" id="imgfile" style="display: none;" onchange="imgPreview(this)"/>
			
			</div>
				<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" name="close">关闭
				</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" name="next" id="btn" data-toggle="modal" data-target="#myModal2">
					下一步
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel2">
					预览图片
				</h4>
			</div>
			<div class="modal-body" >
			<img id="image" src="img/6.jpg" width="100px" height="100px" style="border-radius: 50%;margin-left: 40%;"><br>
		
		    </div>
				<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" name="pre" data-toggle="modal" data-target="#myModal1">上一步
				</button>
				<button type="button" class="btn btn-primary" name="submit" id="btn1" data-dismiss="modal" >
					确定
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>	
	
	
	</body>
</html>
	<script type="text/javascript">
 $(function(){
 	$("#box").click(function(){
 		$("#imgfile").click()
 	});
 	$("#pwd").blur(function(){
 		var pwd =$("#pwd").val()
 		
 		
 		if(pwd.length>16||pwd.length<3){
 		
 			$("#txt1").text("密码的长度为3-16，请重新输入");
 		}else{
 			$("#txt1").text("");
 		}	
 	});
 		$("#pwdV").blur(function(){
 		var pwdV =$("#pwdV").val()
 		var pwd =$("#pwd").val()
 		if(pwd!=pwdV){
 			$("#txt2").text("两次密码输入不一致！");
 			
 		}else{
 			$("#txt2").text("")
 	   }
 	});
  	$("#phone").blur(function(){
 		var phone = $("#phone").val();
 		var num =/^1[34578]\d{9}$/;
 		if(!num.test(phone)){
 			$("#txt3").text("手机号输入有误，请重新输入！");
 		}else{
 			$("#txt3").text("");
 	   }
 	});	
 	

 	
 	
 	
 	
 	
 	
 	
 	
 		$("#text1").blur(function(){
 		var text =$("#text").val()
 		if(text.length>300){
 			$("#txt4").text("简介要在300字内，请重新输入");
 		}else{
 			$("#txt4").text("");
 		}
 	}
 	
 	);
 })
		
		
    function imgPreview(fileDom){
        //判断是否支持FileReader
        if (window.FileReader) {
            var reader = new FileReader();
        } else {
            alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
        }

        //获取文件
        var file = fileDom.files[0];
        var imageType = /^image\//;
        //是否是图片
        if (!imageType.test(file.type)) {
            alert("请选择图片！");
            return;
        }
        //读取完成
        reader.onload = function(e) {
            //获取图片dom
            var img = document.getElementById("image");
            var img1 = document.getElementById("image1");
            //图片路径设置为读取的图片
            img.src = e.target.result;
            
        };
        reader.readAsDataURL(file);
    }
    
		var box = document.getElementById('box');
		box.ondragover = function(e) {
			e.preventDefault();
		}
		box.ondrop = function(e) {
			e.preventDefault();
			var file = e.target.files ? e.target.files[0] : e.dataTransfer.files[0];
			var f = e.dataTransfer.files[0];
			fileType = f.type;
			fileSize = f.size;
			reader = new FileReader();
			var maxsize = 20480;
			var reg = /(image)/;
			if(!reg.test(fileType)) {
				alert('不是正确的数据类型！');
				return false;
			}
			if(fileSize > maxsize * 1024) {
				alert('素材大于' + maxsize + 'KB');
				return false;
			}
			var fr = new FileReader();
			fr.readAsDataURL(f);
			fr.onload = function(e) {
				var Url = this.result;
				$("#image").attr("src",Url);
			}
			var form = new FormData();
			form.append("file", f);
			$.ajax({
				type: "post",
				url: "index.html",
				data: form,
				processData: false,
				contentType: false,
				success: function(data) {
					if(data == 1) {
						alert('上传成功');
					}
				}
			});
		}
		
	
		
	</script>