<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">


<link rel="stylesheet" href="css/singer.css">

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

<script src="js/playlist.js"></script>
</head>
<body class="pc">

	<%@include file="head.jsp"%>

	<div class="main">
		<div class="mod_data">
			<span class="data_cover"> <a href="" class=""
				style="display: none;"> <img src="${singer.singerphoto}"
					class="data_photo">
			</a> <img src="${singer.singerphoto}" class="data_photo">
			</span>

			<div class="data_cont">
				<div class="data_name">
					<h1 class="data_name_txt">${singer.singername}</h1>
				</div>

				<div class="data_desc" id="singer_desc">
					<div class="data_desc_txt">
						
						${fn:replace(fn:replace(singer.introduction,"<p>",""),"</p>","")}
					</div>
					<a href="javascript:;" id="desc_show">[更多]</a>
				</div>

				<ul class="mod_data_statistic">
					<li class="data_statistic_item"><a href="#"> <span
							class="data_statistic_tit">单曲</span> <strong
							class="data_statistic_number"> ${fn:length(musics)}</strong>
					</a></li>
				</ul>

				<div class="data_actions">
					<a href="#" class="mod_btn_green"> <i class="fa fa-play"></i>
						播放歌手热门歌曲
					</a>
				</div>
			</div>
		</div>

		<div class="mod_part_detail" id="song_tab">
			<div class="part_detail_hd">
				<h2 class="part_detail_tit">单曲 ${fn:length(musics)}</h2>
			</div>

			<div class="js_content">
				<div class="mod_songlist_toolbar">
					<a href="#" class="button_size btn btn-default"> <i
						class="fa fa-play"></i> 播放全部
					</a> <a href="#" class="button_size btn btn-default"> <i
						class="fa fa-plus-square "></i> 添加到
					</a> <a href="#" class="button_size btn btn-default"> <i
						class="fa fa-download"></i> 下载
					</a>
				</div>

				<div class="mod_songlist">
					<div class="songlist_header">
						<span class="songlist_header_name">歌曲</span> <span
							class="songlist_header_album">专辑</span> <span
							class="songlist_header_time">时长</span>
					</div>

					<ul class="songlist_list" id="song_box">
						<c:forEach items="${musics}" var="music" varStatus="status">
							<li>
								<div class="songlist_rank">
									<div class="songlist_edit">
										<input type="checkbox" class="songlist_checkbox">
									</div>
									<div class="songlist_number ">${status.count}</div>
								</div>
								<div class="songlist_item">
									<div class="songlist_songname">
										<span class="songlist_songname_txt"><a href="">${music.music.musicname}</a></span>

										<div class="mod_list_menu" style="display: none;">
											<a href="index.html" class="list_menu_item js_play"> <i
												class="list_menu_icon_play"></i>
											</a> <a href="javascript:;" class="list_menu_item js_fav"> <i
												class="list_menu_icon_add"></i>
											</a> <a href="javascript:;" class="list_menu_item js_down">
												<i class="list_menu_icon_down"></i>
											</a> <a href="javascript:;" class="list_menu_item js_share">
												<i class="list_menu_icon_share"></i>
											</a>
										</div>
									</div>

									<div class="songlist_artist">
										<span class="singer_name">${music.singer.singername}</span>
									</div>



									<div class="songlist_time">${fn:substring(music.music.duration,3,8)}</div>
								</div>
							</li>
						</c:forEach>
						

	
					</ul>
				</div>
			</div>
		</div>

		<div class="popup_data_detail" id="popup_data_detail"
			style="z-index: 100; display: none;">
			<div class="popup_data_detail_cont">
			<h3 class="popup_data_detail_tit">歌手简介</h3>
				${singer.introduction}
			</div>
		</div>
	</div>
	<!-- 页码div START-->
	<div class="mod_page_nav" id="page_nav2"></div>
	<!-- 页码div END-->

	<!--底部START-->
	<div class="footer contain-fluid">
		<div class="section-inner">
			<div class="footer-copyright">
				<p>
					<a href="#" class="关于腾讯">关于腾讯</a> | <a href="#" class="服务条款">服务条款</a>
					| <a href="#" class="用户服务协议">用户服务协议</a> | <a href="#" class="广告服务">广告服务</a>
					| <a href="#" class="客服中心">客服中心</a>
				</p>

				<p>
					Copyright © 1998 - 2017 Tencent. <a href="#"
						class="All Rights Reserved">All Rights Reserved.</a>
				</p>

				<p>
					腾讯公司 <a href="#" title="版权所有">版权所有</a> <a href="#"
						title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
				</p>
			</div>
		</div>
	</div>
	<!--底部END-->


</body>
</html>

<script type="text/javascript">
	$('#desc_show').click(function(event) {
		$('#popup_data_detail').show();
		event.stopPropagation();
	});

	$('.pc').click(function() {
		$('#popup_data_detail').hide();
	});
</script>

<script type="text/javascript">
	$
			.jqPaginator(
					'#page_nav2',
					{
						totalPages : 100,
						visiblePages : 5,
						currentPage : 3,
						prev : '<li class="prev"><a class="prev" href="javascript:;"><</a></li>',
						next : '<li class="next"><a class="next" href="javascript:;">></a></li>',
						page : '<li class="page"><a class="page" href="javascript:;">{{page}}</a></li>',
						onPageChange : function(num, type) {
							$('#p2').text(type + '：' + num);
						}
					});
</script>