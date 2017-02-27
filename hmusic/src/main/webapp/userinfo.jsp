<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>用户个人中心</title>

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

		<script src="js/userinfo.js"></script>
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

			<form id="update_form" action="/hmusic/edituserinfo.do" method="post">
				<div class="n-base">
					<div class="frm m-frm">

						<div class="itm">
							<label class="lab">性别：</label>
							<div>
							<c:set value="${user.sex}" var="sex" scope="page"></c:set>
								<label class="check">
									<input type="radio" name="sex" class="u-rdi" value="男" <c:if test="${sex eq '男'}"> checked="checked"</c:if>>
									<span class="sex">男</span>
								</label>
								<label class="check">
									<input type="radio" name="sex" class="u-rdi" value="女" <c:if test="${sex eq '女'}"> checked="checked"</c:if>>
									<span class="sex">女</span>
								</label>	
								
							</div>
						</div>

						<div class="itm">
							<label class="lab">电话：</label>
							<input type="text" class="u-txt txt" id="telephone" maxlength="11" value="${user.telephone}" name="telephone">
							<div class="u-err" id="tel-err" style="display: none;">
								<i class="fa fa-exclamation-circle " style=""></i>
								<span>电话号码不正确！</span>
							</div>
						</div>

						<div class="itm">
							<label class="lab">邮箱：</label>
							<input type="email" class="u-txt txt" id="email" maxlength="30" value="${user.email}" name="email">
						</div>

						<div class="itm ft">
							<input type="submit" class="btn btn-primary" value="保存">
						</div>
					</div>

					<div class="avatar">
						<img src="img/user_photo.jpg" id="user_photo">
						<label class="button-change-avatar text-center mt-3 width-full position-relative">
							上传照片
							<input type="file" class="manual-file-chooser file-choose" id="file_upload" accept="*.jpg,*.png"  >
						</label>
						
					</div>


				</div>
			</form>
		</div>
	</div>
</body>
</html>