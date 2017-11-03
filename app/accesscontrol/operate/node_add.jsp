<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try{
	long groupid=Long.parseLong(request.getParameter("groupid"));
	NodeGroupManager nodeGroupManager=new NodeGroupManager();
	NodeGroup group=nodeGroupManager.readOne(groupid);
	NodeManager manager=new NodeManager(group);
	dao.begin();
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/index.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function opendepart()
{
	ret= window.showModalDialog('select/unitview.jsp','depart','dialogWidth:400px;dialogHeight:420px;center:yes;help:no;status:no');
	if(ret==null)
		return;
	a1=ret.split(";");
	flag=true;
	thisForm.parentDepartName.value=a1[1];
	thisForm.parentDepartId.value=a1[2];
}
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="'depart_list.jsp'";
	}
}
</script>
</head>

<body>


<form name="thisForm" method="post" action="node_db.jsp" >
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb" style="margin-left:auto; margin-right:auto;">
            	<tr>
                  <td>
                  
                  <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                        <td class="typeNameTd" width="100">上级菜单</td>
                        <td class="memberAddTd" align="left" width="550">
                        <select name="parentNodeId" style="width:50%">
                        <option value="">无</option>
                        <%
                              List list=manager.readAll();
                              if(list!=null&&list.size()>0){
                                  for(int i=0;i<list.size();i++)
                                  {
                                      Node node=(Node)list.get(i);
                        %>
                                  <option value="<%=node.getId()%>"><%=node.getName()%></option>
                        <%
                                  }
                              }
                        %>
                          </select>
                          <input type="hidden" name="groupid" value="<%=request.getParameter("groupid")%>">
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="">菜单名称</td>
                        <td class="memberAddTd" align="left" width="">                  
                        <input type="text" name="name" class="itemManagerInput" valid="notnull" msg="请输入菜单名称！">
                        </td>
                    </tr>
                    <tr class="greyColor">
                        <td class="typeNameTd" width="">序号</td>
                        <td class="memberAddTd" align="left" width="">
                        <input name="train" type="text" class="itemManagerInput" valid="notnull" msg="请输入菜单序号！">
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="">菜单链接</td>
                        <td class="memberAddTd" align="left" width="">                  
                        <select name="entityId" style="width:98%">
                        <option value="">无</option>
                        <%
                              EntityManager entityManager=new EntityManager();
                              List entityList=entityManager.readAllMenu();
                              if(entityList!=null&&entityList.size()>0){
                                  for(int i=0;i<entityList.size();i++)
                                  {
                                      Entity entity=(Entity)entityList.get(i);
                        %>
                                  <option value="<%=entity.getId()%>"><%=entity.getName()%>（<%=entity.getValue()%>）</option>
                        <%
                                  }
                              }
                        %>
                          </select>
                        </td>
                    </tr>                                                       
                   </table>
                  
                </td>
              </tr>
            </table>

            <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td>
          	<input name="submit" type="submit" class="base_btn" onClick="return confirm('确定提交数据吗？')" value="保存">
			<input name="button" type="button" class="base_btn" onClick="javascript:document.forms[0].reset()" value="重置">
            
            </td></tr>
          </table>
    
</form>

</body>
</html>
<%
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	dao.close();
}
%>