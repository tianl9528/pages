<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.util.*"%>
<%@ page import=" sunit.util.date.*"%>
<%
	AccessControl ac=AccessControl.getInstance();
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/ntes/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/ntes/ntes.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/sorttable.js"></script>
<title>监控</title>
</head>

<body>
<table width="100%" align="center" cellpadding="3" cellspacing="0">
      <tr>
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：系统管理 - 权限管理 - 在线人员</td>
        <td align="right"><input name="list" value="树型显示" class="button" type="button" onclick="location.href='<%=request.getContextPath()%>/itil/accesscontrol/monitor.jsp'" /></td>
      </tr>
</table>
<table width="100%" align="center" cellpadding="3" cellspacing="0" class="table_frame3">
      <tr class="table_row2">
		<td height="30">
			总在线人数：<%//=ac.getOnlineUserCount()%><%=ac.getObjUsers().size()%><br />
		</td>
      </tr>
</table>
<table width="100%" align="center" cellpadding="3" cellspacing="0" class="sortable" id="mytable">
      <tr class="table_row2" align="center">
		<td height="30" width="32%" class="list_title">部门（单位）</td>
        <td width="18%" class="list_title">姓名</td>
        <td width="21%" class="list_title">登陆名</td>
        <td width="19%" class="list_title">登陆时间</td>
        <td width="10%" class="list_title">强制注销</td>
      </tr>
<%
	Iterator i = ac.getObjUsers().values().iterator();
    Info info;
	String color="";
	int count=0;
    while (i.hasNext())	{
		count=count+1;
		info = (Info) i.next();
		if(count%2==0){
			color = "";
		}else{
			color = "1";
		}
%>
      <tr>
      	<td class="list_item<%=color%>"><%=info.getDepartName()%></td>
        <td class="list_item<%=color%>"><%=info.getUserName()%></td>
        <td class="list_item<%=color%>"><%=info.getUserLoginName()%></td>
        <td class="list_item<%=color%>"><%=DateUtil2.fotmatDate3(DateUtil3.parse(info.getLoginTime()))%></td>
        <td class="list_item<%=color%>"><a href="monitordelete.jsp?id=<%=info.getUserId()%>"><img src="<%=request.getContextPath()%>/themes/common/img/icons/del.gif" border="0" align="absmiddle" title="强制注销" /></a></td>
      </tr>
<%
	}
%>
</table>
</body>
</html>
