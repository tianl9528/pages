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
	NodeGroupManager manager=new NodeGroupManager();
	String condition="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");
		session.setAttribute("sys_nodegroupsearch",condition);
	}
	if(session.getAttribute("sys_nodegroupsearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_nodegroupsearch"));
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
		alert("请选择一实体");
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
		alert("请选择一实体");
	}else{
		if (confirm("是否确定删除记录？")){
			str1 = "disentity.jsp?EntityID="+str;

			this.location.href=str1
		}
	}
}

$(function(){
    $('#list_tb').table();
});
</script>
</head>
<body>
<table width="100%" align="center" cellpadding="3" cellspacing="0" class="noborder">
      <tr class="table_row3">
  <div class="body_title">
        <li style="padding-top:8px; padding-left:5px"> 您当前的位置：职位一览（查找结果）
	        			</li>
       </div>
       <br>
        <td width="40%" align="right">
		<input name="back" type="button" class="btn" onClick="window.location.href='nodegroup_list.jsp'" value="返回">
		<input name="searchit" type="button" class="btn" onClick="showSearch()" value="查找">
        <input name="add" type="button" class="btn" onClick="window.location.href='nodegroup_add.jsp'" value="新增">
        </td>
      </tr>
</table>
<div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
<form name="thisForm" action="nodegroup_search.jsp" method="post">
        <tr >
          <td class="content_select" width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="txt_select" value="<%=condition==null?"":condition%>" style="width:98%"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="btn" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>
<br>
   <table id="list_tb" class="main_content" width="100%" border="0" align="center" cellpadding="1" cellspacing="1" >
      <tr align="center" class="_title">
          <td class="title" width="5%" height="25">序号</td>
          <td class="title" width="30%">名称</td>
          <td class="title" width="50%">备注</td>
          <td class="title" width="15%">操作</td>
        </tr>
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			NodeGroup dat=(NodeGroup)list.get(i);
		
%>
		<tr >
          <td class="content"  align="center" height="22"><%=pagination.getStartData()+i+1%></td>
          <td class="content" align="center"><%=dat.getName()==null?"":dat.getName()%></td>
          <td class="content"   ><%=dat.getNote()==null?"":dat.getNote()%></td>
		  <td class="content" align="center">
		  	<a href="node_list.jsp?groupid=<%=dat.getId()%>">管理</a>&nbsp;
			<a href="<%=request.getContextPath()%>/accesscontrol/select/menu.jsp?groupid=<%=dat.getId()%>" target="_blank">预览</a>&nbsp;
		  	<a href="nodegroup_edit.jsp?id=<%=dat.getId()%>">修改</a>&nbsp;
			<a href="nodegroup_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('确定删除此模块吗？此模块下的菜单也会全部删除！')">删除</a>
		  </td>
          <% 
 		}
	}
	else
	{
%>
  <tr align="center" class="_foot">
    <td height="40" colspan="4">没有数据！</td>
    </tr>
<%
	}

%></table><%=pagination.getControl(request,response)%>
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
