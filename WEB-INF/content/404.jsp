<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
String base_root = request.getContextPath();
%>
<title>找不到页面</title>
<link rel="stylesheet" href="<%=base_root%>/theme/head.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=base_root%>/theme/base_style.css" type="text/css" media="screen" />
<link href="<%=request.getContextPath()%>/theme/css/index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
-->
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="500" align="center"><table width="445" border="0" cellpadding="1" cellspacing="1" bgcolor="#D2D2D2">
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="35" colspan="2" background="<%=request.getContextPath()%>/themes/skin/unicomgd/images/midb.gif">&nbsp;&nbsp;<span class="STYLE1">提示信息</span></td>
      </tr>
      <tr>
        <td height="140" class="error_text" style="font-size:14px;">找不到页面！</td>
        <td width="150"><img src="<%=request.getContextPath()%>/theme/image/error_icon.jpg" width="108" height="95"></td>
      </tr>
      
      <tr>
        <td height="80" colspan="2" align="center">
        <input type="button" name="close" value="返回首页" class="base_btn" onClick="window.location.href='<%=request.getContextPath() %>/index.action'">
		<input type="button" name="close" value="关闭窗口" class="base_btn" onClick="window.close()">
		</td>
      </tr>
    </table></td>
  </tr>
</table></td>
  </tr>
</table>
</body>
</html>
