<%@ page contentType="text/html; charset=utf-8" language="java" %>
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
	DepartManager manager=new DepartManager();
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.readAll(),20,request);
	session.removeAttribute("sys_departsearch");
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<table width="100%" align="center" cellpadding="1" cellspacing="1">
      <tr>
		<td height="24" valign="top" class="url">
		<img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：权限管理 - 部门一览</td>
        <td align="right">
        </td>
      </tr>
</table>
<div id=searchdiv align="center" style="display:none">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
<form name="thisForm" action="depart_search.jsp" method="post">
        <tr class="table_row2">
          <td width="30%" height="25" align="right">部门名称：</td>
          <td width="40%"><input type="text" name="departname" class="input_oneborder" style="width:98%"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>
<table width="100%" border="0" cellspacing="1" cellpadding="1" class="table_frame">
        <tr class="table_header">
          <th width="8%" height="25" align="center" nowrap>序号</th>
          <th width="15%" align="center" nowrap>名称</th>
          <th width="15%" align="center" nowrap>代码</th>
          <th width="5%" align="center" nowrap>类型</th>
          <th width="15%" align="center" nowrap>电话</th>
          <th width="15%" align="center" nowrap>E_Mail</th>
          <th width="15%" align="center" nowrap>上级部门</th>
          <th width="12%" align="center" nowrap>操作</th>
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
          <td></td>
          <td><%=dat.getPhoneList()==null?"":dat.getPhoneList()%></td>
          <td><%=dat.getEmailList()==null?"":dat.getEmailList()%></td>
          <td></td>
          <td>
          	<a href="depart_detail.jsp?id=<%=dat.getId()%>" target="_blank">查看</a>
          	<!-- 
          	<a href="depart_edit.jsp?id=<%=dat.getId()%>">修改</a>
			<a href="depart_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('若删除该部门，其下级部门将会上升一级，该部门内用户会成为无部门用户！\n\n是否确定删除记录？')">删除</a>
		  	 -->
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
        <tr class="table_row2" align="center" >
          <td colspan="10"><%=pagination.getControl(request,response)%></td>
        </tr>
      </table>
	</td>
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