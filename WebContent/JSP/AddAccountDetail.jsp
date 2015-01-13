<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

<title>家庭理财系统-信息维护</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="JS/jquery.js"></script>
<script type="text/javascript" src="JS/bootstrap.js"></script>
<script type="text/javascript" src="JS/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="JS/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="CSS/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="CSS/flat-ui.css">
<link rel="stylesheet" type="text/css" href="CSS/index.css">
<link rel="stylesheet" type="text/css" href="CSS/screen.css">
<link rel="stylesheet" href="CSS/datepicker.css" media="screen">


</head>

<body class="default">
	<header> <nav class="container"> <a href="index.jsp" class="surreal-logo surreal-logo-dark"></a> <a
		href="#" class="mobile-menu-toggle"
	> <i class="fa fa-bars"></i></a> <span class="menu-items"> <a href="/features">特&nbsp色</a> <a href="/contact">联系我们</a>
		<span class="extras"> <span class="glyphicon glyphicon-user"></span>${familyUser.username } <a
			href="#MaincontentImg"
		>注&nbsp销</a>
	</span>
	</span> </nav> </header>

	<div>
		<div class="row" style="margin-top:50px">

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
			<form id="accountDetail" action="accountDetail?method=save&accountid=${accountid}&adid=${adid}" method="post">

				<div class="col-md-3">
					<div class="form-group has-success">
						<input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm" placeholder="金额"
							name="accountDetail.account.account_id" value="${accountDetail.account.account_id}"
						/> <input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm" placeholder="金额"
							name="accountDetail.detail_id" value="${accountDetail.detail_id}"
						/> <label>收支类型：</label>
						<s:radio list="#{'1':'收入','0':'支出'}" onclick="myFunction()" name="isIncome" />
						<br> <label id="lbOut">支出金额：</label> <input id="inputOut" style="margin-bottom:20px" type="text"
							class="form-control input-sm" placeholder="支出金额" name="accountDetail.expenditure"
							value="${accountDetail.expenditure}"
						/> <label id="lbIn">收入金额：</label> <input id="inputIn" style="margin-bottom:20px" type="text"
							class="form-control input-sm" placeholder="收入金额" name="accountDetail.income" value="${accountDetail.income}"
						/> <label>时间：</label><input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="时间"
							name="accountDetail.time" value="${accountDetail.time}"
						/> <label>原因：</label><input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="原因"
							name="accountDetail.reason" value="${accountDetail.reason }"
						/>
					</div>
				</div>
				<div class="col-md-3">
					<button style="margin-top:250px" class="btn btn-block btn-sm btn-primary">保&nbsp存>></button>
				</div>
			</form>
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
	<script type="text/javascript">
		var radioChecked = document.getElementsByName("isIncome");
		radioChecked[0].checked = true;
		function myFunction() {
			if (radioChecked[0].checked) {
				$("#lbOut").hide();
				$("#inputOut").hide();
				$("#lbIn").show();
				$("#inputIn").show();
			} else if (radioChecked[1].checked) {
				$("#lbOut").show();
				$("#inputOut").show();
				$("#lbIn").hide();
				$("#inputIn").hide();
			}
		}
		$("#lbOut").hide();
		$("#inputOut").hide();
	</script>
</body>
</html>
