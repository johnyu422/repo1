<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>SSH_Project</title>
</head>
<body>
	<s:form action="regist">
		<s:textfield name="person.username" key="user"/>
		<s:textfield name="person.password" key="pass"/>
		<s:submit key="login"/>
	</s:form>
</body>
</html>