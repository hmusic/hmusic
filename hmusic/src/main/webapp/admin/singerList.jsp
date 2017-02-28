<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${ctx}/admin/css/pintuer.css">
<link rel="stylesheet" href="${ctx}/admin/css/admin.css">
<script src="${ctx}/admin/js/jquery.js"></script>
<script src="${ctx}/admin/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 歌手列表</strong></div>
  <div class="padding border-bottom">
    <button type="button" class="button border-yellow" onclick="window.location.href='${ctx}/singer/addLoad'"><span class="icon-plus-square-o"></span> 添加歌手</button>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="5%">歌手ID</th>
      <th width="10%">姓名</th>
      <th width="5%">性别</th>
      <th width="20%">介绍</th>
      <th width="15%">操作</th>
    </tr>
    <c:forEach items="${singerList}" var="singer">
    <tr>
      <td>${singer.singerid }</td>
      <td>${singer.singername }</td>
      <td>${singer.sex }</td>
      <td>${singer.introduction }</td>
      <td><div class="button-group"> <a class="button border-main" href="${ctx }/singer/editSinger"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(${singer.singerid})"><span class="icon-trash-o"></span> 删除</a> </div></td>
    </tr>
    </c:forEach>
  </table>
</div>
<script type="text/javascript">
function del(id){
	if(confirm("您确定要删除吗?")){			
		window.location.href = "${ctx}/singer/delete?singerid="+id+"";
	}
}
</script>

</body>
</html>