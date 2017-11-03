<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "java.util.List" %>
<%@ page import = "sunit.database.*"%>
<%
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
DAO dao=new DAO();
try
{
	dao.begin();
	UserManager manager=new UserManager();
	String condition ="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");
		session.setAttribute("sys_usersearch",condition);
	}
	if(session.getAttribute("sys_usersearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_usersearch"));
	}
	PaginationI pagination=new PaginationI();
//	List tempList=pagination.getListSQL(manager.readDefault(condition,departId),20,request);
	List tempList=pagination.getListSQL(manager.readDefault(condition,departId,departIds),15,request);
	List list=manager.poTransfer(tempList);
%>
<html>
<head>
<title>权限管理&gt;&gt;用户管理</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css">
<meta http-equiv=<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/sorttable.js"></script>
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
<table width="100%" align="center" cellpadding="3" cellspacing="0" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url">&nbsp;</td>
        <td width="30%" align="right"><input name="button" type="button" class="button" onClick="showSearch()" value="查找"></td>
      </tr>
</table>
<div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
<form name="thisForm" action="user_search.jsp" method="post">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" value="<%=condition==null?"":condition%>" style="width:98%" title="登录名称、姓名、性别、身份证号、岗位名称、工作证号、人员分类、人员类别、人员编号、政治面貌、党政职务、技术职务、工人职务聘任、电话、手机、电子邮件、住址"><input style="display:none"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>
<table width="100%" cellpadding="1" cellspacing="1">
        <tr bgcolor="#FFFFFF">
          <td>
      <table width="100%" align="center" cellpadding="0" cellspacing="1" class="sortable" id="mytable">
        <tr align="center">
          <td width="5%" height="30" class="list_title">序号</td>
          <td width="13%" class="list_title">登录名</td>
          <td width="11%" class="list_title">姓名</td>
          <td width="11%" class="list_title">电话</td>
          <td width="14%" class="list_title">手机</td>
          <td width="15%" class="list_title">E_mail</td>
          <td width="18%" class="list_title">部门</td>
          <td width="11%" class="list_title">操作</td>
        </tr>
<%	    
	if(list != null&&list.size()>0)
	{
		User dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (User)list.get(i);
			String theme = (i%2==0) ? "table_row2" : "table_row1";
	%>
        <tr class="<%=theme%>">
          <td height="22" align="center"><%=pagination.getStartData()+i+1%></td>
          <td align="center"><%=(dat.getName()!=null&&dat.getName().length()>0)?dat.getName():""%></td>
          <td align="center"><%=(dat.getFirstName()!=null&&dat.getFirstName().length()>0)?dat.getFirstName():""%><%=(dat.getLastName()!=null&&dat.getLastName().length()>0)?dat.getLastName():""%></td>
          <td align="center"><%=(dat.getPhoneList()!=null&&dat.getPhoneList().length()>0)?dat.getPhoneList():""%></td>
          <td class="list_item<%=theme%>"><%=(dat.getSort()!=null&&dat.getSort().length()>0)?dat.getSort():""%></td>
          <td align="center"><%=(dat.getEmailList()!=null&&dat.getEmailList().length()>0)?dat.getEmailList():""%></td>
          <td align="center"><%=(dat.getDepart()!=null)?dat.getDepart().getName():""%>
<%
/*
			if(dat.getDeparts() == null || dat.getDeparts().size()<=0)
            {
				out.print("-");
        	}
			else
			{
            	for(int k=0;k<dat.getDeparts().size();k++)
				{
					out.print(DepartHelper.getName(String.valueOf(dat.getDeparts().get(i)),departList,workList));
				}
	        }
*/
%>        </td>
          <td align="center"><a href="user_detail.jsp?id=<%=dat.getId()%>" target="_blank"><img src="<%=request.getContextPath()%>/themes/common/img/icons/view.gif" border="0" align="absmiddle" title="查看" /></a><a href="user_edit.jsp?id=<%=dat.getId()%>"><img src="<%=request.getContextPath()%>/themes/common/img/icons/edit.gif" border="0" align="absmiddle" title="编辑" /></a><a href="user_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('确定删除此用户吗？')"><img src="<%=request.getContextPath()%>/themes/common/img/icons/del.gif" border="0" align="absmiddle" title="删除" /></a></td>
        </tr>
<%		}
	}
		%>
</table></td></tr></table><%=pagination.getControl(request,response)%>
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