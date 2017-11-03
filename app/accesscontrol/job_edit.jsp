<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%  
  String id=request.getParameter("id");
  JobManager manager=new JobManager();
  Job dat=new Job();
  dat=manager.readOne(Long.parseLong(id));
%>
<html>
<head>
<title>权限管理&gt;&gt;职位管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="javascript" type="text/javascript">
<%
	if(dat==null)
	{
		out.print("window.alert(\"操作错误或数据库读取错误！请重新操作或联系系统管理员！\");");
		out.print("window.navigate(\"entity_list.jsp\");");
	}
%>
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.navigate('job_list.jsp');
	}
}
</script>
</head>
<body>
<%
	if(dat!=null)
	{
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="thisForm" method="post" onSubmit="return checkforminput()" action="job_db.jsp">
  <tr>
    <td height="350" align="center" valign="top">
	<table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：职位修改</td>
        <td width="40%" align="right">
		  <input name="submit" type="submit" class="button" onClick="return confirm('确定提交数据吗？')" value="保存">
          <input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
          <input name="button" type="button" class="button" onClick="goback()" value="返回"></td>
      </tr>
    </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
        <tr class="table_row3">
          <td width="10%" height="25" align="right">名称：</td>
          <td width="90%" align="left">
		  <input type="text" name="name" value="<%=dat.getName()==null?"":dat.getName()%>" style="width:80%" class="input_oneborder" valid="notnull" msg="请输入功能名称！">
		  <input type="hidden" name="id" value="<%=dat.getId()%>">
		  </td>
        </tr>
        <tr class="table_row3">
	        <td height="25" align="right">顺序：</td>
	        <td height="25" align="left"><input type="text" name="train" style="width:80%" value="<%=dat.getTrain()==null?"":dat.getTrain()%>" class="input_oneborder" valid="numberform" msg="请输入此职位的优先级！"></td>
      	</tr>
        <tr class="table_row3">
          <td height="25" align="right">说明：</td>
          <td height="25" align="left"><input type="text" name="note" value="<%=dat.getNote()==null?"":dat.getNote()%>" style="width:80%" class="input_oneborder"></td>
        </tr>
      </table>
     </td>
  </tr>
  </form>
</table>
<%
	}
%>
</body>
</html>
