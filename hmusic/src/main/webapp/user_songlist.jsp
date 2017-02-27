<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>我的歌单</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

		
		<link rel="stylesheet" href="css/user_songlist.css">  

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

		<script src="js/user_songlist.js"></script>
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
		</div>
	</div>	
	<div class="main">
		<div class="toplist_nav">
			<dl class="toplist_nav_list">
				<dt class="toplist_nav_tit">我的歌单</dt>
				<dd class="toplist_nav_item">
				<a href="#" class="toplist_nav_link toplist_nav_link_current">默认歌单</a>
				</dd>

				<dd class="toplist_nav_item">
				<a href="#" class="toplist_nav_link ">我最喜欢</a>
				</dd>

				<dd class="toplist_nav_item">
				<a href="#" class="toplist_nav_link ">新建歌单</a>
				</dd>
			</dl>
		</div>

		<div class="mod_toplist">
			<div class="toplist_hd">
				<h1 class="toplist_tit">默认歌单</h1>
				<span class="js_choose_day"></span>
			</div>

			<div class="mod_songlist_toolbar">
				<a href="#" class="button_size button_current btn btn-success">
					<i class="fa fa-play"></i>
					播放全部
				</a>

				<a href="#" class="button_size btn btn-default">
					<i class="fa fa-plus-square "></i>
					添加到
				</a>

				<a href="#" class="button_size btn btn-default">
					<i class="fa fa-download"></i>
					下载
				</a>
			</div>

			<div class="mod_songlist">
				<div class="songlist_header">
					<span class="songlist_header_name">歌曲</span>
					<span class="songlist_header_author">歌手</span>
					<span class="songlist_header_time">时长</span>
				</div>
				<ul class="songlist_list">
					<li>
						<div class="songlist_edit"><input type="checkbox" name=""></div>
						<div class="songlist_number songlist_number_top">1</div>
						<div class="songlist_item">
							
							<div class="songlist_songname">
								<span class="songlist_songname_txt">
									<a href="#" class="songlist_cover">
										<img src="img/toplist.jpg" class="songlist_pic">
									</a>
									<a href="">理想(Live)</a>
								</span>
							</div>

							<div class="songlist_artist">
								<a href="#" class="singer_name">赵雷</a>
							</div>

							<div class="songlist_time">05:16</div>
						</div>

					</li>
				</ul>
			</div>

			
		</div>
	</div>	
</body>
</html>