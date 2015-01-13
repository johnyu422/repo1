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

	<div class="row" style="margin-top: 50px">

		<div class="col-md-2">
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
		<span class="glyphicon glyphicon-pushpin"></span> 您所在位置：<span style="color: #5983ab">账单</span>
		<div class="col-md-9">
			<div role="grid">
				<div class="row">
					<div class="col-sm-10"></div>
					<s:if test="user_type == 1">
						<div class="col-sm-2">
							<!-- <a href="addAccount?method="jump">添加账户</a> -->
							<button class="btn  btn-sm btn-primary" data-toggle="modal" data-target="#AddAccountModal"
								style="margin-bottom: 10px"
							>添加账单</button>
						</div>
					</s:if>
				</div>
				<div class="modal fade" style="margin-top: 100px" id="AddAccountModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true"
				>
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">添加新账单</h4>
							</div>
							<form action="addAccount?method=save" method="post">
								<div class="row  has-success">
									<div class="col-md-1"></div>

									<div class="col-md-5">
										<!-- <div class="form-group has-success"> -->
										<input style="margin-bottom: 20px; display: none" type="text" class="form-control input-sm"
											name="account.account_id" value="${account.account_id}"
										/> <input style="margin-bottom: 20px; display: none" type="text" class="form-control input-sm"
											name="account.addTime" value="${account.addTime}"
										/> <input style="margin-bottom: 20px; display: none" type="text" class="form-control input-sm"
											name="account.familyUser.user_id" value="${account.familyUser.user_id}"
										/> <input  style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="账户名"
											name="account.name" value="${account.name}"
										/> <input style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="账号"
											name="account.account_no" value="${account.account_no }"
										/> <select style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="账户类型"
											name="account.type"
										>
											<option value="">账户类型</option>
											<option value="1">银行账户</option>
											<option value="2">余额宝账户</option>
										</select>
									</div>
									<div class="col-md-5">
										<input style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="描述"
											name="account.description" value="${account.description }"
										/> <input style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="备注"
											name="account.remark" value="${account.remark }"
										/>
										<button class="btn btn-block btn-sm btn-primary">保&nbsp存>></button>
									</div>
									<div class="col-md-1"></div>
								</div>

							</form>
							<div class="modal-footer"></div>

						</div>
					</div>
				</div>
				<div class="modal fade" style="margin-top: 100px" id="ModifyAccountModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true"
				>
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">修改账单信息</h4>
							</div>
							<form action="addAccount?method=save&accountid=${account_id}" method="post">
								<div class="row  has-success">
									<div class="col-md-1"></div>

									<div class="col-md-5">
										<!-- <div class="form-group has-success"> -->
										<input id="Aid" style="margin-bottom: 20px; display: none" type="text" class="form-control input-sm"
											name="account.account_id" value="${account.account_id}"
										/> <input id="addTime" style="margin-bottom: 20px; display: none" type="text" class="form-control input-sm"
											name="account.addTime" value="${account.addTime}"
										/> <input id="AFuid" style="margin-bottom: 20px; display: none" type="text" class="form-control input-sm"
											name="account.familyUser.user_id" value="${account.familyUser.user_id}"
										/> <input id="AName" style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="账户名"
											name="account.name" 
										/> <input id="ANum" style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="账号"
											name="account.account_no" 
										/> <select id="Atype" style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="账户类型"
											name="account.type"
										>
											<option value="">账户类型</option>
											<option value="1">银行账户</option>
											<option value="2">余额宝账户</option>
										</select>
									</div>
									<div class="col-md-5">
										<input id="ADescription" style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="描述"
											name="account.description" 
										/> <input id="ARemark" style="margin-bottom: 20px" type="text" class="form-control input-sm" placeholder="备注"
											name="account.remark" 
										/>
										<button class="btn btn-block btn-sm btn-primary">保&nbsp存>></button>
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
							<!-- <th style="width: 161px;" display: none" colspan="1" rowspan="1">账户ID</th> -->
							<th style="width: 100px;" colspan="1" rowspan="1">账户名称</th>
							<th style="width: 100px;" colspan="1" rowspan="1">账号</th>
							<th style="width: 100px;" colspan="1" rowspan="1">账号类型</th>

							<th style="width: 100px;" colspan="1" rowspan="1">余额</th>
							<th style="width: 180px;" colspan="1" rowspan="1">开户时间</th>
							<th style="width: 140px;" colspan="1" rowspan="1">描述</th>
							<th style="width: 140px;" colspan="1" rowspan="1">备注</th>
							<th style="width: 149px;" colspan="1" rowspan="1">操作</th>
						</tr>
					</thead>


					<tbody aria-relevant="all" aria-live="polite" role="alert">
						<s:iterator value="as">
							<tr class="odd">
								<%-- <td  class=" ">${account_id }</td> --%>
								<td class=" ">${name }</td>
								<td class=" ">${account_no }</td>
								<td class="hidden-480 "><s:if test="type == 1">
									银行账户
								</s:if> <s:else>
									余额宝账户
								</s:else></td>
								<td class=" ">${balance }</td>
								<td class=" ">${addTime }</td>
								<td class=" ">${description }</td>
								<td class=" ">${remark }</td>
								<td class=" ">
									<div>
										<%-- <a href="addAccount?method=modify&accountid=${account_id}">
											<span> <i class="glyphicon glyphicon-pencil"></i></span>
										</a> --%>
										<button class="btn  btn-sm btn-primary" onclick="clickgetAccount(${account_id});">
											<span> <i class="glyphicon glyphicon-pencil"></i>
											</span>
										</button>
										<%-- <button class="btn  btn-sm btn-primary" onclick="clickaddAccountdetail(${account_id});">
											<span> <i class="glyphicon glyphicon-list-alt"></i>
											</span>
										</button> --%>
										<a href="findAccountDetails?accountid=${account_id}"> <span> <i class="glyphicon glyphicon-list-alt"></i>
										</span>
										</a> 
										<a href="addAccount?method=delete&accountid=${account_id}"> <span> <i
												class="glyphicon glyphicon-remove"
											></i></span>
										</a>
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
		function clickgetAccount(aid) {
			$.post("showaccount_showModal", {
				"accountId" : aid
			}, function(data) {
				$("#Aid").val(data.account_id);
				$("#AName").val(data.account_name);
				$("#ANum").val(data.account_no);
				$("#ADescription").val(data.account_description);
				$("#ARemark").val(data.account_Remark);
				$("#Atype").val(data.account_type);
				$("#addTime").val(data.account_addTime);
				$("#AFuid").val(data.account_famliy_uid);
				
			}, "json");

			$("#ModifyAccountModal").modal('show');
		}

		/* function clickaddAccountdetail(uid){
			$.post("findaccount_execute"+uid,function(){
				
			},"json");
		} */
	</script>
</body>
</html>
