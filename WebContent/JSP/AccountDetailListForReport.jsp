<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>家庭理财系统-记账</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="${pageContext.request.contextPath }/JS/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/JS/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/flat-ui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/CSS/screen.css">
</head>

<body class="default">
	<header> <nav id="grumble1" class="container"> <a href="index.jsp"
		class="surreal-logo surreal-logo-dark"
	></a> <a href="#" class="mobile-menu-toggle"> <i class="fa fa-bars"></i></a> <span class="menu-items"> <a
		href="/features"
	>特&nbsp色</a> <a href="/contact">联系我们</a> <span class="extras"> <span class="glyphicon glyphicon-user"></span>${familyUser.username }
			<a href="#MaincontentImg">注&nbsp销</a>
	</span>
	</span> </nav> </header>
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
		<span class="glyphicon glyphicon-pushpin"></span> 您所在位置：<span style="color:#5983ab">报表导出>导出明细</span>
		<div class="col-md-8">
			<div role="grid">
				<div class="row" style="margin-bottom: 10px;margin-top: 30px">
					<div class="col-sm-8"></div>
					<div class="col-sm-2">
					</div>
					<div class="col-sm-2">
						<a href="outPut?format=xls&accountid=${accountid}">导出列表</a>
					</div>
				</div>

				<table class="table table-striped table-bordered table-hover dataTable">
					<thead>
						<tr role="row">
							<th style="width: 161px;" colspan="1" rowspan="1">收支类型</th>
							<th style="width: 126px;" colspan="1" rowspan="1">时间</th>
							<th style="width: 140px;" colspan="1" rowspan="1">金额</th>
							<th style="width: 140px;" colspan="1" rowspan="1">原因</th>
						</tr>
					</thead>
					<tbody aria-relevant="all" aria-live="polite" role="alert">
						<s:iterator value="ads">
							<tr class="odd">
								<td class=" "><s:if test="expenditure > 0">
									支出
								</s:if> <s:if test="income > 0">
									收入
								</s:if></td>
								<td class=" ">${time }</td>
								<td class="hidden-480 "><s:if test="expenditure > 0">
									${expenditure }
								</s:if> <s:if test="income > 0">
									${income }
								</s:if></td>
								<td class=" ">${reason }</td>
								
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
	</div>




	<footer>
	<div class="container">
		<nav style="margin-top:10px"> <a href="#" class="surreal-logo2 surreal-logo-light"></a> <a href="#">Welcome
			to use our product</a> </nav>
		<p class="copyright">
			©2014 renmin CMS • A service of <a href="#">A Beautiful Site, XXX.</a>
		</p>
	</div>
	</footer>
	
	
</body>
</html>
