<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import = "org.hibernate.Session" %>
<%@ page import = "sunit.database.DAO" %>
<%@ page import = "sunit.accesscontrol.object.User" %>
<%@ page import="sunit.util.encrypt.MD5"%>
<%@ page import="sunit.util.eip.EipWebService"%>
<%
	//清空缓存
	response.setHeader("progma","no-cache");   
	response.setHeader("Cache-Control","no-cache");   
	response.setDateHeader("Expires",0);
	
	DAO dao = new DAO();
	try{
		Session hs = dao.begin();
		String OK = request.getParameter("OK");
		String Receiver = request.getParameter("Receiver");
		String ReceiverText = request.getParameter("ReceiverText");		
		String newPassword = request.getParameter("newPassword")==null?"":request.getParameter("newPassword");
		MD5 m = new MD5();
  		newPassword=m.getMD5ofStr(newPassword);
		String error = "";
		String eip = "";
		if("保存".equals(OK)){
			int flag = hs.createSQLQuery("update a_user set password='"+newPassword+"' where id in("+Receiver+")").executeUpdate();
			if(flag>0){
				if(Receiver.length()>0){
					String[] ReceiverArr;
					String[] ReceiverTextArr;
					if(Receiver.indexOf(",")==-1){
						ReceiverArr = new String[]{Receiver};
						ReceiverTextArr = new String[]{ReceiverText};
					}else{
						ReceiverArr = Receiver.split(",");
						ReceiverTextArr = ReceiverText.split(",");
					}
					
					if(ReceiverArr!=null&&ReceiverArr.length>0){
						for(int j=0;j<ReceiverArr.length;j++){
							User user = (User) hs.load(User.class,new Long(ReceiverArr[j]));
							if(user!=null){
								EipWebService eip2 = new EipWebService();
								String result = eip2.getfc("0045",user.getName(),user.getFirstName(),newPassword,"update");
								if(result.equals("0")){
									eip += "["+user.getFirstName()+"eip密码同步成功]";
								}else{
									eip += "["+user.getFirstName()+"eip密码同步失败]";
								}
							}
	
						}
					}
					
				}
				error = "<script language='javascript'>$('error').innerHTML='重置用户["+ReceiverText+"]密码成功"+eip+"!';</script>";
			} else {
				error = "<script language='javascript'>$('error').innerHTML='重置用户["+ReceiverText+"]密码失败!';</script>";
			}
			OK = "";
		}
%>
<html>
<head>
<title>重置用户密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css" title="more">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/itil.js"></script>
<script language="javascript">
function win(p){
	var i = 0;
	var idstr = p.id;
	i =  idstr.substr("userChoice".length);	
	var arguemnts = new Object();
    arguemnts.window = window;
	var str = window.showModalDialog("<%=request.getContextPath()%>/itil/flow/flow_userSelectByDepart.jsp?p="+i,arguemnts,"dialogWidth=700px;dialogHeight=500px;scrollbars=no");
	if(str != null){
		var strValue = str.split("@@%%")[0];
		var strText = str.split("@@%%")[1];		
		if(i==1){
			document.all.Receiver.value=strValue;
			document.all.ReceiverText.value=strText;
		}
	}
}
function check(){
	var obj = document.thisForm;
	if(obj.Receiver.value == ""){
		alert("请选择需要重置密码的用户");
		return false;
	} else if(obj.newPassword.value == ""){
		alert("请输入要重置的新密码");
		obj.newPassword.focus();
		return false;
	}else if(obj.newPassword.value != obj.newPassword2.value){
		alert("两次密码不一致");
		obj.newPassword.focus();
		return false;
	}else {
		return true;
	}
}
</script>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td height="24" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：重置用户密码</td>
  </tr>
</table>
<form name="thisForm" method="post" action="change_user_password.jsp" onSubmit="return check()">
<table width="100%" align="center" cellpadding="1" cellspacing="1" class="table_frame">
  <tr class="table_row4">
    <td height="25" colspan="2">&nbsp;&nbsp;重置用户密码</td>
  </tr>
  <tr class="table_row3">
    <td width="10%" height="25" align="center">重置用户名</td>
    <td width="90%"><input type="hidden" name="Receiver" class="input_oneborder" id="Receiver">
      <input type="text" name="ReceiverText" class="input_oneborder" style="width:50%" id="ReceiverText" readonly>
      <input type="button" name="userChoice1" id="userChoice1" value="选择" onClick="win(this)" class="button">
      <font color="#FF0000">*</font></td>
  </tr>
  <tr class="table_row3">
    <td height="25" align="center">新密码</td>
    <td><input type="password" name="newPassword" style="width:50%" class="input_oneborder">
      <font color="#FF0000">*</font></td>
  </tr>
  <tr class="table_row3">
    <td height="25" align="center">重复新密码</td>
    <td><input type="password" name="newPassword2" style="width:50%" class="input_oneborder">
      <font color="#FF0000">*</font></td>
  </tr>
  <tr class="table_row3">
    <td height="25" colspan="2" align="center" style="color:#FF0000"><input name="OK" type="submit" class="button" value="保存" onClick="return check();">
      <input name="button" type="button" class="button" onClick="javascript:location.href='<%=request.getContextPath()%>/itil/index.jsp'" value="返回"><span id="error" style="color:red;"></span></td>
  </tr>
</table>
</form>
<%=error%>
</body>
</html>
<%
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		dao.close();
	}
%>
