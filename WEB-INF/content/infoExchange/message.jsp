<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统信息</title>
<link href="<%=request.getContextPath()%>/themes/common/css/content.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
alert('${msg}');

//window.location.href=('documents.action?flowNum=${flowNum}');
//alert('${returnUrl}');
window.location.href='${returnUrl}'; 
</script>
</head>

<body>

</body>
</html>
