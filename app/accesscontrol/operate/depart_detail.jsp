<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>
<%
long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
DAO dao=new DAO();
try{
	dao.begin();
	boolean editable=true;
if(request.getParameter("id")!=null&&request.getParameter("id").length()>0&&!request.getParameter("id").equals("undefined")){
	long id=Long.parseLong(request.getParameter("id"));
	
	if(departId==id){
		editable=false;
	}
	
	DepartManager manager=new DepartManager();
	Depart dat=manager.readOne(id);
	Set entitySet=dat.getEntities();
	Set roleSet=dat.getRoles();
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css" title="more">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<!--

-->
<script language="javascript" type="text/javascript">
function deleteit()
{
	if(confirm("确定删除此部门吗？\n\n删除后不能恢复，并且属于此部门的数据可能丢失！"))
	{
		window.navigate('depart_delete.jsp?id=<%=id%>');
	}
}
function editit()
{
	window.navigate('depart_edit.jsp?id=<%=id%>');
}
</script>
</head>

<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="noborder">
    <tr>
	<form name="thisForm" method="post" action="depart_db.jsp" onSubmit="return checkforminput()">
      <td>
	  <table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
    <tr class="table_row3">
      <td width="20%" height="30"><font size="+1"><strong>部门资料</strong></font></td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
      <td align="right">
	  	<!--<input name="button" type="button" class="button" value="查找">
        &nbsp;&nbsp;
        <input name="button" type="button" class="button" onClick="window.navigate('depart_add.jsp')" value="新增">
      	-->
	    <input name="submit" type="button" class="button" onClick="editit()" <%=editable?"":"disabled"%> value="修改">
		<input name="button2" type="button" class="button" onClick="deleteit()" <%=editable?"":"disabled"%> value="删除">
	  </td>
    </tr>
  </table>
  <table width="98%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
    <tr class="table_row3">
      <td width="15%" height="30" align="right">上级部门： </td>
      <td width="35%">
	  <%=(dat.getParentDepart()!=null)?dat.getParentDepart().getName():"-"%>
		<input type="hidden" name="id" value="<%=dat.getId()%>">
	  </td>
      <td width="15%" align="right">部门类型：</td>
      <td width="35%"><%=DepartHelper.getType(dat.getDepartType())%></td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right"> 部门/班组名称： </td>
      <td><%=dat.getName()==null?"":dat.getName()%></td>
      <td align="right">部门代码：</td>
      <td><%=dat.getDepartCode()==null?"":dat.getDepartCode()%></td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right">电　　话：</td>
      <td><%=dat.getPhoneList()==null?"":dat.getPhoneList()%></td>
      <td align="right">E_Mail：</td>
      <td><%=dat.getEmailList()==null?"":dat.getEmailList()%></td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right">地　　址：</td>
      <td colspan="3"><%=dat.getAddress()==null?"":dat.getAddress()%></td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right">说　　明：</td>
      <td colspan="3"><%=dat.getNote()==null?"":dat.getNote()%></td>
    </tr>
		<tr class="table_row3">
        <td height="25" colspan="4">&nbsp;&nbsp;配置角色</td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="4">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	Iterator roleIterator=roleSet.iterator();
	List roleList=new ArrayList();
	while(roleIterator.hasNext()){
		roleList.add(roleIterator.next());
	}
	if(roleList!=null&&roleList.size()>0){
		Role role=new Role();
		for(int i=0;i<roleList.size();i=i+3){
%>
          <tr class="table_row3">
            <td width="33%" height="25">
<%
			role=(Role)roleList.get(i);
%>
			<%out.print(role.getName());%>
			</td>
            <td width="34%">
<%
			if(roleList.size()>(i+1)){
				role=(Role)roleList.get(i+1);
%>			
			<%out.print(role.getName());%>
<%
			}
%>
			</td>
            <td width="33%">
<%
			if(roleList.size()>(i+2)){
				role=(Role)roleList.get(i+2);
%>			
			<%out.print(role.getName());%>
<%
			}
%>
			</td>
          </tr>
<%
		}
	}
	else{
%>
          <tr class="table_row3">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
<%
	}
%>
	</table>
	</td>
	</tr>
	<tr class="table_row3">
        <td height="25" colspan="4">&nbsp;&nbsp;配置功能模块</td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="4">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	Iterator entityIterator=entitySet.iterator();
	List entityList=new ArrayList();
	while(entityIterator.hasNext()){
		entityList.add(entityIterator.next());
	}
	if(entityList!=null&&entityList.size()>0){
		Entity entity=new Entity();
		for(int i=0;i<entityList.size();i=i+3){
%>
          <tr class="table_row3">
            <td width="33%" height="25">
<%
			entity=(Entity)entityList.get(i);
%>
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
			</td>
            <td width="34%">
<%
			if(entityList.size()>(i+1)){
				entity=(Entity)entityList.get(i+1);
%>			
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>
			</td>
            <td width="33%">
<%
			if(entityList.size()>(i+2)){
				entity=(Entity)entityList.get(i+2);
%>			
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>
			</td>
          </tr>
<%
		}
	}
	else{
%>
          <tr class="table_row3">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
<%
	}
%>
	</table>
	</td>
	</tr>
  </table>
	</td>
	</form>
    </tr>
  </table>
  
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