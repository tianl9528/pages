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
	RoleManager manager=new RoleManager();
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.readAll(),20,request);
%>
<HTML>
<HEAD>
<TITLE>权限管理&gt;&gt;角色管理</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
$(function(){
    $('#list_tb').table();
});


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

</HEAD>
<BODY>

<div class="searchBox">
	<div><input type="button" value="新增" class="base_btn" style="float:left;" onClick="window.location.href='role_add.jsp'"/> </div>
</div>
      <div class="clear"></div>

<div class="listBox">
        <div class="listTitle">系统角色<span class="more"><a href="#" onClick="window.location.href='role_add.jsp'">+</a></span></div>
		<div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="100">序号</td>
              <td width="200">名称</td>
              <td width="">备注</td>
              <td width="170">操作</td>
            </tr>
          </table>
                  
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			Role dat=(Role)list.get(i);
	
%>						  
                           <tr class="<%if(i%2 == 0) out.print("colorGrey"); else out.print("colorwhite");%>">	
                            <TD class="trainLeft" width="100"><%=pagination.getStartData()+i+1%></TD>
                            <TD class="trainContent" width="200"><%=dat.getName()==null?"":dat.getName()%></TD>
                            <TD class="trainContent" align=center ><%=dat.getNote()==null?"":dat.getNote()%></TD>
                            <TD class="trainFunction" width="170">
                            <a href="role_member_user.jsp?id=<%=dat.getId()%>" class="detail">成员</a>
		  	<a href="role_edit.jsp?id=<%=dat.getId()%>" onFocus="this.blur()" class="edit">编辑</a>
			<a href="role_delete.jsp?id=<%=dat.getId()%>" onClick="return confirm('确定删除此角色吗？')" onFocus="this.blur()" class="delete">删除</a></TD>
            </tr>
          <% 
 			}%>
  </table>
<%        
	}
	else
	{
%>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr><td>没有数据！！！</td></tr>
        </table>
<%
	}
%>

</div>
<!--分页-->         
        <div class="page">
          <div class="pageBox">
          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td>
			<%
				if(list!=null&&list.size()>0){
					out.print(pagination.getControl(request,response));
				}	
			%>
            </td></tr>
          </table>
          </div>
        </div>
        
</div>

</BODY>
</HTML>
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