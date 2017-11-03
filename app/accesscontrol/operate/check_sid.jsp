<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="sunit.accesscontrol.util.*" %>
<%@ page import="sunit.database.*"%>
<%
String name=request.getParameter("name").trim();
String msg="";
String md5="";
boolean ok=true;
Util util=new Util();
if(name==null&&name.length()<=0){
	msg="<font color=#990000>请输入正确登录名！</font>";
	ok=false;
}
else{
	md5=util.getMD5(name);
	msg="<font color=#FF0000>"+md5+"</font>";
	ok=true;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<title>生成标识码</title>
</head>
<script language="javascript" type="text/javascript">
function closeme(){
	window.returnValue ="<%=md5%>";
	window.close();
}
window.parent.thisForm.sid.value="<%=md5%>";
</script>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
  <tr class="table_row1" height="90px">
    <td align="center"><%=msg%></td>
  </tr>
</table>
</body>
</html>
