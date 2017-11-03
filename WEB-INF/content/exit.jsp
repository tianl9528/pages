<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.*"%>
<%
	application.removeAttribute(String.valueOf(session.getAttribute(Config.KEY_USERID)));
	session.removeAttribute(Config.KEY_LOGIN_INFO);
	session.invalidate(); //清空所有session值
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>退出登陆</title>
</head>

<body>
<script language="javascript">
	alert("您已安全退出，欢迎使用本系统！");
	//window.close();
	window.location.href=""login.jsp";
</script>
</body>
</html>
