<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%  
  String id=request.getParameter("id");
  RoleManager manager=new RoleManager();
  Role dat=new Role();
  dat=manager.readOne(Long.parseLong(id));
  Set entitySet=dat.getEntities();
%>
<html>
<head>
<title>权限管理>>角色管理>>角色修改</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
</head>

<body>

<script language="javascript" type="text/javascript">
<%
	if(dat==null)
	{
		out.print("window.alert(\"操作错误或数据库读取错误！请重新操作或联系系统管理员！\");");
		out.print("window.navigate(\"role_list.jsp\");");
	}
%>
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="role_list.jsp";
	}
}
</script>
<%
	if(dat!=null)
	{
%>
<div class="clear"></div>
<form name="thisForm" method="post" action="role_db.jsp">
<div class="conBox">
        <div class="conTitle">角色修改配置</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
                  <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                  <tr class="greyColor">
                      <td class="typeNameTd" width="100">角色名称</td>
                      <td class="memberAddTd" align="left" width="350">
                      <input type="text" name="name" value="<%=dat.getName()==null?"":dat.getName()%>" class="itemManagerInput" valid="notnull" msg="请输入角色名称！">
		  				<input type="hidden" name="id" value="<%=dat.getId()%>">
                      </td>
                      <td class="typeNameTd" width="100">说明</td>
                      <td class="memberAddTd" align="left" width="350">
                      <input type="text" name="note" value="<%=dat.getNote()==null?"":dat.getNote()%>" class="itemManagerInput">
                      </td>
                  </tr>
                  
                  <tr class="greyColor">
                      <td colspan="4" class="typeNameTd">
           
       <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="">
<%
	EntityManager entityManager=new EntityManager();
	List entityList=entityManager.readAll();
	if(entityList!=null&&entityList.size()>0){
		Entity entity=new Entity();
		for(int i=0;i<entityList.size();i=i+4){
%>
          <tr class="_content_select">
            <td class="content_select" width="25%" height="25" align="left">
<%
			entity=(Entity)entityList.get(i);
%>
			<input type="checkbox" name="entityid" <%=RoleHelper.isEntityChecked(entitySet,entity.getId())%> value="<%=entity.getId()%>">
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
			</td>
            <td class="content_select" width="25%" align="left">
<%
			if(entityList.size()>(i+1)){
				entity=(Entity)entityList.get(i+1);
%>			
			<input type="checkbox" name="entityid" <%=RoleHelper.isEntityChecked(entitySet,entity.getId())%> value="<%=entity.getId()%>">
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>
			</td>
            <td class="content_select" width="25%" align="left">
<%
			if(entityList.size()>(i+2)){
				entity=(Entity)entityList.get(i+2);
%>			
			<input type="checkbox" name="entityid" <%=RoleHelper.isEntityChecked(entitySet,entity.getId())%> value="<%=entity.getId()%>">
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>
			</td>
            <td class="content_select" width="25%" align="left">
<%
			if(entityList.size()>(i+3)){
				entity=(Entity)entityList.get(i+3);
%>			
			<input type="checkbox" name="entityid" <%=RoleHelper.isEntityChecked(entitySet,entity.getId())%> value="<%=entity.getId()%>">
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>
			</td>
          </tr>
<%
		}
	}

%>
</table> 
                </td>
                  </tr>
                     
                  </table>
                  
                  </td>
              </tr>
            </table>
          </div>
          <div class="subBtnBox">
          <input name="submit" type="submit" class="base_btn" onClick="return confirm('确定提交数据吗？')" value="保存">
		  <input name="button" type="button" class="base_btn" onClick="javascript:document.forms[0].reset()" value="重置">
		  <input name="button" type="button" class="base_btn" onClick="goback()" value="返回">     
          </div>
        </div>
        <div class="conBottom"></div>
      </div>
</form>

<%
	}
%>
</body>
</html>
