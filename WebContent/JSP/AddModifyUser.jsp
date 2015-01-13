<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>家庭理财系统-信息维护</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="JS/bootstrap.js"></script>
	
	<link rel="stylesheet" type="text/css" href="CSS/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="CSS/flat-ui.css">
	<link rel="stylesheet" type="text/css" href="CSS/index.css">
	<link rel="stylesheet" type="text/css" href="CSS/screen.css">
  </head>
  
  <body class="default">
    <header> 
		<nav class="container"> 
			<a href="index.jsp" class="surreal-logo surreal-logo-dark"></a>
			<a href="#" class="mobile-menu-toggle"> <i class="fa fa-bars"></i></a>
			<span class="menu-items"> 
				<a href="/features">特&nbsp色</a> 
				<a href="/contact">联系我们</a> 
				<span class="extras"> 
					<span class="glyphicon glyphicon-user"></span>${familyUser.username } 
					<a href="#MaincontentImg">注&nbsp销</a> 
				</span>
			</span> 
		</nav> 
	</header>
	
	<div>
		<div class="row" style="margin-top:50px">

			<div class="col-md-3">
				<ul>
				<li><a id="ex1" href="findAllAccounts"><span class="circle littlecircle-lg littlecircle-blue"><i
							class="glyphicon glyphicon-sort"
						></i></span></a></li>
				<li><h5>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp账单</h5></li>
				<li><a href="findAllAccountsForReport"><span class="circle littlecircle-lg littlecircle-green"><i
							class="glyphicon glyphicon-list-alt"
						></i></span></a></li>
				<li><h5>&nbsp&nbsp&nbsp报表导出</h5></li>
				<li><a href="findAllMembers"><span class="circle littlecircle-lg littlecircle-orange"><i
							class="glyphicon glyphicon-pencil"
						></i></span></a>
					<h5>家庭信息管理</h5></li>
			</ul>
			</div>
			<form action="modifyuser?method=save" method="post">
				<div class="col-md-3">
					<div class="form-group has-success">
						<input style="margin-bottom:20px;display:none" type="text"  class="form-control input-sm" name="familyUser.user_id" value="${familyUser.user_id}"/>
						<input style="margin-bottom:20px;display:none" type="text"  class="form-control input-sm" name="familyUser.family.family_id" value="${familyUser.family.family_id}"/>
						<input style="margin-bottom:20px;display:none" type="text"  class="form-control input-sm" name="familyUser.user_type" value="${familyUser.user_type}"/>
						<input style="margin-bottom:20px" type="text"  class="form-control input-sm" placeholder="姓名" name="familyUser.username" value="${familyUser.username}"/>
						<input style="margin-bottom:20px" type="password"  class="form-control input-sm" placeholder="Password" name="familyUser.password" value="${familyUser.password}"/>
						<input style="margin-bottom:20px" type="text"  class="form-control input-sm" placeholder="Phone" name="familyUser.phone" value="${familyUser.phone}"/>
						<input style="margin-bottom:20px" type="text"  class="form-control input-sm" placeholder="E-mail" name="familyUser.email" value="${familyUser.email}"/>
						<input style="margin-bottom:20px" type="text"  class="form-control input-sm" placeholder="Remark" name="familyUser.remark" value="${familyUser.remark}"/>
					</div>
				</div>
				<div class="col-md-3" >
					<button style="margin-top:250px" class="btn btn-block btn-sm btn-primary">保&nbsp存>></button>
				</div>
			</form>
		</div>

	</div>
	<footer>
		<div class="container">
			<nav style="margin-top:10px">
				<a href="#" class="surreal-logo2 surreal-logo-light"></a>
				<a href="#">Welcome to use our product</a>
			</nav>
			<p class="copyright">
				©2014 renmin CMS • A service of <a href="#">A Beautiful Site, XXX.</a>
			</p>
		</div>
	</footer>
  </body>
</html>
