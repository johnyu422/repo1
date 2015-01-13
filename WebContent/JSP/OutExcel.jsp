<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form name="form1" action="outPut" method="post">
  		<input type="hidden" name="format" value="xls" />
  	<s:submit name="sub" value="导出数据"></s:submit>
  </s:form>
</body>
</html>