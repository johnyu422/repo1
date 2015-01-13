<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>家庭理财系统-首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">



<link rel="stylesheet" type="text/css"
	href="CSS/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="CSS/flat-ui.css">
<link rel="stylesheet" type="text/css" href="CSS/index.css">
<link rel="stylesheet" type="text/css" href="CSS/screen.css">

<script type="text/javascript" src="JS/jquery.js"></script>
<script type="text/javascript" src="JS/bootstrap.js"></script>


<script type="text/javascript">
$(document).ready(function(){
  $("#login").click(function(){
  $("#MaincontentImg").slideUp("slow");
  });
});
</script>

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
					<a id="login" href="#">登&nbsp录</a> 
					<a class="signup" href="JSP/Register.jsp">注&nbsp册</a>
				</span>
			</span> 
		</nav> 
	</header>
	<section class="dark" >
		<div class="container">
			<!-- <h1 class="has-subtitle" >简单实用的家庭理财系统</h1>
			<p class="subtitle" id="MaincontentImg">Simple and practical family management system</p> -->
			<div class="row" >
				<div class="col-md-2"></div>
				<div class="col-md-8" >
					<h1 class="has-subtitle" >简单实用的家庭理财系统</h1>
					<p class="subtitle" >Simple and practical family management system</p>
					<img id="MaincontentImg" src="Image/FamilyManageMoney.png" />
				</div>
				<div class="col-md-2"></div>
			</div>
			<form action="login" method="post">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-3">
						<input type="text" placeholder="账户名" class="form-control" name="familyUser.username"/>
					</div>
					<div class="col-md-3">
						<input type="password" placeholder="密码" class="form-control" name="familyUser.password"/>
					</div>
					<div class="col-md-2">
						<button class="btn btn-embossed btn-primary">登&nbsp录</button>
					</div>
					<div class="col-md-2"></div>
				</div>
			</form>
			
			
		</div>
		
	</section>
	<footer>
		<div >
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

