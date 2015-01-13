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
<script type="text/javascript" src="${pageContext.request.contextPath }/JS/jquery.js"></script>
<script type="text/javascript" src="JS/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="CSS/flat-ui.css">
<link rel="stylesheet" type="text/css" href="CSS/screen.css">
<link rel="stylesheet" type="text/css" href="CSS/index.css">
<style type="text/css">
#btnaddfamilymember {
	margin-bottom: 10px;
}

#rowNo1 {
	margin-bottom: 10px;
}

#familyMemberPhone {
	margin-left: 10px;
}
</style>
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
			<span class="glyphicon glyphicon-pushpin"></span> 您所在位置：<span style="color: #5983ab">家庭信息管理</span>
			<div class="col-md-9">
				<div role="grid">
					<div class="row">
						<div class="col-sm-10"></div>
						<s:if test="user_type == 1">
							<div class="col-sm-2">
								<!-- <a id="btnaddfamilymember" href="modifyuser?method=add">添加成员</a> -->
								<button class="btn  btn-sm btn-primary" data-toggle="modal" data-target="#AddUserModal"
									style="margin-bottom: 10px"
								>添加成员</button>
							</div>
						</s:if>
					</div>
					<div class="modal fade" style="margin-top: 100px" id="AddUserModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true"
					>
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">添加新成员</h4>
								</div>
								<form action="modifyuser?method=save" method="post">
									<div class="row  has-success">
										<div class="col-md-1"></div>

										<div class="col-md-5">
											<!-- <div class="form-group has-success"> -->
											<input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm"
												name="familyUser.user_id"
											/> <input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm"
												name="familyUser.family.family_id"
											/> <input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm"
												name="familyUser.user_type"
											/> <input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="姓名"
												name="familyUser.username"
											/> <input style="margin-bottom:20px" type="password" class="form-control input-sm" placeholder="Password"
												name="familyUser.password"
											/> <input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="Phone"
												name="familyUser.phone"
											/>
										</div>
										<div class="col-md-5">
											<input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="E-mail"
												name="familyUser.email"
											/> <input style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="Remark"
												name="familyUser.remark"
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
					<div class="modal fade" style="margin-top: 100px" id="ModifyUserModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true"
					>
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">修改成员信息</h4>
								</div>
								<form action="modifyuser?method=save&userid=${user_id}" method="post">
									<div class="row  has-success">
										<div class="col-md-1"></div>

										<div class="col-md-5">
											<!-- <div class="form-group has-success"> -->
											<input id="userName" style="margin-bottom:20px;display:none" type="text" class="form-control input-sm"
												name="familyUser.user_id" value="${familyUser.user_id}"
											/> <input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm"
												name="familyUser.family.family_id" value="${familyUser.family.family_id}"
											/> <input style="margin-bottom:20px;display:none" type="text" class="form-control input-sm"
												name="familyUser.user_type" value="${familyUser.user_type}"
											/> <input id="uName" style="margin-bottom:20px" type="text" class="form-control input-sm userId" placeholder="姓名"
												name="familyUser.username"
											/> <input id="uPswd" style="margin-bottom:20px" type="password" class="form-control input-sm" placeholder="Password"
												name="familyUser.password" 
											/> <input id="uPhone" style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="Phone"
												name="familyUser.phone"
											/>
										</div>
										<div class="col-md-5">
											<input id="umail" style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="E-mail"
												name="familyUser.email"
											/> <input id="uRemark" style="margin-bottom:20px" type="text" class="form-control input-sm" placeholder="Remark"
												name="familyUser.remark"
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
								<!-- <th style="width: 161px;" colspan="1" rowspan="1">用户ID</th> -->
								<th style="width: 161px;" colspan="1" rowspan="1">用户名</th>
								<th style="width: 126px;" colspan="1" rowspan="1">手机号码</th>
								<th style="width: 140px;" colspan="1" rowspan="1">电子邮箱</th>
								<th style="width: 194px;" colspan="1" rowspan="1">备注</th>
								<th style="width: 149px;" colspan="1" rowspan="1">操作</th>
							</tr>
						</thead>

						<input type="hidden" id="usertype" value="${user_type }">
						<tbody aria-relevant="all" aria-live="polite" role="alert">

							<s:iterator value="fus">
								<tr class="odd">
									<%-- <td class=" " >${user_id}</td> --%>
									<td class=" ">${username}</td>
									<td class=" ">${phone}</td>
									<td class="hidden-480 ">${email}</td>
									<td class="hidden-480 ">${remark}</td>
									<td class=" ">
										<div>
										<button class="btn  btn-sm btn-primary" onclick="clicknget(${user_id});">
												<span> <i class="glyphicon glyphicon-pencil"></i>
												</span>
											</button>
											<a href="modifyuser?method=delete&userid=${user_id}"> <span> <i
												class="glyphicon glyphicon-remove"
											></i></span>
											</a>
											<%-- <button class="btn  btn-sm btn-primary" onclick="clickdelete(${user_id});">
												<span> <i class="glyphicon glyphicon-remove"></i>
												</span>
											</button> --%>
										</div>
									</td>
								</tr>
							</s:iterator>

						</tbody>
					</table>

				</div>

			</div>
			<div class="col-md-1"></div>


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
	function clicknget(uid){
		$.post("showuser_showModal",{"userId":uid},function(data){
			$("#uName").val(data.user_name);
			$("#uPswd").val(data.user_pswd);
			$("#uPhone").val(data.user_phone);
			$("#umail").val(data.user_mail);
			$("#uRemark").val(data.user_Remark);
		},"json");      
			
		$("#ModifyUserModal").modal('show');
	}
	
	/* function clickdelete(uid){
		$.post("showuser_deleteModel",{"userId":uid},function(){
		},"json");
		document.location.reload();
		
	}
	 */
	
	</script>
</body>
</html>
