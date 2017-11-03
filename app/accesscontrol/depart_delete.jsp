<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%
  String id;
  String msg;
  String url="depart_list.jsp";
  boolean ok=false;
  
  request.setCharacterEncoding("utf-8");
  
  id = request.getParameter("id")==null||request.getParameter("id").length()<=0?"":request.getParameter("id");

  
  
	if(id!=null&&id.length()>0)
	{
  		Manager manager=ManagerFactory.getManager(ManagerFactory.Manager_Depart);
  		Manager workManager=ManagerFactory.getManager(ManagerFactory.Manager_Work);
		
		Depart dat=new Depart();
  		dat.setId(id);
  		Work work=new Work();
  		work.setDepartId(id);
		
		ok=manager.delete((Object)dat);
		ok=ok&&workManager.delete((Object)work);
		
		if(ok)
		{
		    msg="部门删除成功！点击“确定”转到部门一览页面。";
		}
		else
		{
		    msg="部门删除失败！请重新操作或联系系统管理员！点击“确定”转到部门一览页面。";
		}
	}
	else
	{
		msg="操作错误或系统错误！请重新操作或联系系统管理员！点击“确定”转到部门一览页面。";
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.navigate("<%=url%>");
</script>
<body>
</body>
</html>
