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
if(name==null&&name.length()<=0){
	msg="<font color=#990000>请输入正确登录名！</font>";
}
else{
	UserManager manager=new UserManager();
	User user=manager.getUserByName(name);
	Util util=new Util();
	if(user!=null){
		md5="";
		msg="<font color=#FF0000>此登录名已被使用！</font>";
		ok=false;
	}
	else{
		md5=util.getMD5(name);
		msg="<font color=#0066CC>可以使用此登录名！</font>";
		ok=true;
	}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<title>检查登录名</title>
</head>
<script language="javascript" type="text/javascript">
function closeme(){
	window.returnValue ="<%=msg%>@&<%=ok%>@&<%=md5%>";
	window.close();
}
</script>
<body onbeforeunload="closeme()">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
  <tr class="table_row1" height="90px">
    <td align="center">
	<%=msg%>
	<%
		if(ok)
		{
			out.println(msg);
			out.println("</br></br>");
			out.println(md5);
		}
		else
		{
			out.println(msg);
		}
	%>
	</td>
  </tr>
</table>
</body>
</html>
