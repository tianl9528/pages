<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%  
  String id=request.getParameter("id");
  String url="entity_list.jsp";
  String msg;
  
  EntityManager manager=new EntityManager();

  if(manager.delete(Long.parseLong(id)))
  {
  	msg="功能删除成功！点击确定返回功能一览！";
  }
  else
  {
  	msg="功能删除失败！请重新操作或联系系统管理员！点击确定返回功能一览！";
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
