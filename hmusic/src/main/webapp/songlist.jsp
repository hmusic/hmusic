<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>歌曲列表</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

		
		<link rel="stylesheet" href="css/songlist.css">  

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
	<!-- 主体代码 START -->
	<div class="main">
		<!-- 歌曲类别 START -->
		<div class="mod_tag">
			<div class="tag_list" id="song_language">
				<span class="tag_tit " >语种</span>
				<a href="javascript:;" class="tag_item tag_item_select">全部</a>
				<a href="javascript:;" class="tag_item ">国语</a>
				<a href="javascript:;" class="tag_item ">粤语</a>
				<a href="javascript:;" class="tag_item ">英语</a>
				<a href="javascript:;" class="tag_item ">韩语</a>
				<a href="javascript:;" class="tag_item ">日语</a>
			</div>
			
			<div class="tag_list" id="song_style">
				<span class="tag_tit" > 流派</span>
				<a href="javascript:;" class="tag_item tag_item_select">全部</a>
				<a href="javascript:;" class="tag_item ">流行</a>
				<a href="javascript:;" class="tag_item ">古典</a>
				<a href="javascript:;" class="tag_item ">爵士</a>
				<a href="javascript:;" class="tag_item ">摇滚</a>
				<a href="javascript:;" class="tag_item ">电子</a>
				<a href="javascript:;" class="tag_item ">拉丁</a>
				<a href="javascript:;" class="tag_item ">嘻哈</a>
				<a href="javascript:;" class="tag_item ">原声</a>
				<a href="javascript:;" class="tag_item ">乡村</a>
				<a href="javascript:;" class="tag_item ">民谣</a>
			</div>

			<div class="tag_list" id="song_time">
				<span class="tag_tit" > 年代</span>
				<a href="javascript:;" class="tag_item tag_item_select">全部</a>
				<a href="javascript:;" class="tag_item ">2017</a>
				<a href="javascript:;" class="tag_item ">2016</a>
				<a href="javascript:;" class="tag_item ">2015</a>
				<a href="javascript:;" class="tag_item ">2014</a>
				<a href="javascript:;" class="tag_item ">一零年代</a>
				<a href="javascript:;" class="tag_item ">零零年代</a>
				<a href="javascript:;" class="tag_item ">九十年代</a>
				<a href="javascript:;" class="tag_item ">八十年代</a>
				<a href="javascript:;" class="tag_item ">七十年代</a>
				<a href="javascript:;" class="tag_item ">六十年代</a>
			</div>
		</div>
		<!-- 歌曲类别 END -->

		<!-- 歌曲展示 START -->
		<div class="mod_part_detail">
			<div class="part_detail_hd">
				<h2 class="part_detail_tit">全部歌曲</h2>

				<div class="part_switch js_sort">
					<a href="javascript:;" class="part_switch_item part_switch_item_left part_switch_item_select">最新</a>
					<a href="javascript:;" class="part_switch_item part_switch_item_right">最热</a>
				</div>
			</div>
		</div>

		<div class="mod_playlist mod_playlist_all">
			<ul class="playlist_list" id="song_list">
				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="mod_cover playlist_cover">
							<a href="#" class="js_song">
								<img src="img/song1.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="#" class="js_song">
								<img src="img/song2.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song3.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song4.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song5.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song6.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song7.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song8.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song9.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>

				<li class="playlist_item">
					<div class="playlist_item_box">
						<div class="playlist_cover mod_cover">
							<a href="" class="js_song">
								<img src="img/song10.jpg" class="playlist_pic">
								<i class="mod_cover-icon_play"></i>
							</a>	
						</div>
						<h4 class="playlist_title">
							<span class="playlist_title_txt">
								<a href="" class="js_song">La La Land (Original Motion Picture Soundtrack) (爱乐之城 电影原声带)</a>
							</span>
						</h4>
						<div class="playlist_author">
						<a href="" class="js_singer">Various Artists (欧美群星)</a>
							
						</div>
						<div class="playlist_other">2016-12-09</div>
					</div>
				</li>
			</ul>

			<!-- 页码div START-->
			<div class="mod_page_nav" id="page_nav2">
			
			</div>
			<!-- 页码div END-->
		</div>
		<!-- 歌曲展示 END -->
	</div>
	<!-- 主体代码 END -->

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
$("#song_language a").click(function(){
	$("#song_language a").removeClass('tag_item_select');
	$(this).addClass('tag_item_select');
});

$("#song_style a").click(function(){
	$("#song_style a").removeClass('tag_item_select');
	$(this).addClass('tag_item_select');
});

$("#song_time a").click(function(){
	$("#song_time a").removeClass('tag_item_select');
	$(this).addClass('tag_item_select');
});

$(".js_sort a").click(function(){
	$(".js_sort a").removeClass('part_switch_item_select');
	$(this).addClass('part_switch_item_select');
});
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

