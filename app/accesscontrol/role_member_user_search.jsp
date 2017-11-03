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
String departIds= String.valueOf(session.getAttribute(Config.KEY_DEPARTIDS));
if(departIds==null || departIds.equals("null") || departIds.equals("")){
	long tempdepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId(); 
	String tempdepartIds = sunit.accesscontrol.manager.DepartHelper.readChildDepartId(tempdepartId);
	if(tempdepartIds.length()>0){
		tempdepartIds = tempdepartIds.substring(1);
	}else{
		tempdepartIds = "-1";//如果没有子部门，则设置为－1
	}
	tempdepartIds = "("+tempdepartIds+")";
	session.setAttribute(Config.KEY_DEPARTIDS,tempdepartIds);	
	departIds=tempdepartIds;
}
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
		session.setAttribute("sys_role_usersearch",condition);
	}
	if(session.getAttribute("sys_role_usersearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_role_usersearch"));
	}
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.readRoleUser(departId,departIds,roleId,condition),20,request);
%>
<html>
<head>
<title>权限管理&gt;&gt;角色管理&gt;&gt;用户成员一览</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="javascript" type="text/javascript">
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
</script>
</head>
<body>
<table width="100%" align="center" cellpadding="3" cellspacing="0">
      <tr>
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：权限管理&gt;&gt;角色管理&gt;&gt;用户成员一览</td>
        <td width="40%" align="right">
		  <input name="back" type="button" class="button" onClick="window.location.href='role_member_user.jsp?id=<%=roleId%>'" value="返回">
		<input name="button" type="button" class="button" onClick="showSearch()" value="查找">
          <input name="button2" type="button" class="button" onClick="window.location.href='role_member_user_add.jsp?id=<%=roleId%>'" value="新增">
        </td>
      </tr>
</table>
      <div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
<form name="thisForm" action="role_member_user_search.jsp" method="post">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" style="width:98%" title="登录名称、姓名、身份证号、电话、手机、电子邮件、住址、部门名称"><input style="display:none"></td>
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
		  	用户成员&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="role_member_depart.jsp?id=<%=roleId%>">部门成员</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
<!--//-->
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#B8CBE9">
        <tr bgcolor="#FFFFFF">
          <td>
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="5%" height="30" class="list_title">序号</td>
          <td width="8%" class="list_title">登录名</td>
          <td width="8%" class="list_title">姓名</td>
          <td width="10%" class="list_title">电话</td>
          <td width="12%" class="list_title">E_mail</td>
          <td width="15%" class="list_title">地址</td>
          <td width="12%" class="list_title">部门</td>
          <td width="12%" class="list_title">操作</td>
        </tr>
<%	    
	if(list != null&&list.size()>0)
	{
		User dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (User)list.get(i);
			String theme = (i%2==0) ? "" : "1";
	%>
        <tr>
          <td class="list_item<%=theme%>"><%=pagination.getStartData()+i+1%></td>
          <td class="list_item<%=theme%>"><%=(dat.getName()!=null&&dat.getName().length()>0)?dat.getName():""%></td>
          <td class="list_item<%=theme%>"><%=(dat.getFirstName()!=null&&dat.getFirstName().length()>0)?dat.getFirstName():""%><%=(dat.getLastName()!=null&&dat.getLastName().length()>0)?dat.getLastName():""%></td>
          <td class="list_item<%=theme%>"><%=(dat.getPhoneList()!=null&&dat.getPhoneList().length()>0)?dat.getPhoneList():""%></td>
          <td class="list_item<%=theme%>"><%=(dat.getEmailList()!=null&&dat.getEmailList().length()>0)?dat.getEmailList():""%></td>
          <td class="list_item<%=theme%>"><%=(dat.getAddress()!=null&&dat.getAddress().length()>0)?dat.getAddress():""%></td>
          <td class="list_item<%=theme%>"><%=(dat.getDepart()!=null)?dat.getDepart().getName():""%></td>
          <td class="list_item<%=theme%>">
		<a href="role_member_user_delete.jsp?roleId=<%=roleId%>&userId=<%=dat.getId()%>" onClick="return confirm('若删除该用户成员，此用户将不再拥有此角色！\n\n是否确定删除记录？')">删除用户成员</a>        </tr>
<%		}
	}
		%>
      </table></td>
        </tr>
</table><%=pagination.getControl(request,response)%>
<!--\\-->
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