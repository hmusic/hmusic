<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="../img/logo.png" class="rotate-hover" height="50" alt="" />后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="${ctx }/admin/logout"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="${ctx }/admin/updatepassword.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    <!-- 
    <li><a href="info.html" target="right"><span class="icon-caret-right"></span>网站设置</a></li>
    
   
    <li><a href="adv.html" target="right"><span class="icon-caret-right"></span>首页轮播</a></li>   
 	-->
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul>    
    <li><a href="${ctx }/music/musicList" target="right"><span class="icon-caret-right"></span>歌曲管理</a></li>     
    <li><a href="${ctx }/musictype/musictypeList" target="right"><span class="icon-caret-right"></span>歌曲类型管理</a></li>
    <li><a href="${ctx }/singer/singerList" target="right"><span class="icon-caret-right"></span>歌手管理</a></li>   
    <li><a href="${ctx }/singer/singertypeList" target="right"><span class="icon-caret-right"></span>歌手类别管理</a></li>     
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="admininfo.jsp" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">管理员信息</a></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="admininfo.jsp" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">

</div>
</body>
</html>