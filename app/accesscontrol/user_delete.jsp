<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.util.eip.EipWebService"%>
<%
  long id;
  String msg;
  String url="user_list.jsp";
  boolean ok=false;
  User user = null;
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong(request.getParameter("id")==null||request.getParameter("id").length()<=0?"":request.getParameter("id"));
  
 	if(id!=0)
	{
		try{
			UserManager manager=new UserManager();
			user = (User)manager.readOne(id);
			
			ok=manager.delete(id);
		}catch(Exception e){
			ok = false;
		}
		if(ok)
		{
			String eip = "[eip密码同步成功]";
			EipWebService eip2 = new EipWebService();
			String result = eip2.getfc("0045",user.getName(),user.getFirstName(),user.getPassword(),"delete");
			if(!result.equals("0")){
				eip = "[eip密码同步失败]";
			}
		    msg="用户删除成功"+eip+"！点击“确定”转到用户一览页面。";
		}
		else
		{
		    msg="用户删除失败！请重新操作或联系系统管理员！点击“确定”转到用户一览页面。";
		}
	}
	else
	{
		msg="操作错误或系统错误！请重新操作或联系系统管理员！点击“确定”转到用户一览页面。";
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.location.href="<%=url%>";
</script>
</body>
</html>
