<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.object.Entity"%>
<html>
<head>
<title>权限管理&gt;&gt;职位管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="javascript" type="text/javascript">
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
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="thisForm" method="post" onSubmit="return checkforminput()" action="job_db.jsp">
  <tr>
    <td height="350" valign="top" align="center">
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
        <tr class="table_row3">
		  <td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：职位新增</td>
		  <td width="40%" align="right">
		  <input name="submit" type="submit" class="button" onClick="return confirm('确定提交数据吗？')" value="保存">
		  <input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
		  <input name="button" type="button" class="button" onClick="goback()" value="返回"></td>
        </tr>
      </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
	      <tr class="table_row3">
	        <td width="10%" height="25" align="right">名称：</td>
	        <td width="90%" align="left"><input type="text" name="name" style="width:80%" class="input_oneborder" valid="notnull" msg="请输入职位名称！"></td>
	      </tr>
	      <tr class="table_row3">
	        <td height="25" align="right">顺序：</td>
	        <td height="25" align="left"><input type="text" name="train" style="width:80%" class="input_oneborder" valid="numberform" msg="请输入此职位的优先级！"></td>
	      </tr>
	      <tr class="table_row3">
	        <td height="25" align="right">说明：</td>
	        <td height="25" align="left"><input type="text" name="note" style="width:80%" class="input_oneborder"></td>
	      </tr>
      </table>
	</td>
  </tr>
  </form>
</table>
</body>
</html>
