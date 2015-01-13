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
		<span class="glyphicon glyphicon-pushpin"></span> 您所在位置：<span style="color:#5983ab">账单</span>
		<div class="col-md-8">
			<div role="grid">
				<div class="row">
					<div class="col-sm-10"></div>
					<div class="col-sm-2">
						<%-- <a href="accountDetail?method=jump&accountid=${accountid}">添加明细</a> --%>
						<button class="btn  btn-sm btn-primary" data-toggle="modal" data-target="#AddAccountDetailModal"
							style="margin-bottom: 10px"
						>添加明细</button>
					</div>
					<div class="col-sm-2">
						<a href="outPut?format=xls&accountid=${accountid}">导出列表</a>
					</div>
				</div>
				<div class="modal fade" style="margin-top: 100px" id="AddAccountDetailModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true"
				>
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">添加明细</h4>
							</div>
							<form action="accountDetail?method=save&accountid=${accountid}&adid=${adid}" method="post">
								<div class="row  has-success">
									<div class="col-md-1"></div>

									<div class="col-md-5">
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
										/> <%-- <label>时间：</label><input style="margin-bottom:20px" type="text" class="form-control input-sm"
											placeholder="时间" name="accountDetail.time" value="${accountDetail.time}"
										/>  --%>
									</div>
									<div class="col-md-5">
										<label style="margin-top:40px">原因：</label><input style="margin-bottom:20px" type="text" class="form-control input-sm"
											placeholder="原因" name="accountDetail.reason" value="${accountDetail.reason }"
										/>
										<button class="btn btn-block btn-sm btn-primary" style="margin-top:60px">保&nbsp存>></button>
									</div>
									<div class="col-md-1"></div>
								</div>

							</form>
							<div class="modal-footer"></div>

						</div>
					</div>
				</div>

				<table class="table table-striped table-bordered table-hover dataTable">
					<thead>
						<tr role="row">
							<th style="width: 161px;" colspan="1" rowspan="1">收支类型</th>
							<th style="width: 126px;" colspan="1" rowspan="1">时间</th>
							<th style="width: 140px;" colspan="1" rowspan="1">金额</th>
							<th style="width: 140px;" colspan="1" rowspan="1">原因</th>
							<th style="width: 149px;" colspan="1" rowspan="1">操作</th>
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
								<td class=" ">
									<div>
										<a href="accountDetail?method=modify&accountid=${accountid}&adid=${detail_id}"> <span> <i
												class="glyphicon glyphicon-pencil"
											></i></span>
										</a> <%-- <a href="accountDetail?method=delete&accountid=${accountid}&adid=${detail_id}"> <span> <i
												class="glyphicon glyphicon-remove"
											></i></span>
										</a> --%>
									</div>
								</td>
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
