<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%
  long id=0;
  String name;
  String type;
  String value;
  String note;
  String enabled="T";
  String msg;
  String url="entity_list.jsp";
  boolean blean=false;
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong((request.getParameter("id")==null||request.getParameter("id").length()<=0)?"0":request.getParameter("id"));
  name=(request.getParameter("name")==null||request.getParameter("name").length()<=0)?"":request.getParameter("name");
  type=(request.getParameter("type")==null||request.getParameter("type").length()<=0)?"0":request.getParameter("type");
  value=(request.getParameter("value")==null||request.getParameter("value").length()<=0)?"":request.getParameter("value");
  note=(request.getParameter("note")==null||request.getParameter("note").length()<=0)?"":request.getParameter("note");
  
  EntityManager manager=new EntityManager();
  
  Entity dat=new Entity();
  if(id!=0){
  	dat=manager.readOne(id);
  }
  dat.setName(name);
  dat.setType(type);
  dat.setValue(value);
  dat.setNote(note);
  dat.setEnabled(enabled);
  

  
  if(id!=0)
  {
  	if(manager.edit(dat))
  	{
		msg="功能修改成功！点击确定返回功能一览！";
	}
	else
	{
		msg="功能修改失败！请重新操作或联系系统管理员！点击确定返回功能一览！";	
	}
  }
  else
  {
  	if(manager.add(dat)!=0)
	{
		msg="功能新增成功！点击确定返回功能一览！";
	}
	else
	{
		msg="功能新增失败！请重新操作或联系系统管理员！点击确定返回功能一览！";	
	}
  }
%>
<html>
<head>
<title>权限管理&gt;&gt;功能管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.location.href="<%=url%>";
</script>
</body>
</html>
