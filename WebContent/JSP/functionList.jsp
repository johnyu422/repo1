<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>家庭理财系统-主功能页</title>
    
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
	<div  style="background-color:#243647">
	<div class="container">
	<section class="dark">
		<div class="container">
			<h1 class="has-subtitle">
				主要功能
			</h1>
			<p class="subtitle">
				You can access that you what,each Function has it's description.
			</p>
			<div class="row text-center">
				<div class="col-sm-4">
					<a href="findAllAccounts">
						<span class="circle circle-lg circle-blue">
							<i class="glyphicon glyphicon-sort"></i>
						</span>	
					</a>
					<h4>账单</h4>
					<p>
						Record money that you has cost or earned.
					</p>
				</div>
				
				<div class="col-sm-4">
					<a href="findAllAccountsForReport">
						<span class="circle circle-lg circle-green">
							<i class="glyphicon glyphicon-list-alt"></i>
						</span>
					</a>
					<h4>报表导出</h4>
					<p>
						Can Export you account data to a report.
					</p>
				</div>
				
				<div class="col-sm-4">
					<a href="findAllMembers">
						<span class="circle circle-lg circle-orange">
							<i class="glyphicon glyphicon-pencil"></i>
						</span>
					</a>
					<h4>个人信息管理</h4>
					<p>
						Can edit your own information.
					</p>
				</div>
			</div>
			
		</div>
	</section>
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
