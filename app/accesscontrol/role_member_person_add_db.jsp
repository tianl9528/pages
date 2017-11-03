<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
  long roleId=Long.parseLong(request.getParameter("roleId"));
  String user=request.getParameter("users");
  
  String[] userIds=null;
  if(user!=null&&user.length()>0){
  	String[] users=user.split(",");
  	userIds=new String[users.length];
  	for(int i=0;i<users.length;i++){
		userIds[i]=users[i];
	}
  }
  String url="role_member_person.jsp?id="+roleId;
  String msg="操作成功！";
  
  RoleManager manager=new RoleManager();
  if(userIds!=null&&userIds.length>0){
	  if(manager.addRolePerson(roleId,userIds))
	  {
		msg="用户成员添加成功！点击确定返回用户成员一览！";
	  }
	  else
	  {
		msg="用户成员添加失败！请重新操作或联系系统管理员！点击确定返回用户成员一览！";
	  }
  }
  else{
	msg="用户成员添加失败！请重新操作或联系系统管理员！点击确定返回用户成员一览！";
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
