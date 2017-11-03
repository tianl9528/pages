<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上传</title>
</head>
<body>
<% 
	String msg = (String)request.getAttribute("msg");

%>


<%="success".equals(msg) ? "上传成功,稍后会自动处理数据!" : "上传失败，请稍后再试!"%>

&nbsp;&nbsp;&nbsp;&nbsp;

<a href = "<%=request.getContextPath()%>/app/sendMail/customInfoList.sunit">返 回</a>
</body>
</html>