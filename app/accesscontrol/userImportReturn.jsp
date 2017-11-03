<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ include file="/themes/common/inc/itil.inc" %>
<%@ page import="java.util.List" %>
<%@ page import="sunit.accesscontrol.importdata.ImportUserData" %>
<%@ page import="sunit.accesscontrol.importdata.UserData" %>

<%
List unsucceedUser=null;
int succeedAmount=0;
if("upload".equals(request.getParameter("action")) && request.getParameter("action") != null){

ImportUserData importUserData=new ImportUserData();
boolean flag=importUserData.importData(application,request,response);
if(flag){
	unsucceedUser=importUserData.getUnsucceedUser();
	succeedAmount=importUserData.getSucceedAmount();
}else{
	out.print("<script language='JavaScript'> alert('请查看Excel文档的格式是否与模版文档的格式一致!'); window.navigate('"+request.getContextPath()+"/itil/accesscontrol/userImport.jsp');</script>");
	return ;
}
}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设备管理</title>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/itil.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/office/office.js"></script>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td height="24" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：组织结构 - 用户管理 - 用户导入结果</td>
    <td align="right">
      <input type="button" name="back" value="返回" onClick="javascript:history.back();" class="bt_back">
	  </td>
  </tr>
  <tr>
    <td align="left" valign="middle" colspan="2">&nbsp;操作结果: 成功导入&nbsp;<font color="#00FF00"><%=succeedAmount%></font>&nbsp;条 失败返回&nbsp;<font color="#FF0000"><%=unsucceedUser.size()%></font>&nbsp;条</td>
  </tr>  
</table>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#B8CBE9">
	<tr bgcolor="#FFFFFF">
	<td>  
    <table width="100%" border="0" cellspacing="1" id="unsuUser">
	<tr height="30" bgcolor="#FFFFFF">		
    <td class="list_title" width="20%">部门/班组名称</td>
    <td class="list_title" width="20%">用户姓名</td>
    <td class="list_title" width="20%">登录帐号</td>    
    <td width="10%" class="list_title">性别</td>
    <td class="list_title" width="30%">失败原因</td>
	</tr>
	<%
	 String color = null;
	%>
	<%
	 if(unsucceedUser != null && unsucceedUser.size() > 0){
	 UserData userData=new UserData();
	 for(int i=0;i<unsucceedUser.size();i++){
	     userData=(UserData)unsucceedUser.get(i);
		 
		 if(i%2 == 0){
		    color = "";
		 }else{
		    color = "1";
		 }
	%>
<tr>    
    <td class="list_item<%=color%>"><%=userData.getDepartName()%></td>
    <td class="list_item<%=color%>"><%=userData.getUserName()%></td>
    <td class="list_item<%=color%>"><%=userData.getAccountName()%></td>    
    <td class="list_item<%=color%>"><%=userData.getSex()%></td>
    <td class="list_item<%=color%>"><%=userData.getNote()%></td>  
	</tr>
	<%
	  }
	 }else{
	%>
	<tr>
		<td class="list_item" colspan="14" align="center">没有失败返回数据！</td>
	</tr>
	<%
	 }
	%>	
    </table>
	</td>
    </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr height="20" align="left">
    <td>共<%=unsucceedUser.size()%>条</td>
  </tr>
  <tr height="25">
    <td>注：以上显示所有未成功导入数据库的用户</td>
  </tr>
  <tr><td height="30"><input type="button" name="Excel" class="button" value="导出Excel" onClick="javascript:CellAreaToExcel('unsuUser');"></td></tr>
</table>
</body>
</html>