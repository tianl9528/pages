<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="sunit.accesscontrol.manager.MenuManager" %>
<%@ page import="sunit.util.web.*"%>
<%
Info currentInfo=(Info)session.getAttribute(Config.KEY_LOGIN_INFO);

if(null==currentInfo) {
}
else{

	session.removeAttribute(Config.KEY_LOGIN_INFO);
}
String base_root = request.getContextPath();
String username=(String)request.getParameter("username")==null?"guest":(String)request.getParameter("username");
String password=(String)request.getParameter("password")==null?"guest":(String)request.getParameter("password");
%>

<!DOCTYPE html> 
  <!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="not-ie" lang="en">
<!--<![endif]-->

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=Config.getInstance().realmName%></title> 

<script type="text/javascript" src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=base_root%>/theme/Scripts/swfobject_modified.js" type="text/javascript"></script>


<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" /> 
<script type="text/javascript">

$(document).ready(function()
{
	var t=setTimeout("$('#loginSubmit').fadeIn(1000);",19000);
	
}
);
</script>
<style type="text/css">
.content{
margin:0 auto;
width:990px;
overflow:hidden;
}
.head{

border-bottom:2px solid #398439;
margin-bottom:15px;
}
</style>
<script language="javascript" type="text/javascript">

function checkuser(){
	
	if(loginForm.<%=Config.KEY_USERNAME%>.value == ""){
		alert("用户名不能是空");
		document.loginForm.<%=Config.KEY_USERNAME%>.focus();
		//return false;
	} else {
		document.loginForm.action="<%= request.getContextPath() + Config.LOGIN_SUBMIT_PATTERN%>";
		//document.loginForm.action="<%= request.getContextPath()%>/demo/demoList.action";
		//document.getElementById("loginSubmit").readOnly = true;
		//SetPwdAndChk();
		document.loginForm.submit();
		//return true;
	}
}
</script>
</head>
<body onload="javascript:checkuser();">
	<form method="post" name="loginForm" id="loginForm">
	  	<input name="<%=Config.KEY_PASSWORD%>" type="hidden" tabindex="2" id="txtPassword" value="<%=password%>">
		 <input name="<%=Config.KEY_USERNAME%>" type="hidden" tabindex="1" id="txtUserName" value="<%=username%>">
		 <!-- <button type="submit"  class="btn btn-success col-lg-2 col-xs-2 col-lg-offset-5 col-xs-offset-5" style="margin-top:15px;display:none;" name="loginSubmit" id="loginSubmit" onFocus="this.blur()" onClick="return checkuser()" tabindex="3">进入系统</button>  -->
		<input type="hidden" name="<%=Config.KEY_LOGIN_TO_URL%>" value="<%=request.getContextPath()%>/index.action">
	</form>
</body>
</html>