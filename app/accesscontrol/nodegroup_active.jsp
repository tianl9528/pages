<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="sunit.accesscontrol.*" %>
<%
	String url="nodegroup_list.jsp";
	String msg="菜单已生效！用户重新登陆后可看到新菜单！现在点击确定返回模块一览！";

	AccessControl ac=AccessControl.getInstance();
  
  	ac.update(null,"Menu Reload");
%>
<html>
<head>
<title>权限管理&gt;&gt;菜单管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.location.href="<%=url%>";
</script>
</body>
</html>
