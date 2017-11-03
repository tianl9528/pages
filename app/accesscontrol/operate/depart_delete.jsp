<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try{
dao.begin();
  long id;
  String msg;
  String url="/itil/accesscontrol/depart_list.jsp";
  boolean ok=false;
  
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong(request.getParameter("id")==null||request.getParameter("id").length()<=0?"":request.getParameter("id"));

  
  
	if(id!=0)
	{
  		DepartManager manager=new DepartManager();
		
		ok=manager.delete(id);
				
		if(ok)
		{
		    msg="部门删除成功！点击“确定”返回。";
		}
		else
		{
		    msg="部门删除失败！请重新操作或联系系统管理员！点击“确定”返回。";
		}
	}
	else
	{
		msg="操作错误或系统错误！请重新操作或联系系统管理员！点击“确定”返回。";
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.parent.navigate("<%=request.getContextPath()%><%=url%>");
</script>
<body>
</body>
</html>
<%
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	dao.close();
}
%>