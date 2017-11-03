<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>系统信息</title>
<link href="<%=request.getContextPath()%>/themes/common/css/content.css"
	rel="stylesheet" type="text/css" />
<c:if test="${!empty msg }">
	<script language="javascript" type="text/javascript">
		alert('${msg}');
		//window.location.href=('documents.action?flowNum=${flowNum}');
		//alert('${returnUrl}');
		window.location.href = '${returnUrl}';
	</script>
</c:if>
<c:if test="${empty msg}">
	<script language="javascript" type="text/javascript">
		//window.location.href=('documents.action?flowNum=${flowNum}');
		//alert('${returnUrl}');
		window.location.href = '${returnUrl}';
	</script>
</c:if>
</head>
<body>
</body>
</html>
