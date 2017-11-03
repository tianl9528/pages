<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%
  long id;
  String name;
  String note;
  String enabled="T";
  String[] departIds;
  String[] userIds;
  String msg;
  String url="role_list.jsp";
  boolean blean=false;
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong((request.getParameter("id")==null||request.getParameter("id").length()<=0)?"0":request.getParameter("id"));
  departIds=request.getParameterValues("departs");
  userIds=request.getParameterValues("users");
  
    
  RoleManager manager=new RoleManager();
  
  Role dat=new Role();
  if(id!=0){
  	dat=manager.readOne(id);
  	//dat.setId(Long.parseLong(id));
  }
  
  if(departIds!=null&&departIds.length>0){
  	Set departs = new HashSet();
 	for(int i=0;i<departIds.length;i++){
		Depart depart=new Depart();
		depart.setId(Long.parseLong(departIds[i]));
		departs.add(depart);
	}
	dat.setDeparts(departs);
  }
  else{
  	dat.setDeparts(null);
  }
  
  if(userIds!=null&&userIds.length>0){
  	Set users = new HashSet();
 	for(int i=0;i<userIds.length;i++){
		User user=new User();
		user.setId(Long.parseLong(userIds[i]));
		users.add(user);
	}
	dat.setUsers(users);
  }
  else{
  	dat.setUsers(null);
  }
  
  if(id!=0)
  {
  	if(manager.edit(dat))
  	{
		msg="角色修改成功！点击确定返回角色一览！";
	}
	else
	{
		msg="角色修改失败！请重新操作或联系系统管理员！点击确定返回角色一览！";	
	}
  }
  else
  {
  	if(manager.add(dat)!=0)
	{
		msg="角色新增成功！点击确定返回角色一览！";
	}
	else
	{
		msg="角色新增失败！请重新操作或联系系统管理员！点击确定返回角色一览！";	
	}
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
