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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加歌曲</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${ctx}/singer/add" enctype="multipart/form-data">  
            
      <div class="form-group">
        <div class="label">
          <label>歌手姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="singername" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>歌手性别：</label>
        </div>
        <div class="field">
         <input type="radio" name="sex" value="男" checked="checked" />男
		 <input type="radio" name="sex" value="女" />女 
          <div class="tips"></div>
        </div>
      </div>     
      
      <div class="form-group">
        <div class="label">
          <label>歌手介绍：</label>
        </div>
        <div class="field">
          <textarea name="introduction" class="input" style="height:250px; border:1px solid #ddd;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>歌手图片：</label>
        </div>
        <div class="field">
        <input type="file" name="singerphoto" class="upload"/>           
        </div>
      </div>   
      
      
      <if condition="$iscid eq 1">
        <div class="form-group">
          <div class="label">
            <label>歌手类别：</label>
          </div>
          <div class="field">
            <select name="singertypename" class="input w50">
              <option value="">请选择分类</option>
              <c:forEach items="${singerTypeList}" var="type">
              <option value="${type.singertypename}">${type.singertypename}</option>
              </c:forEach>
            </select>
            <div class="tips"></div>
          </div>
        </div>        
      </if>
     
      
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