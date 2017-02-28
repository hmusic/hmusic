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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改歌曲</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" enctype="multipart/form-data" action="${ctx}/singer/edit">  
      
      <div class="form-group">
        <div class="label">
          <label>歌手ID：</label>
        </div>
        <div class="field">
         <label  style="line-height:33px;">${singer.singerid }</label>
         <input type="text" hidden="true" name="singerid" value="${singer.singerid }"/>
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>歌手姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${singer.singername }" name="singername" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>歌手性别：</label>
        </div>
        <div class="field">         
        <label style="line-height:33px;" for="male">男</label> 
        <input type="radio" name="sex" id="male" value="男" <c:if test="${singer.sex=='男'}"> checked='checked'</c:if> /> 
        <label style="line-height:33px;" for="female">女</label> 
        <input type="radio" name="sex" id="female" value="女" <c:if test="${singer.sex=='女'}">checked='checked'</c:if>/>  
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>歌手介绍：</label>
        </div>
        <div class="field">
          <textarea name="introduction" class="input" style="height:250px; border:1px solid #ddd;">
          ${singer.introduction }
          </textarea>
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>歌手图片：</label>
        </div>
        <div class="field">
        <img alt="" src="${singer.singerphoto }">
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
              <option value="${singertype.singertypename }">当前分类：${singertype.singertypename }</option>
              <c:forEach items="${singertypeList}" var="type">
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