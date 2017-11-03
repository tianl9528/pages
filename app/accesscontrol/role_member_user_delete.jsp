<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
  long userId=Long.parseLong(request.getParameter("userId"));
  long roleId=Long.parseLong(request.getParameter("roleId"));
  String url="role_member_user.jsp?id="+roleId;
  String msg;
  
  RoleManager manager=new RoleManager();
  if(manager.deleteRoleUser(roleId,userId))
  {
  	msg="用户成员删除成功！点击确定返回用户成员一览！";
  }
  else
  {
  	msg="用户成员删除失败！请重新操作或联系系统管理员！点击确定返回用户成员一览！";
  }
%>
<html>
<head>
<title>权限管理&gt;&gt;角色管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.location.href="<%=url%>";
</script>
</body>
</html>
