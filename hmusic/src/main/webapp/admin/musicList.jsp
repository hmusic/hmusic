<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${ctx}/admin/css/pintuer.css">
<link rel="stylesheet" href="${ctx}/admin/css/admin.css">
<!-- font-awesome图标 -->
<link rel="stylesheet" href="${ctx}/font-awesome/css/font-awesome.min.css">

<script src="${ctx}/admin/js/jquery.js"></script>
<script src="${ctx}/admin/js/pintuer.js"></script>

<title>显示歌曲列表</title>
<base href="${ctx}">
<script src="${ctx}/admin/js/jquery.min.js"></script>

<script type="text/javascript">

</script>
</head>
<body>

	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder"> 歌曲管理</strong>
		</div>
		<div class="padding border-bottom">
			<ul class="search">
				<li><a class="button border-main icon-plus-square-o"
					href="${ctx}/music/addLoad"> 添加歌曲</a>
					<button type="button" class="button border-green" id="checkall">
						<span class="icon-check"></span> 全选
					</button>
					<button type="submit" class="button border-red">
						<span class="icon-trash-o"></span> 批量删除
					</button></li>
				<div style="float: right;">
					<input type="text" placeholder="请输入搜索关键字" name="keywords"
						class="input"
						style="width: 250px; line-height: 17px; display: inline-block" />
					<a href="javascript:void(0)" class="button border-main icon-search"
						onclick="changesearch()"> 搜索</a>
					</li>
				</div>
			</ul>
		</div>
		<table class="table table-hover text-center" id="musicTable">
			<tr>
				<th width="120">歌曲ID</th>
				<th>歌曲名</th>
				<!--  <th>歌曲封面路径</th>-->
				<th>歌曲时长</th>
				<th>歌手</th>
				<th>歌曲类型</th>				
			<!-- 	<th>歌曲路径</th>
				<th>歌词路径</th>-->
				<th>点击量</th>
				<th>下载量</th>
				<!-- <th width="25%">歌曲类别</th> -->
				<th width="120">更新时间</th>
				<th>操作</th>
			</tr>
			<%----%>
			<c:forEach items="${musicFullList}" var="musicfull">
				<tr>
					<td><input type="checkbox" name="id[]" value="1" />${musicfull.music.musicid}</td>
					<td>${musicfull.music.musicname}</td>
				<!-- 	<td>${musicfull.music.musicphoto}</td>-->	
					<td>${musicfull.music.duration}</td>
					<td>${musicfull.singer.singername}</td>
					<td>${musicfull.musictype.musictypename}</td>
			<!-- 	<td>${musicfull.music.musicpath}</td>
					<td>${musicfull.music.lyricspath}</td> -->	
					<td>${musicfull.music.clickrate}</td>
					<td>${musicfull.music.downloadrate}</td>					
					<td><fmt:formatDate value="${musicfull.music.uploadtime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td>
						<div class="button-group">
							<a class="button border-main"
								href="${ctx}/music/editLoad?musicid=${musicfull.music.musicid}"><span
								class="icon-edit"></span> 修改</a> <a class="button border-red"
								href="javascript:void(0)" onclick="return del(${musicfull.music.musicid})"><span
								class="icon-trash-o"></span> 删除</a>
						</div>
					</td>
				</tr>
			</c:forEach>

		</table>

		<div class="pagelist">
			<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
				href="">3</a><a href="">下一页</a><a href="">尾页</a>
		</div>
	</div>

	<script type="text/javascript">

function del(id){
	if(confirm("您确定要删除吗?")){		
		window.location.href = "${ctx}/music/delete?musicid="+id+"";
	}
}

$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false; 		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

</script>
</body>
</html>