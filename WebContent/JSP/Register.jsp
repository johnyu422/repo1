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

<title>My JSP 'Login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript" src="JS/jquery.js"></script>
<script type="text/javascript" src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/index.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="CSS/flat-ui.css">
<link rel="stylesheet" type="text/css" href="CSS/index.css">
<link rel="stylesheet" type="text/css" href="CSS/screen.css">

</head>

<body>
	<header> <nav class="container"> <a href="index.jsp" class="surreal-logo surreal-logo-dark"></a> <span class="menu-items"> <a href="/features">特&nbsp色</a> <a href="/contact">联系我们</a>
	</span> </nav> </header>
	<div class="container">
		<div class="row" style="height:100px;text-align:center;margin-top:20px;font-size:20px;color:#243647 ">
			<span>注册后就可以开始进行你的理财事业啦！</span>
		</div>
		<form action="regist" method="post">
			<div class="row">
				<div class="col-md-2"></div>

				<div class="col-md-4">
					<div class="form-group has-success">
						<input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="账户名" name="familyUser.username" /> 
						<input style="margin-bottom:20px" type="password" class="form-control input-sm" placeholder="密码" name="familyUser.password" />
						<input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="家庭名称" name="family.name" /> 
						<input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="手机号码" name="familyUser.phone" />
						<input style="margin-top:20px" type="text" class="form-control input-sm" placeholder="家庭详细地址" />

					</div>
				</div>
				<div class="col-md-4">
					<img src="Image/FamilyManageMoney2.png" />
					<button style="margin-left:120px" class="btn btn-block btn-sm btn-primary">提&nbsp交>></button>
				</div>
				<div class="col-md-2">
					<!-- <button style="margin-top:250px" class="btn btn-block btn-sm btn-primary">提&nbsp交>></button> -->
				</div>

			</div>
		</form>
	</div>
	<footer>
	<div class="container">
		<nav style="margin-top:10px"> <a href="#" class="surreal-logo2 surreal-logo-light"></a> <a href="#">Welcome to use our product</a> </nav>
		<p class="copyright">
			©2014 renmin CMS • A service of <a href="#">A Beautiful Site, XXX.</a>
		</p>
	</div>
	</footer>


</body>
</html>
