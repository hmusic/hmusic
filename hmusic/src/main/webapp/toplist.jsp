<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

		
		<link rel="stylesheet" href="css/toplist.css">  



		<!-- font-awesome图标 -->
		<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">  

		<!-- 主页css样式 -->
		<link rel="stylesheet" href="css/index.css">  

		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

		<!-- 引用js分页插件 -->
		<script src="js/jqPaginator-1.2.0/dist/jqPaginator.min.js"></script>

		<script src="js/index.js"></script>

		<script src="js/playlist.js"></script>
	</head>
<body>
     <%@include file="head.jsp" %>

	<div class="main">
		<div class="toplist_nav">
			<dl class="toplist_nav_list">
				<dt class="toplist_nav_tit">巅峰榜</dt>
				<dd class="toplist_nav_item">
				<a href="#" class="toplist_nav_link toplist_nav_link_current">巅峰榜 流行指数</a>
				</dd>

				<dd class="toplist_nav_item">
				<a href="#" class="toplist_nav_link ">巅峰榜 热歌</a>
				</dd>

				<dd class="toplist_nav_item">
				<a href="#" class="toplist_nav_link ">巅峰榜 新歌</a>
				</dd>
			</dl>
		</div>
		
		<div class="mod_toplist">
			<div class="toplist_hd">
				<h1 class="toplist_tit">巅峰榜 流行指数</h1>
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

								<div class="mod_list_menu" style="display: none;">
									<a href="index.html" class="list_menu_item js_play" >
										<i class="list_menu_icon_play"></i>
									</a>

									<a href="javascript:;" class="list_menu_item js_fav" >
										<i class="list_menu_icon_add"></i>
									</a>

									<a href="javascript:;" class="list_menu_item js_down" >
										<i class="list_menu_icon_down"></i>
									</a>

									<a href="javascript:;" class="list_menu_item js_share" >
										<i class="list_menu_icon_share"></i>
									</a>
								</div>
							</div>

							<div class="songlist_artist">
								<a href="#" class="singer_name">赵雷</a>
							</div>

							<div class="songlist_time">05:16</div>
						</div>

					</li>

					<li>
						<div class="songlist_edit"><input type="checkbox" name=""></div>
						<div class="songlist_number songlist_number_top">2</div>
						<div class="songlist_item">
							
							<div class="songlist_songname">
								<span class="songlist_songname_txt">
									<a href="#" class="songlist_cover">
										<img src="img/toplist.jpg" class="songlist_pic">
									</a>
									<a href="">理想(Live)</a>
								</span>

								<div class="mod_list_menu" style="display: none">

									<a href="index.html" class="list_menu_item js_play" >
										<i class="list_menu_icon_play"></i>
									</a>

									<a href="javascript:;" class="list_menu_item js_fav" >
										<i class="list_menu_icon_add"></i>
									</a>

									<a href="javascript:;" class="list_menu_item js_down" >
										<i class="list_menu_icon_down"></i>
									</a>

									<a href="javascript:;" class="list_menu_item js_share" >
										<i class="list_menu_icon_share"></i>
									</a>
								</div>
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

	<div class="mod_page_nav" id="page_nav2">
		
	</div>

	<!--底部START-->
	<div class="footer contain-fluid">
		<div class="section-inner">
			<div class="footer-copyright">
				<p>
					<a href="#" class="关于腾讯">关于腾讯</a> | 
			
					<a href="#" class="服务条款">服务条款</a> | 
					<a href="#" class="用户服务协议">用户服务协议</a> | 
					<a href="#" class="广告服务">广告服务</a> | 
					<a href="#" class="客服中心">客服中心</a>
				</p>

				<p>
					Copyright © 1998 - 2017 Tencent. 
					<a href="#" class="All Rights Reserved">All Rights Reserved.</a>
				</p>

				<p>
					腾讯公司 
					<a href="#" title="版权所有">版权所有</a>
					<a href="#" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
				</p>
			</div>
		</div>
	</div>
	<!--底部END-->
</body>
</html>


<script type="text/javascript">
var myDate = new Date();
var day = myDate.toLocaleDateString();
day = day.replace(/\//g ,"-");
	$(".js_choose_day").text(day);
</script>

<script type="text/javascript">
	

	
</script>


<script type="text/javascript">
    
    $.jqPaginator('#page_nav2', {
        totalPages: 100,
        visiblePages: 5,
        currentPage: 3,
        prev: '<li class="prev"><a class="prev" href="javascript:;"><</a></li>',
        next: '<li class="next"><a class="next" href="javascript:;">></a></li>',
        page: '<li class="page"><a class="page" href="javascript:;">{{page}}</a></li>',
        onPageChange: function (num, type) {
            $('#p2').text(type + '：' + num);
        }
    });
</script>