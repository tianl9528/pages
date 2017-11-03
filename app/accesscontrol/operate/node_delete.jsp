<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%
  long id;
  long groupid;
  id = Long.parseLong(request.getParameter("id")==null||request.getParameter("id").length()<=0?"":request.getParameter("id"));
  groupid=Long.parseLong(request.getParameter("groupid")==null||request.getParameter("groupid").length()<=0?"":request.getParameter("groupid"));

  String msg;
  String url="/accesscontrol/node_list.jsp?groupid="+groupid;
  boolean ok=false;
  
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong(request.getParameter("id")==null||request.getParameter("id").length()<=0?"":request.getParameter("id"));
  groupid=Long.parseLong(request.getParameter("groupid")==null||request.getParameter("groupid").length()<=0?"":request.getParameter("groupid"));

  
  
	if(id!=0)
	{
		NodeGroup group=new NodeGroup();
		group.setId(groupid);
		NodeManager manager=new NodeManager(group);
				
		ok=manager.delete(id);
				
		if(ok)
		{
		    msg="菜单删除成功！点击“确定”返回。";
		}
		else
		{
		    msg="菜单删除失败！请重新操作或联系系统管理员！点击“确定”返回。";
		}
	}                    
	else
	{
		msg="操作错误或系统错误！请重新操作或联系系统管理员！点击“确定”返回。";
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;菜单管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.parent.location.href="<%=request.getContextPath()%>/app<%=url%>";
</script>
<body>
</body>
</html>
