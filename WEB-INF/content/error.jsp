<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="org.apache.commons.logging.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>系统出错</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/head.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/theme/base_style.css" type="text/css" media="screen" />
<link href="<%=request.getContextPath()%>/theme/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function copyStack(){
	var obj = document.getElementById("stackMSG");
	obj.select(); 
	js=obj.createTextRange(); 
	js.execCommand("Copy");
	alert("错误跟踪信息已复制！");
} 
</script>
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
        <td height="35" colspan="2" bgcolor="#0033FF">&nbsp;&nbsp;<span style="color:#FFF">提示信息</span></td>
      </tr>
      <tr>
        <td height="140" class="error_text" style="font-size:14px;">对不起，请求出错，请重新操作，如果问题依然存在，请将操作记录并联系管理员！</td>
        <td width="150"><img src="<%=request.getContextPath()%>/theme/image/error_icon.jpg" width="108" height="95"></td>
      </tr>
      
      <tr>
        <td height="80" colspan="2" align="center">
		<input type="button" name="login" value="重新登录" class="base_btn" onClick="window.location.href=('<%=request.getContextPath()%>/')">
		<input type="button" name="close" value="关闭窗口" class="base_btn" onClick="window.close()">
		</td>
      </tr>
    </table></td>
  </tr>
</table></td>
  </tr>
</table>

<%String exceptionStack = (String)request.getAttribute("exceptionStack");%>
  <div id="stackMSGDIV" style="display:none ">
  <div style="color: red;font-size: 20px">错误跟踪信息：</div>
  <textarea id="stackMSG" name="stackMSG" style="width: 100%;height: 500px;border: 1px solid red" readonly><%=exceptionStack==null?"":exceptionStack%></textarea>
  </div>
  	<%
  		//记录日志信息
  		LogFactory.getLog("系统出错日志：").error(exceptionStack);
  	%>
</body>
</html>
