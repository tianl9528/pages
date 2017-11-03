<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
  long roleId=Long.parseLong(request.getParameter("roleId"));
  String user=request.getParameter("userID");
  
  long[] userIds=null;
  if(user!=null&&user.length()>0){
  	String[] users=user.split(",");
  	userIds=new long[users.length];
  	for(int i=0;i<users.length;i++){
		userIds[i]=Long.parseLong(users[i]);
	}
  }
  String url="role_member_user.jsp?id="+roleId;
  String msg="操作成功！";
  
  RoleManager manager=new RoleManager();
  if(userIds!=null&&userIds.length>0){
	  if(manager.addRoleUser(roleId,userIds))
	  {
		msg="用户成员角色添加成功！点击确定返回用户成员一览！";
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
window.location.href="<%=url%>";
</script>
</body>
</html>
