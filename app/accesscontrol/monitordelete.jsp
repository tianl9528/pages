<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="sunit.accesscontrol.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>监控</title>
<script language="javascript">
<%
	String id=request.getParameter("id");
	try{
		if(id!=null&&id.length()>0){
			AccessControl ac=AccessControl.getInstance();
			ac.removeOnlineUser(id);
			out.print("window.alert('注销成功！');");
			out.print("window.navigate('monitor_list.jsp');");
		}
		else{
			out.print("window.alert('注销失败，请重新操作！');");
			out.print("window.navigate('monitor_list.jsp');");
		}
	}
	catch(Exception e){
		out.print("window.alert('注销失败，请重新操作！');");
		out.print("window.navigate('monitor_list.jsp');");
	}
%>
</script>
</head>

<body>
</body>
</html>
