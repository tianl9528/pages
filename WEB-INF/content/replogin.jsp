<%@ page contentType="text/html;charset=utf-8" %>
<%
	session.invalidate(); //清空所有session值
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>中国联通广州分公司空中销售管理系统</title>
<link href="<%=request.getContextPath()%>/themes/skin/itil/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="500" align="center"><table width="445" border="0" cellpadding="1" cellspacing="1" bgcolor="#D2D2D2">
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" class="index_title">提示信息</td>
      </tr>
      <tr>
        <td height="180" class="error_text"><b>操作失败，原因是：</b>
        <ul style="margin:10px 0 10px 20px;">
		  <%
          	out.println("<li>此用户已经在其它地方登录</li>");
          %>
		</ul></td>
        <td width="150"><img src="<%=request.getContextPath()%>/themes/common/img/icons/error_icon.jpg" width="108" height="95"></td>
      </tr>
      
      <tr>
        <td height="40" colspan="2" align="center"><img src="<%=request.getContextPath()%>/themes/common/img/back.jpg" width="54" height="27" onClick="window.navigate('<%=request.getContextPath()%>/login.jsp')" style="cursor:hand;"></td>
      </tr>
    </table></td>
  </tr>
</table></td>
  </tr>
</table>
</body>
</html>