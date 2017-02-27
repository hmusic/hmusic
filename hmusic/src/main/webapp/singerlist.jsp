<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>歌手列表</title>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

		
		<link rel="stylesheet" href="css/singerlist.css">  

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

		<script src="js/index.js"></script>

</head>
<body>
	<%@include file="head.jsp"%>
	<!-- 海报 START -->
	<div class="mod_singer_push">
		<div class="section_inner">
			<h2 class="singer_push_tit">万千歌手，尽在眼前</h2>
		</div>
	</div>
	<!-- 海报 END -->

	<!-- 主体 START -->
	<div class="main">
		<!-- 歌手类别栏 START -->
		<div class="mod_singer_tag">
			<div class="singer_tag_list">
				<a href="javascript:;" class="singer_tag_item singer_list_select">全部</a>
				<a href="javascript:;" class="singer_tag_item ">华语男</a>
				<a href="javascript:;" class="singer_tag_item ">华语女</a>
				<a href="javascript:;" class="singer_tag_item ">华语组合</a>
				<a href="javascript:;" class="singer_tag_item ">欧美男</a>
				<a href="javascript:;" class="singer_tag_item ">欧美女</a>
				<a href="javascript:;" class="singer_tag_item ">欧美组合</a>
			</div>
		</div>
		<!-- 歌手类别栏 END -->

		
		<div class="mod_singerlist">
			<!-- 歌手列表 带图 START -->
			<div class="mod_singer_list">
				<ul class="singer_list_list">
					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="http://localhost:8080/hmusic/singer?singerid=1" class="singer_list_cover"><img src="img/singer_v1.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="singer.jsp">薛之谦</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v2.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">周杰伦</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v3.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">陈奕迅</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v4.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">林俊杰</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v5.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">李荣浩</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v6.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">许嵩</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v7.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">张杰</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v8.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">鹿晗</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v9.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">杨宗纬</a>
							</h3>
						</div>
					</li>

					<li class="singer_list_item">
						<div class="singer_list_item_box">
							<a href="" class="singer_list_cover"><img src="img/singer_v10.jpg" class="singer_list_pic"></a>
							<h3 class="singer_list_title">
								<a href="">华晨宇</a>
							</h3>
						</div>
					</li>

				</ul>

			</div>
			<!-- 歌手列表 带图 END -->

			<!-- 歌手列表 无图 START -->
			<div class="singer_list_txt">
				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>

				<li class="singer_list_txt_item">
					<a href="" class="singer_list_txt_link ">张学友</a>
				</li>
			</div>
			<!-- 歌手列表 无图 END -->
		</div>

		<!-- 页码div START-->
		<div class="mod_page_nav" id="page_nav2">
		
		</div>
		<!-- 页码div END-->

	</div>
	<!-- 主体 END -->

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

<script type="text/javascript">
$(".singer_tag_list a").click(function(){
	$(".singer_tag_list a").removeClass('singer_list_select');
	$(this).addClass('singer_list_select');
});
</script>