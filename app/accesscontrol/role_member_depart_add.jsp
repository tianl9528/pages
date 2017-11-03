<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>

<%
long roleId=Long.parseLong(request.getParameter("id"));
long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
long parentDepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getParentDepartId();
String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();

DAO dao = new DAO();
try{
	dao.begin();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>权限管理&gt;&gt;角色管理&gt;&gt;添加部门成员</title>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/itil.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/calendar/calendar.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/scripts/calendar/calendar-sunit.css" type="text/css">
<script language="JavaScript">
function opendepart()
{
	ret= window.showModalDialog('<%=request.getContextPath()%>/itil/accesscontrol/select/departselector.jsp','depart','dialogWidth:700px;dialogHeight:700px;center:yes;help:no;status:no');
	if(ret==null)
		return;
	a1=ret.split(";");
	flag=true;
	accessForm.depart.value=a1[0];
	accessForm.departName.value=a1[1];
}

function checkForm(){
	var obj = document.accessForm;
	if($("depart").value == ""){
		alert("请选择部门");
		$("depart").focus();
		return false;
	} else {
		return true;
	}
}
</script>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr> 
   <td height="24" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：权限管理&gt;&gt;角色管理&gt;&gt;添加部门成员</td>
    <td align="right"><input name="button" type="button" class="button" value="查找" onClick="showSearch()"></td>
  </tr>
</table>
<div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
<form name="thisForm" action="role_member_depart_search.jsp" method="post">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" style="width:98%"><input style="display:none"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找">
		  	<input type="hidden" name="id" value="<%=roleId%>">
		  </td>
        </tr>
</form>
      </table>
</div>
<form name="accessForm" method="post" action="role_member_depart_add_db.jsp" onSubmit="return checkForm();">
<table width="100%" border="0" cellspacing="1" cellpadding="1" class="table_frame2">
  <tr class="table_row3">
    <td width="10%" height="25" align="center">部门</td>
    <td>
    	<input type="input" class="input_oneborder" value="" name="departName" style="width:60%" readonly>
   		<input type="button" name="selectDepart" value="选择" class="button" onClick="opendepart()" >
   		<input name="depart" type="hidden" value="">
<%
	
	/**
	StringBuffer tree = new StringBuffer();
	tree.append("<select name=\"depart\" id=\"depart\">");
	List departList=DepartHelper.getTreeList(departId);
	for(int i=0;i<departList.size();i++){
		Depart depart=(Depart)departList.get(i);
		tree.append("<option value=\""+depart.getId()+"\">");
		tree.append(depart.getPosition()+depart.getName()+"</option>");
	}
	tree.append("</select>");
	out.print(tree.toString());
	*/
%>	
	</td>
  </tr>
  <tr class="table_row3">
    <td colspan="2">
	   	<input type="submit" name="OK" value="保存" class="bt_save">
	    <input type="reset" name="reset" value="重置" class="bt_reset"> 
        <input type="button" name="back" value="返回" onClick="javascript:history.back();" class="bt_back">
        <input type="hidden" name="roleId" value="<%=roleId%>">
	</td>
  </tr>
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
<%!
	private StringBuffer readChildTree(Depart depart){
		StringBuffer buffer = new StringBuffer();
		if(depart.getChildDepart() != null && depart.getChildDepart().size() > 0){
			Iterator it = depart.getChildDepart().iterator();
			while(it.hasNext()){
				Depart temp = (Depart)it.next();
				temp.setLayer(depart.getLayer() + 1);
				buffer.append("<option value=\"" + temp.getId() + "\">");
				for(int i = 0;i < temp.getLayer();i ++){
					buffer.append("-");
				}
				buffer.append(temp.getName() + "</option>");
				buffer.append(readChildTree(temp));
			}
		}
		return buffer;
	}
%>