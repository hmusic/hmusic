<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>修改密码</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

		
		<link rel="stylesheet" href="css/userinfo.css">  

		<!-- font-awesome图标 -->
		<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">  

		<!-- 主页css样式 -->
		<link rel="stylesheet" href="css/index.css">

		<!-- 页码css样式 -->
		<link rel="stylesheet" href="css/page_toolbar.css">

		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

		<!-- 引用js分页插件 -->
		<script src="js/jqPaginator-1.2.0/dist/jqPaginator.min.js"></script>

		<script src="js/reset_password.js"></script>
</head>
<body>

    <%@include file="head.jsp" %>
    <div class="g-bd">
		<div class="g-wrap" id="baseBox">
			<div class="u-title u-title-2">
				<h3>
					<span class="f-ff2"><a href="user_songlist.jsp">我的歌单</a></span>
					<span class="f-ff2"><a href="userinfo.jsp">个人信息</a></span>
					<span class="f-ff2" id="reset_password"><a href="reset_password.jsp">修改密码</a></span>
				</h3>
			</div>

			<form id="update_form" method="post" action="/hmusic/resetpassword.do">
				<div class="n-base">
					<div class="frm m-frm">
						
						<div class="form">
							<label class="lab ">旧密码：</label>
							<input type="password" class="u-txt txt" id="old_password" maxlength="30" name="oldpassword">
							<div class="u-err" id="old_password_err" style="display: none;">
								<i class="fa fa-exclamation-circle " style=""></i>
								<span>旧密码不能为空！</span>
							</div>
						</div>

						<div class="form">
							<label class="lab">新密码：</label>
							<input type="password" class="u-txt txt" id="new_password" maxlength="30" name="newpassword">
							<div class="u-err" id="new_password_err" style="display: none;">
								<i class="fa fa-exclamation-circle " style=""></i>
								<span>新密码不能为空！</span>
							</div>
						</div>

						<div class="form">
							<label class="lab">确认新密码：</label>
							<input type="password" class="u-txt txt" id="new_password2" maxlength="30">
							<div class="u-err" id="new_password_err2" style="display: none;">
								<i class="fa fa-exclamation-circle " style=""></i>
								<span>两次密码不一致！</span>
							</div>
						</div>
						
						<div class="form">
						    <a style="color:red;font-size:20px">${passwordsuccess}</a>
						    <a style="color:red;font-size:20px;">${passworderror}</a>
						</div>

						<div class="form ft">
							<input type="submit" class="btn btn-primary" value="保存">
							
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
