<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<html>
<head>
<title>权限管理&gt;&gt;角色管理（新增）</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="role_list.jsp";
	}
}
</script>
</head>

<body>

<div class="clear"></div>

<form name="thisForm" method="post" onSubmit="return checkforminput()" action="role_db.jsp">
<div class="conBox">
        <div class="conTitle">角色新增配置</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                  <tr class="greyColor">
                      <td class="typeNameTd" width="100">角色名称</td>
                      <td class="memberAddTd" align="left" width="350"><input type="text" name="name" class="itemManagerInput" valid="notnull" msg="请输入角色名称！"></td>
                      <td class="typeNameTd" width="100">说明</td>
                      <td class="memberAddTd" align="left" width="350"><input type="text" name="note" class="itemManagerInput"></td>
                  </tr>
                  
                  <tr class="greyColor">
                      <td colspan="4" class="typeNameTd">
           
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
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
			<input type="checkbox" name="entityid" value="<%=entity.getId()%>">
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
			</td>
            <td class="content_select" width="25%" align="left">
<%
			if(entityList.size()>(i+1)){
				entity=(Entity)entityList.get(i+1);
%>			
			<input type="checkbox" name="entityid" value="<%=entity.getId()%>">
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
			<input type="checkbox" name="entityid" value="<%=entity.getId()%>">
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
			<input type="checkbox" name="entityid" value="<%=entity.getId()%>">
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

</body>
</html>
