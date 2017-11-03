<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<% 
	application.removeAttribute(String.valueOf(session.getAttribute(Config.KEY_USERID)));
	session.removeAttribute(Config.KEY_LOGIN_INFO);
	session.invalidate(); //清空所有session值
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录超时</title>
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
        <td height="140" class="error_text" style="font-size:14px;">登录超时，您已退出<%=Config.getInstance().realmName%>，请重新登录！</td>
        <td width="150"><img src="<%=request.getContextPath()%>/themes/common/img/icons/error_icon.jpg" width="108" height="95"></td>
      </tr>
      
      <tr>
        <td height="80" colspan="2" align="center"><input type="button" name="login" value="重新登录" class="button" onClick="window.location.href=('<%=request.getContextPath()%>/')">
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
