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
	JobManager manager=new JobManager();
	String condition="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");	
		session.setAttribute("sys_jobsearch",condition);
	}
	if(session.getAttribute("sys_jobsearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_jobsearch"));
	}
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.read(condition),20,request);
%>
<html>
<head>
<title>权限管理&gt;&gt;职位管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
			str1 = "delentity.jsp?EntityID="+str;
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
			str1 = "disentity.jsp?EntityID="+str;

			this.location.href=str1
		}
	}
}
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td align="center"><table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：职位一览（查找结果）</td>
        <td width="40%" align="right">
		<input name="back" type="button" class="button" onClick="window.navigate('job_list.jsp')" value="返回">
		<input name="searchit" type="button" class="button" onClick="showSearch()" value="查找">
        <input name="add" type="button" class="button" onClick="window.navigate('job_add.jsp')" value="新增">
        </td>
      </tr>
    </table>
<div id=searchdiv align="center" style="display:none">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
<form name="thisForm" action="job_search.jsp" method="post">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" value="<%=condition==null?"":condition%>" style="width:98%"><input style="display:none"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>
      <table width="98%" align="center" cellpadding="0" cellspacing="1" class="table_frame">

        <tr align="center" class="table_header">
          <td width="5%" height="25">序号</td>
          <td width="25%">名称</td>
          <td width="10%">顺序</td>
          <td width="52%">备注</td>
          <td width="8%">操作</td>
        </tr>
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			Job dat=(Job)list.get(i);
			String theme=i%2==0?"table_row2":"table_row1";
%>
		<tr class="<%=theme%>">
          <td align="center" height="22"><%=pagination.getStartData()+i+1%></td>
          <td align="center"><%=dat.getName()==null?"":dat.getName()%></td>
          <td align="center"><%=dat.getTrain()==null?"":dat.getTrain()%></td>
          <td><%=dat.getNote()==null?"":dat.getNote()%></td>
		  <td align="center">
		  	<a href="job_edit.jsp?id=<%=dat.getId()%>">修改</a>&nbsp;
			<a href="job_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('确定删除此功能吗？')">删除</a>
		  </td>
<% 
 		}
	}
	else
	{
%>
  <tr align="center" class="table_row3">
    <td height="22" colspan="6">没有数据！</td>
    </tr>
<%
	}
%>
  <tr class="table_row3" align="center" >
    <td colspan="6"><%=pagination.getControl(request,response)%></td>
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
