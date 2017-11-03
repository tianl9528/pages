<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%
  long id=0;
  String name;
  String note;
  String msg;
  String url="nodegroup_list.jsp";
  boolean blean=false;
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong((request.getParameter("id")==null||request.getParameter("id").length()<=0)?"0":request.getParameter("id"));
  name=(request.getParameter("name")==null||request.getParameter("name").length()<=0)?"":request.getParameter("name");
  note=(request.getParameter("note")==null||request.getParameter("note").length()<=0)?"":request.getParameter("note");
  
  NodeGroupManager manager=new NodeGroupManager();
  
  NodeGroup dat=new NodeGroup();
  if(id!=0)
  	dat=manager.readOne(id);
  dat.setName(name);
  dat.setNote(note);
  
  if(id!=0)
  {
  	if(manager.edit(dat))
  	{
		msg="模块修改成功！点击确定返回模块一览！";
	}
	else
	{
		msg="模块修改失败！请重新操作或联系系统管理员！点击确定返回模块一览！";	
	}
  }
  else
  {
  	if(manager.add(dat)!=0)
	{
		msg="模块新增成功！点击确定返回模块一览！";
	}
	else
	{
		msg="模块新增失败！请重新操作或联系系统管理员！点击确定返回模块一览！";	
	}
  }
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
