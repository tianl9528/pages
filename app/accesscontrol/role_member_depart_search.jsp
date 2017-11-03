<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%
request.setCharacterEncoding("utf-8");
long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
long roleId=Long.parseLong(request.getParameter("id"));
DAO dao=new DAO();
try
{
	dao.begin();
	RoleManager manager=new RoleManager();
	String condition="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");	
		session.setAttribute("sys_role_departsearch",condition);
	}
	if(session.getAttribute("sys_role_departsearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_role_departsearch"));
	}
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.readRoleDepart(departId,roleId,condition),20,request);
%>
<html>
<head>
<title>权限管理&gt;&gt;角色管理&gt;&gt;部门成员一览</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<script language="JavaScript" type="text/javascript">
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
		alert("请选择一部门");
	}else{
		if (confirm(""))
			str1 = "deldepart.jsp?departID="+str;
			this.location.href=str1
	}
}
</script>
</head>
<body>
<table width="100%" align="center" cellpadding="3" cellspacing="0">
      <tr>
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：权限管理&gt;&gt;角色管理&gt;&gt;部门成员一览</td>
        <td width="40%" align="right">
		<input name="back" type="button" class="button" onClick="window.navigate('role_member_depart.jsp?id=<%=roleId%>')" value="返回">
		<input name="button" type="button" class="button" onClick="showSearch()" value="查找">
          <input name="button2" type="button" class="button" onClick="window.navigate('role_member_depart_add.jsp?id=<%=roleId%>')" value="新增">
        </td>
      </tr>
</table>
<div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
<form name="thisForm" action="role_member_depart_search.jsp" method="post">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" style="width:98%"><input style="display:none"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找">
		  	<input type="hidden" name="id" value="<%=roleId%>">
		  </td>
        </tr>
</form>
      </table>
</div>
      <table width="100%" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td height="25" align="right">
		  	<a href="role_member_user.jsp?id=<%=roleId%>">用户成员</a>&nbsp;&nbsp;&nbsp;&nbsp;
			部门成员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#B8CBE9">
        <tr bgcolor="#FFFFFF">
          <td>
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="8%" height="25" align="center" class="list_title">序号</td>
          <td width="15%" align="center" class="list_title">名称</td>
          <td width="15%" align="center" class="list_title">代码</td>
          <td width="5%" align="center" class="list_title">类型</td>
          <td width="15%" align="center" class="list_title">电话</td>
          <td width="15%" align="center" class="list_title">E_Mail</td>
          <td width="15%" align="center" class="list_title">上级部门</td>
          <td width="12%" align="center" class="list_title">操作</td>
        </tr>
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			Depart dat=(Depart)list.get(i);
			String theme=i%2==0?"":"1";
%>
        <tr align="center">
          <td height="22" class="list_item<%=theme%>"><%=pagination.getStartData()+i+1%></td>
          <td class="list_item<%=theme%>"><%=dat.getName()==null?"":dat.getName()%></td>
          <td class="list_item<%=theme%>"><%=dat.getDepartCode()==null?"":dat.getDepartCode()%></td>
          <td class="list_item<%=theme%>"><%=DepartHelper.getType(dat.getDepartType())%></td>
          <td class="list_item<%=theme%>"><%=dat.getPhoneList()==null?"":dat.getPhoneList()%></td>
          <td class="list_item<%=theme%>"><%=dat.getEmailList()==null?"":dat.getEmailList()%></td>
          <td class="list_item<%=theme%>"><%=dat.getParentDepart()==null?"":dat.getParentDepart().getName()%></td>
          <td class="list_item<%=theme%>">
			  <a href="role_member_depart_delete.jsp?roleId=<%=roleId%>&departId=<%=dat.getId()%>" onClick="return confirm('若删除该部门成员，此部门将不再拥有此角色！\n\n是否确定删除记录？')">删除部门成员</a>
		  </td>
        </tr>
        <% 
 		}
	}
	else
	{
%>
        <tr align="center" class="table_row2">
          <td height="22" colspan="10">没有数据！</td>
        </tr>
        <%
	}
%>
      </table>
	</td>
  </tr>
</table><%=pagination.getControl(request,response)%>
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