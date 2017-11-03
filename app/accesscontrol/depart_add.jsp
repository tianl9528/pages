<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import = "java.util.*" %>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
</head>
<script language="jscript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="jscript" type="text/javascript">
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
		window.navigate('depart_list.jsp');
	}
}
</script>
<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="noborder">
    <tr>
	<form name="thisForm" method="post" action="depart_db.jsp" onSubmit="return checkforminput()">
      <td>
	  <table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
    <tr class="table_row2">
      <td width="20%" height="30"><font size="+1"><strong>新增部门</strong></font></td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
      <td width="20%" align="center">&nbsp;</td>
      <td width="20%" align="right">
	  	<!--<input name="button" type="button" class="button" value="查找">
        &nbsp;&nbsp;
        <input name="button" type="button" class="button" onClick="window.navigate('depart_add.jsp')" value="新增">
      	-->
	    <input name="submit" type="submit" class="button" onClick="return confirm('确定提交数据吗？')" value="保 存">
&nbsp;
<input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重 置">
&nbsp;
<input name="button" type="button" class="button" onClick="goback()" value="返 回"></td>
    </tr>
  </table>
  <table width="98%" align="center" class="table_frame">
    <tr class="table_row2">
      <td width="15%" height="30" align="right">上级部门： </td>
      <td width="35%">
	  <!--<input type="input" class="input_oneborder" name="parentDepartName" style="width:60%" readonly>
   	  <input type="button" name="selectDepart" value="选择" class="button" onClick="opendepart()" >
   	  <input name="parentDepartId" type="hidden" value="">
	  -->
	  <select name="parentDepartId" style="width:60%">
	  <option value="00000000">无</option>
      <%
	  		Depart departSearch=new Depart();
        	DepartManager manager=new DepartManager();
        	List list=manager.read(departSearch);
        	for(int i=0;i<list.size();i++)
        	{
            	Depart depart=(Depart)list.get(i);
	  %>
            	<option value="<%=depart.getId()%>"><%=depart.getName()%></option>
      <%
	    	}
	  %>
        </select>
	  </td>
      <td width="15%" align="right">部门类型：</td>
      <td width="35%">
	    <select name="departType" style="width:40%">
          <option value="1" selected>供电</option>
          <option value="2">发电</option>
          <option value="0">未定</option>
        </select></td>
    </tr>
    <tr class="table_row2">
      <td height="30" align="right"> 部门名称： </td>
      <td><input type="text" name="name" style="width:98%" class="input_oneborder" valid="notnull" msg="请输入部门名称！">      </td>
      <td align="right">部门代码：</td>
      <td><input type="text" name="code" style="width:98%" class="input_oneborder" valid="notnull" msg="请输入部门代码！">      </td>
    </tr>
    <tr class="table_row2">
      <td height="30" align="right">电　　话：</td>
      <td><input name="phone" type="text" id="phone2" style="width:98%" class="input_oneborder">      </td>
      <td align="right">E_Mail：</td>
      <td><input name="email" type="text" style="width:98%" class="input_oneborder"></td>
    </tr>
    <tr class="table_row2">
      <td height="30" align="right">地　　址：</td>
      <td colspan="3">
	  	<textarea name="address" style="width:98%; overflow:auto" rows="3" class="input_oneborder"></textarea>	  </td>
    </tr>
    <tr class="table_row2">
      <td height="30" align="right">说　　明：</td>
      <td colspan="3">
	  	<textarea name="note" style="width:98%; overflow:auto" rows="3" class="input_oneborder"></textarea>      </td>
    </tr>
  </table>
  <table width="98%" cellpadding="1" cellspacing="1" align=center>
    <tr>
      <td height="30" align="center">&nbsp;</td>
    </tr>
  </table>
	</td>
	</form>
    </tr>
  </table>
  
</body>
</html>
