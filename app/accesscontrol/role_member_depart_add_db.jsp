<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
  long roleId=Long.parseLong(request.getParameter("roleId"));
  long departId=Long.parseLong(request.getParameter("depart"));
  
  String url="role_member_depart.jsp?id="+roleId;
  String msg="操作成功！";
  
  RoleManager manager=new RoleManager();
  if(manager.addRoleDepart(roleId,departId))
  {
	msg="部门成员添加成功！点击确定返回部门成员一览！";
  }
  else
  {
	msg="部门成员添加失败！请重新操作或联系系统管理员！点击确定返回部门成员一览！";
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
window.navigate("<%=url%>");
</script>
</body>
</html>
