<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try
{
	dao.begin();
	Manager manager=ManagerFactory.getManager(ManagerFactory.Manager_Depart);
	Depart depart=new Depart();
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		depart.setName(request.getParameter("departname"));
		session.setAttribute("sys_departsearch",depart);
	}
	if(session.getAttribute("sys_departsearch")!=null)
	{
		depart=(Depart)session.getAttribute("sys_departsearch");
	}
	Pagination pagination=new Pagination();
	List departList=manager.read((Object)depart);
	List list=pagination.getList(departList,20,request);
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<script language="JavaScript" type="text/javascript">
function showSearch()
{
	if(document.getElementById("searchdiv").style.display=="none")
	{
		document.getElementById("searchdiv").style.display="";
	}
	else
	{
		document.getElementById("searchdiv").style.display="none";
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
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="noborder">
  <tr>
    <td>
	<table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row2">
        <td width="20%" height="30"><font size="+1"><strong>部门一览</strong></font>（查找结果）</td>
        <td width="20%">&nbsp;</td>
        <td width="20%">&nbsp;</td>
        <td width="40%" align="right">
		  <input name="back" type="button" class="button" onClick="window.navigate('depart_list.jsp')" value="返 回">
&nbsp;&nbsp;
		  <input name="searchit" type="button" class="button" onClick="showSearch()" value="查 找">
&nbsp;&nbsp;
          <input name="add" type="button" class="button" onClick="window.navigate('depart_add.jsp')" value="新 增">        </td>
        </tr>
    </table>
<div id=searchdiv align="center" style="display:none">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
<form name="thisForm" action="depart_search.jsp" method="post">
        <tr class="table_row2">
          <td width="30%" height="25" align="right">部门名称：</td>
          <td width="40%"><input type="text" name="departname" class="input_oneborder" value="<%=depart.getName()==null?"":depart.getName()%>" style="width:98%"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>
      <table width="98%" align="center" cellpadding="0" cellspacing="1" class="table_frame">
        <tr class="table_header">
          <td width="8%" height="25" align="center">序号</td>
          <td width="15%" align="center">名称</td>
          <td width="15%" align="center">代码</td>
          <td width="5%" align="center">类型</td>
          <td width="15%" align="center">电话</td>
          <td width="15%" align="center">E_Mail</td>
          <td width="15%" align="center">上级部门</td>
          <td colspan="3" align="center">操作</td>
        </tr>
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			Depart dat=(Depart)list.get(i);
			String theme=i%2==0?"table_row1":"table_row2";
%>
        <tr align="center" class=<%=theme%>>
          <td height="22"><%=pagination.getStartData()+i+1%></td>
          <td><%=dat.getName()==null?"":dat.getName()%></td>
          <td><%=dat.getDepartCode()==null?"":dat.getDepartCode()%></td>
          <td><%=DepartHelper.getType(dat.getDepartType())%></td>
          <td><%=dat.getPhoneList()==null?"":dat.getPhoneList()%></td>
          <td><%=dat.getEmailList()==null?"":dat.getEmailList()%></td>
          <td><%=DepartHelper.getName(dat.getParentDepartID(),departList)%></td>
          <td width="4%"><a href="depart_detail.jsp?id=<%=dat.getId()%>" target="_blank">查看</a></td>
          <td width="4%"><a href="depart_edit.jsp?id=<%=dat.getId()%>">修改</a></td>
          <td width="4%"><a href="depart_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('若删除该部门，其下级部门将会上升一级，该部门内用户会成为无部门用户！\n\n是否确定删除记录？')">删除</a></td>
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
        <tr class="table_row2" align="center" >
          <td colspan="10"><%=pagination.getControl(request,response)%></td>
        </tr>
      </table></td>
  </tr>
</table>
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