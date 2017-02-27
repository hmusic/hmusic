<%@page import="com.hmusic.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="js/head.js"></script>
</head>

<body>

<!-- Modal -->
	<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
     			<div class="modal-header">
       				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        			<h4 class="modal-title" id="myModalLabel">注册</h4>
     			</div>
	      		<form class="form-horizontal" id="registerForm" action="/hmusic/register.do" method="post" onsubmit="return check_form()">
	     		<div class="modal-body login-form">
	        
	        		<div class="form-group">
	        			<label class="col-sm-3 control-label">用户名</label>
	        			<div class="col-sm-6">
	        				<input type="text" class="form-control" id="username" placeholder="用户名" name="username" onblur="checkUserName()">
	        			</div>
	        			<div class="col-sm-3">
                   			<span id="nameInfo" style="color: red"></span>
           				</div>
	        		</div>

	        		<div class="form-group">
	        			<label class="col-sm-3 control-label">密码</label>
	        			<div class="col-sm-6">
	        				<input type="password" class="form-control" id="userpassword" placeholder="密码" name="userpassword" onblur="checkPassword()">
	        			</div>
	        			<div class="col-sm-3">
                			<span id="passwordInfo" style="color: red"></span>
            			</div>
	        		</div>

	        		<div class="form-group">
	        			<label class="col-sm-3 control-label">确认密码</label>
	        			<div class="col-sm-6">
	        				<input type="password" class="form-control" id="userpassword2" placeholder="确认密码" name="userpassword2" onblur="checkRepassword()">
	        			</div>
	        			<div class="col-sm-3">
                			<span id="repasswordInfo" style="color: red"></span>
            			</div>
	        		</div>

      <!--      	<div class="form-group">
	        			<label class="col-sm-3 control-label">邮箱</label>
	        			<div class="col-sm-6">
	        				<input type="email" class="form-control" id="email" placeholder="邮箱" name="email">
	        			</div>
	        		</div>  -->  
        		</div>
	     		<div class="modal-footer">
	      			<button type="submit" class="btn btn-primary button-center" data-target="#login" onclick="validateForm()">注册</button>
	      			<div class="col-sm-3">
	      	            <label id="submit" style="color: red"></label>
      	            </div>
	      			<label>已有账号&nbsp;&nbsp;</label>
	        		<button type="button" class="btn btn-success "  data-toggle="modal" data-target="#login" data-dismiss="modal">登录</button>
	        	</div>
	            </form>
   			</div>
  	    </div>
	</div>

	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
     			<div class="modal-header">
       				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        			<h4 class="modal-title" id="myModalLabel">登录</h4>
     			</div>
	      		<form class="form-horizontal" action="/hmusic/login.do" method="post">
	     		<div class="modal-body login-form">
	        
	        		<div class="form-group">
	        			<label class="col-sm-3 control-label">用户名</label>
	        			<div class="col-sm-6">
	        				<input type="text" class="form-control" id="username" placeholder="用户名" name="username">
	        			</div>
	        		</div>

	        		<div class="form-group">
	        			<label class="col-sm-3 control-label">密码</label>
	        			<div class="col-sm-6">
	        				<input type="password" class="form-control" id="userpassword" placeholder="密码" name="userpassword">
	        			</div>
	        		</div>

        		</div>
	     		<div class="modal-footer">
	      			<button type="submit" class="btn btn-primary button-center">登录</button>
	      	
	      			<label>还没有有账号&nbsp;&nbsp;</label>
	        		<button type="button" class="btn btn-success " data-toggle="modal" data-target="#register" data-dismiss="modal">注册</button>
	        	</div>
	            </form>
   			</div>
  	    </div>
	</div>


		<div class="contain-fluid index-header">
			<div class="row">
				<div class="col-md-offset-2 col-md-8 top-contain">
					<h1 class="top-logo">
						<a href="#">
							<img src="img/logo.png">

						</a>

					</h1>	
					
					<div class="top-search col-md-4 col-md-offset-2 ">
						 <input type="text" class="form-control search-width" placeholder="Search">
						 <button type="submit" class="btn btn-default float-left"> <i class="fa fa-search "></i></button>
						 <a style="color:red ">${error}</a>
					</div>
					
					
		        <c:choose>
		        
				 <c:when test="${user.username==null}">
					<div class=" col-md-1 top-login">
						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#login">登录</button>
					</div> 
				 </c:when>
				 
				 <c:when test="${user.username!=null}">
				    <div class="col-md-1 top-login">
						<a href="userinfo.jsp">${user.username}</a>
					</div> 
					<div class=" col-md-1 top-login margin-left">
						<a  style="color:red " href="/hmusic/logout">注销</a>
					</div> 
				 </c:when>
				 
				</c:choose>
				</div>

				<div class="col-md-offset-3 col-md-6 top-menu">
					<ul class="menu-link">
						<li class="col-md-offset-2 col-md-2 top_subnav_item"><a href="index.jsp" class="top_item_current">首页</a></li>
					<li class="col-md-2 top_subnav_item"><a href="singerlist.jsp" class="top_item ">歌手</a></li>
					<li class="col-md-2 top_subnav_item"><a href="songlist.jsp" class="top_item">歌曲</a></li>
					<li class="col-md-2 top_subnav_item"><a href="toplist.jsp" class="top_item">排行榜</a></li>
					</ul>

				</div>
				
			</div>

		</div>
</body>
</html>