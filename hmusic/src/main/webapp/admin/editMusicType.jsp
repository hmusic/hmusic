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
<title></title>
<link rel="stylesheet" href="${ctx}/admin/css/pintuer.css">
<link rel="stylesheet" href="${ctx}/admin/css/admin.css">
<script src="${ctx}/admin/js/jquery.js"></script>
<script src="${ctx}/admin/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改歌曲类别</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${ctx}/musictype/edit">  
     
      <div class="form-group">
          <div class="label">
            <label>歌曲类别ID：</label>
          </div>
        <div class="field">
          <input type="text" readonly="readonly" class="input w50" value="${musictype.musictypeid}" name="musictypeid" />
          <div class="tips"></div>
        </div>
          
        </div> 
       <div class="form-group">
          <div class="label">
            <label>歌曲类别名称：</label>
          </div>
        <div class="field">
          <input type="text" class="input w50" value="${musictype.musictypename}" name="musictypename" data-validate="required:请输入歌曲类别名" />
          <div class="tips"></div>
        </div>
          
        </div> 
     
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>