<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.opensymphony.xwork2.util.ValueStack" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List"%>
<%@ page import="sunit.app.sendMail.structure.log.*" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.database.hibernate.*"%>
<%
	ValueStack stack=ServletActionContext.getValueStack(request);
	Page<Logs> data=(Page<Logs>)stack.findValue("page",Page.class);
	List<Logs> list=data.getResult();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>电子账单管理 - 系统日志查询</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<script  language="javascript">
	function $(itemName){
		return document.getElementById(itemName);
	}

	function clearForm(){
		$("type").value="";
		$("customname").value="";
		$("checkName").value="";
	}
</script>
</head>
<body>
<table width="100%" align="center" cellpadding="1" cellspacing="1">
      <tr>
		<td height="24" valign="top" class="url">
        <img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：电子账单管理 - 系统日志查询
		</td>
        <td align="right">
        </td>
      </tr>
</table>
<table width="100%" border=0 align="center" cellpadding=1 cellSpacing=1 class="table_frame">
  <form name="form1" method="post" action="">
    <tr class="table_row1">
      <td width="15%" height="24"  align="center">日志类型</td>
      <td width="35%"  align="left">
        <SELECT name="type">
          <OPTION value="">全部</OPTION>
          <option value="<%=Logs.Type_Bill%>" <%=Logs.Type_Bill.equals(request.getParameter("type"))?"selected":""%>><%=Logs.Type_Bill%></option>
          <option value="<%=Logs.Type_Custom%>" <%=Logs.Type_Custom.equals(request.getParameter("type"))?"selected":""%>><%=Logs.Type_Custom%></option>
          <option value="<%=Logs.Type_Sys%>" <%=Logs.Type_Sys.equals(request.getParameter("type"))?"selected":""%>><%=Logs.Type_Sys%></option>
        </SELECT>
      </td>
      <td width="15%"  align="center">操作人名称</td>
      <td width="35%"  align="left">
        <input type="text" name="modifyUserName" style="text-align:center" value="<%=request.getParameter("modifyUserName")==null?"":request.getParameter("modifyUserName")%>"/></td>
    </tr>
    <tr class="table_row1">
      <td height="24" colspan="4"  align="right">
        <input type="submit" name="submit" value=" 查 询 "/>
        <input type="button" name="clear" onClick="clearForm()" value=" 清 空 "/>
      </td>
    </tr>
  </form>
</table>
<table width="100%" border="0" align="center" cellPadding=1 cellSpacing=1 class="table_frame">
  <tr class="table_header">
    <td width="8%">序号</td>
    <td width="7%">操作类型</td>
    <td width="12%">操作时间</td>
    <td width="10%">操作人名称</td>
    <td width="20%">类名</td>
    <td width="12%">Id</td>
    <td width="5%">操作</td>
  </tr>
<%
	if(list!=null && list.size()>0){
		for(int i=0;i<list.size();i++){
			Logs dat=list.get(i);
			String theme=i%2==0?"1":"2";
			
%>
    <tr class="table_row<%=theme%>">
      <td height="30" align="center"><%=data.getFirst()+i %></td>
      <td height="30" align="center"><%=dat.getType() %></td>
      <td height="30" align="center"><%=dat.getModifyTime() %></td>
      <td height="30" align="center"><%=dat.getModifyUserName() %></td>
      <td height="30" align="center"><%=dat.getClassName() %></td>
      <td height="30" align="center"><%=dat.getClassId() %></td>
      <td height="30" align="center">
        <a href="logs-delete.action?id=<%=dat.getId()%>"  onClick="return confirm('确定删除此日志吗？')">删除</a>
      </td>
    </tr>
<%
		}

 	}else{
%>
  	<tr>
    	<td class="list_item" colspan="12">没有数据！</td>
    </tr>
<%
	}
%>
	<tr class="table_row2">
		<td height="25" colspan="7"><%=data.getControlTable(request,response)%></td>
	</tr>
    </table>
<script language="javascript">
createElement("type","<c:out value="${type}"/>");
createElement("customname","<c:out value="${customname}"/>");
createElement("checkName","<c:out value="${checkName}"/>");
</script>
</body>
</html>