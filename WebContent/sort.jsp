<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
     
      <link rel="stylesheet" href="css/sort.css" />
	   <link rel="stylesheet" href="css/bootstrap.min.css"/>
		<link href="css/base.css" rel="stylesheet">
		<link href="css/index.css" rel="stylesheet">
		<link href="css/m.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.css" />
 	<link rel="stylesheet" href="css/myselfInfo.css" />

  		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
<script>
	$(function(){
	$("#add").mousemove(function(){
		$("#add").attr({
			"style":"background:black;color:white",
		
		});
	});
  $("#add").mouseout(function(){
		$("#add").attr({
			"style":"background:white;color:black",
		
		});
	});
	
});	
	
</script>
<style>
	
     
	
</style>
   

		
		</head>
	<body id="b">
		<div class="content">
			
				<div class="navigation">
				<ul class="nav">
					<li class="navli" id="nli"><a href="#">查看主页</a></li>
					<li class="navli"  id="nli"><a href="#"><span class="glyphicon glyphicon-pencil">写博客</a></li>
					<li class="navli"  id="nli"><a href="#">文章管理</a></li>
					<li class="navli"  id="nli"><a href="#">评论管理</a></li>
					<li class="navli"  id="nli"><a href="#">留言管理</a></li>
					<li class="navli"  id="nli"><a href="sort.html" style="background-color:#000000;
                    color: white;">个人分类管理</a></li>
				</ul>
			</div>
			<div class="right-aside">
			<div class="addsort"><label>个人分类管理</label>
			
				
			
			<input type="text" name="sort" class="sort" id="sort">
		
				<input type="button" id="add" name="add" class="add" value="添加分类"/>
			</div>	
			<div>
			<table width="95%" cellspacing="0">
				<tr class="first">
					<td>类型</td>
					<td width="45%"></td>
					<td>操作</td>
					
					<td>是否显示到前台</td>
					<td>文章数</td>
					
					
				</tr>
				
					<tr>
					<td>aa</td>
					<td width="45%"></td>
					<td><a href="#" style="color: #2AABD2;">编辑</a>|<a href="#" style="color: red;">删除</a></td>
					
					<td>   
						<div class="slideThree">  
                        <input type="checkbox" value="None" id="slideThree" name="check" checked />
                        <label for="slideThree"></label>
                        </div>
					</td>
					<td>0</td>
					
					
				</tr>
			</table>
		   </div>
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
