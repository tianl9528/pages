<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>权限不足</title>
<LINK href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgdTel.css" type=text/css rel=stylesheet>
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
        <td height="140" class="error_text" style="font-size:14px;">您没有权限做此操作！</td>
        <td width="150"><img src="<%=request.getContextPath()%>/themes/common/img/icons/error_icon.jpg" width="108" height="95"></td>
      </tr>
      
      <tr>
        <td height="80" colspan="2" align="center">
        <input type="button" name="close" value="返回首页" class="button" onClick="window.location.href='<%=request.getContextPath() %>/index.action'">
		<input type="button" name="close" value="关闭窗口" class="button" onClick="window.close()">
		</td>
      </tr>
    </table></td>
  </tr>
</table></td>
  </tr>
</table>
</body>
</html>
