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
    <form method="post" class="form-x" action="${ctx}/music/edit">  
      <div class="form-group">
        <div class="label">
          <label>歌曲名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${musicfull.music.musicname }" name="musicname" data-validate="required:请输入歌曲名" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>封面路径：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" disabled="disabled" value="${musicfull.music.musicphoto }" name="musicphoto" data-validate="required:请输入封面" />
          <div class="tips"></div>
        </div>
      </div>
     
      <div class="form-group">
        <div class="label">
          <label>歌曲时长：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" disabled="disabled" value="${musicfull.music.duration }" name="duration" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      
       <div class="form-group">
        <div class="label">
          <label>歌手：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${musicfull.singer.singername }" name="singername" data-validate="required:请输入歌手名" />
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
          <div class="label">
            <label>歌曲类别：</label>
          </div>
          <div class="field">
             <select name="musictypename" class="input w50">
              <option value="">当前分类：${musicfull.musictype.musictypename}</option>
              <c:forEach items="${musictypelist}" var="type">
              <option value="${type.musictypename}">${type.musictypename}</option>
              </c:forEach>
            </select>
            <div class="tips"></div>
          </div>
        </div>        
      
      <div class="form-group">
        <div class="label">
          <label>歌曲路径：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" disabled="disabled" value="${musicfull.music.musicpath }" name="musicpath" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>歌词路径：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" disabled="disabled" value="${musicfull.music.lyricspath }" name="lyricspath" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>点击量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" disabled="disabled" name="clickrate" value="${musicfull.music.clickrate }" data-validate="member:只能为数字"  />
          <div class="tips"></div>
        </div>
      </div>
	  <div class="form-group">
        <div class="label">
          <label>下载量：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" disabled="disabled" name="downloadrate" value="${musicfull.music.downloadrate }" data-validate="member:只能为数字"  />
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