<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try
{
	dao.begin();
	RoleManager manager=new RoleManager();
	String condition="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");
		session.setAttribute("sys_rolesearch",condition);
	}
	if(session.getAttribute("sys_rolesearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_rolesearch"));
	}
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.read(condition),20,request);
%>
<html>
<head>
<title>权限管理&gt;&gt;角色管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<script language="JavaScript">
function showSearch()
{
	if(document.all.item("searchdiv").style.display=="none")
	{
		document.all.item("searchdiv").style.display="";
	}
	else
	{
		document.all.item("searchdiv").style.display="none";
	}
}
// 验证删除操作
function delConfirm(){
	var str="";
	str=radif();

	if(str==""){
		alert("请选择一功能模块");
	}else{
		if (confirm("是否确定删除记录？")){
			str1 = "delRole.jsp?RoleID="+str;
			this.location.href=str1
		}
	}
}

function radif(){
   var i=0;
   var n=0,j;
   var str="",str1="";
   n=rad.length;
   for (j=0;j<n;j++){
	   if(rad[j].checked){
		   if(i==0){
			   str1=""
			   i=i+1;
		   }else{
			   str1=";";
		   }
		   str=str+str1+rad[j].value;
	  }
   }
   if(rad.checked)
	   str=rad.value;
   return str;
}

function disEnable(){
	var str="";
	str=radif();

	if(str==""){
		alert("请选择一功能模块");
	}else{
		if (confirm("是否确定删除记录？")){
			str1 = "disRole.jsp?RoleID="+str;

			this.location.href=str1;
		}
	}
}
</script>
</head>
<body>
<table width="100%" align="center" cellpadding="3" cellspacing="0">
      <tr>
		<td height="24" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：角色一览（查找结果）</td>
        <td align="right">
		<input name="back" type="button" class="button" onClick="window.location.href='role_list.jsp'" value="返回">
		<input name="searchit" type="button" class="button" onClick="showSearch()" value="查找">
        <input name="add" type="button" class="button" onClick="window.location.href='role_add.jsp'" value="新增">
        </td>
      </tr>
</table>
<div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
<form name="thisForm" action="role_search.jsp" method="post">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" value="<%=condition==null?"":condition%>" style="width:98%" title="名称、备注"><input style="display:none"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#B8CBE9">
        <tr bgcolor="#FFFFFF">
          <td>
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="5%" height="30" class="list_title">序号</td>
          <td width="25%" height="30" class="list_title">名称</td>
          <td height="30" class="list_title">备注</td>
          <td width="20%" class="list_title">操作</td>
        </tr>
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			Role dat=(Role)list.get(i);
			String theme=i%2==0?"":"1";
%>
		<tr>
          <td class="list_item<%=theme%>"><%=pagination.getStartData()+i+1%></td>
          <td class="list_item<%=theme%>"><%=dat.getName()==null?"":dat.getName()%></td>
          <td class="list_item<%=theme%>"><%=dat.getNote()==null?"":dat.getNote()%></td>
          <td class="list_item<%=theme%>">
		  	<a href="role_member_user.jsp?id=<%=dat.getId()%>">角色成员</a>&nbsp;
		  	<a href="role_config.jsp?id=<%=dat.getId()%>">配置角色</a>&nbsp;
		  	<a href="role_edit.jsp?id=<%=dat.getId()%>" onFocus="this.blur()">编辑</a>&nbsp;
			<a href="role_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('确定删除此角色吗？')" onFocus="this.blur()">删除</a></td>
<% 
 		}
	}
	else
	{
%>
  <tr>
    <td class="list_item" colspan="4">没有数据！</td>
    </tr>
<%
	}
%>
   </table></td>
        </tr>
</table>
<%=pagination.getControl(request,response)%>
</body>
</html>
<%
}
catch(Exception e)
{
	e.printStackTrace();
}
finally
{
	dao.close();
}
%>
