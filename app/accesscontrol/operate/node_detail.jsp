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
	if(request.getParameter("id")!=null&&request.getParameter("id").length()>0&&!request.getParameter("id").equals("undefined")){
	long id=Long.parseLong(request.getParameter("id"));
	dao.begin();
	NodeGroupManager nodeGroupManager=new NodeGroupManager();
	NodeGroup group=nodeGroupManager.readOne(groupid);
	NodeManager manager=new NodeManager(group);
	Node dat=manager.readOne(id);
%>
<html>
<head>
<title>权限管理&gt;&gt;菜单管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/index.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">

function add(){
	window.location.href="<%=request.getContextPath()%>/app/accesscontrol/operate/node_add.jsp?groupid=<%=request.getParameter("groupid")%>";
}
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
function deleteit()
{
	if(confirm("确定删除此菜单吗？\n\n删除后不能恢复！"))
	{
		window.location.href="node_delete.jsp?groupid=<%=groupid%>&id=<%=id%>";
	}
}
function editit()
{
	window.location.href="node_edit.jsp?groupid=<%=groupid%>&id=<%=id%>";
}
</script>
</head>

<body>

<form name="thisForm" method="post" onSubmit="return checkforminput()" action="entity_db.jsp">

            <table cellpadding="0" cellspacing="13" border="0" class="selectTb" style="margin-left:auto; margin-right:auto;">
            	<tr>
                  <td>
                  
                  
                  <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                        <td class="typeNameTd" width="100">上级菜单</td>
                        <td class="memberAddTd" align="left" width="550">
                        <%=dat.getParentNode()==null?"":dat.getParentNode().getName()%>
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="100">菜单名称</td>
                        <td class="memberAddTd" align="left" width="">                  
                     	<%=dat.getName()==null?"":dat.getName()%>
                        </td>
                    </tr>
                    <tr class="greyColor">
                        <td class="typeNameTd" width="100">序号</td>
                        <td class="memberAddTd" align="left" width="">
                        <%=dat.getTrain()==null?"":dat.getTrain()%>
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="100">菜单链接</td>
                        <td class="memberAddTd" align="left" width="">                  
                        <%=dat.getEntity()==null?"":(dat.getEntity().getName()+"（"+dat.getEntity().getValue()+"）")%>
                        </td>
                    </tr>                    
                                                             
                   </table>
                  
                </td>
              </tr>
            </table>

            <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td>
          <input name="submit" type="button" class="base_btn" onClick="editit()" value="修改">
        <input name="button2" type="button" class="base_btn" onClick="deleteit()" value="删除">
            </td></tr>
          </table>
    
</form>

</body>
</html>
<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	dao.close();
}
%>