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
	String departId=request.getParameter("id");
	boolean pass=false;
	String msg="操作读取错误！请重新操作或联系系统管理员！";
	String url="depart_list.jsp";
	Depart dat=new Depart();
	DepartManager manager=new DepartManager();
	dat=(Depart)manager.readOne(Long.parseLong(departId));
	if(dat==null)
	{
		pass=false;
	}
	else
	{
		pass=true;
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
</head>
<script language="jscript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="jscript" type="text/javascript">
<%
	if(!pass)
	{
		out.print("window.alert('"+msg+"');");
		out.print("window.navigate('"+url+"');");
	}
%>
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
function closeme()
{
	window.opener=self;
	window.close();
}
</script>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="noborder">
  <tr><form name="thisForm" method="post" action="depart_db.jsp" onSubmit="return checkforminput()">
    <td>
  <table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
    <tr class="table_row2">
      <td width="20%" height="30"><font size="+1"><strong>查看部门</strong></font></td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
      <td width="20%" align="center">&nbsp;</td>
      <td width="20%" align="right"><input name="button" type="button" onClick="window.navigate('depart_list.jsp')" value="返 回">
	  	<!--<input name="button" type="button" class="button" value="查找">
        &nbsp;&nbsp;
        <input name="button" type="button" class="button" onClick="window.navigate('depart_add.jsp')" value="新增">
      	-->	  </td>
    </tr>
  </table>
  <table width="98%" align="center" class="table_frame">
    <tr class="table_row2">
      <td width="15%" height="30" align="right">上级部门： </td>
      <td width="35%">
<%=dat.getParentDepart()==null?"-":dat.getParentDepart().getName()%>
   	  <input name="parentDepartId" type="hidden" value="<%=dat.getParentDepart()==null?"":dat.getParentDepart().getId()%>"></td>
      <td width="15%" align="right">部门类型：</td>
      <td width="35%"><%=DepartHelper.getType(dat.getDepartType())%>
		<input type="hidden" name="id" value="<%=dat.getId()==0?"":dat.getId()%>">
	  </td>
    </tr>
    <tr class="table_row2">
      <td height="30" align="right"> 部门名称： </td>
      <td><%=dat.getName()==null?"":dat.getName()%></td>
      <td align="right">部门代码：</td>
      <td><%=dat.getDepartCode()==null?"":dat.getDepartCode()%></td>
    </tr>
    <tr class="table_row2">
      <td height="30" align="right">电　　话：</td>
      <td><%=dat.getPhoneList()==null?"":dat.getPhoneList()%></td>
      <td align="right">E_Mail：</td>
      <td><%=dat.getEmailList()==null?"":dat.getEmailList()%></td>
    </tr>
    <tr class="table_row2">
      <td height="60" align="right">地　　址：</td>
      <td colspan="3" valign="top"><%=dat.getAddress()==null?"":dat.getAddress()%></td>
    </tr>
    <tr class="table_row2">
      <td height="60" align="right">说　　明：</td>
      <td colspan="3" valign="top">
	  	<%=dat.getNote()==null?"":dat.getNote()%></td>
    </tr>
  </table>
  <table width="98%" cellpadding="1" cellspacing="1" align=center>
    <tr>
      <td height="30" align="center">&nbsp;</td>
    </tr>
  </table>
</td></form>
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