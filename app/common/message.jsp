<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>消息显示</title>
</head>
<body>
    <script language="JavaScript">

		alert("<c:out value="${message}"/>");
		window.navigate("<c:url value="${url}"/>");

	</script>
	
</body>
</html>
