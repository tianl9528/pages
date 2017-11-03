<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.util.*"%>
<%
	String departId = request.getParameter("id");
	AccessControl ac=AccessControl.getInstance();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css">
<title>在线人数</title>
</head>

<body style="padding-left:10px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td style="line-height:150%;">在线总人数：<%=ac.getObjUsers().size()%>人<br />
<!--HashMap：<%=ac.getObjUsers().size()%><br />-->
<table width="100%" border="0" cellspacing="1" cellpadding="1" class="table_frame2">
<tr class="table_row4">
    <td bgcolor="#FFFFFF">&nbsp;&nbsp;当前部门</td>
  </tr>
  <tr class="table_row3">
    <td bgcolor="#FFFFFF" style="line-height:150%;padding:10px;">
	人员列表：<br />
<%
	Iterator it = ac.getObjUsers().values().iterator();
	int i = 0;
    Info info;
    while (it.hasNext())	{
		info = (Info) it.next();
		//change by canders
		if(String.valueOf(info.getDepartId()).equals(departId)){
			out.print(info.getUserName());
			out.print("（");
			out.print(info.getUserLoginName());
			out.print("）");
			out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
			i += 1;
			if(i%6==0){
				out.print("<br/>");
			}
			
		}
	}
	out.print("<br>在线人数："+i+"人");
%>	</td>
  </tr>
</table></td>
  </tr>
</table>
</body>
</html>
