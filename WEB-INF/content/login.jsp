<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="sunit.accesscontrol.object.User"%>
<%@ page import="sunit.accesscontrol.manager.MenuManager" %>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="sunit.util.web.*"%>
<%
	Info currentInfo=(Info)session.getAttribute(Config.KEY_LOGIN_INFO);
	if(null==currentInfo) {
		System.out.println("------currentinfo == null-------");
	}
	else{
		session.removeAttribute(Config.KEY_LOGIN_INFO);
	}
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<TITLE><%=Config.getInstance().realmName%> - 登陆</TITLE>

<link rel="icon" href="<%=base_root%>/theme/favicon.ico" type="image/x-icon" />


<script type="text/javascript" src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<link href="<%=base_root%>/theme/css/bootstrap.min.css" rel="stylesheet" /> 

<script language="javascript" type="text/javascript">
function checkuser(){
	if(loginForm.<%=Config.KEY_USERNAME%>.value == ""){
		alert("用户名不能是空");
		document.loginForm.<%=Config.KEY_USERNAME%>.focus();
		return false;
	} else {
		
		document.loginForm.action="<%= request.getContextPath() + Config.LOGIN_SUBMIT_PATTERN%>";
		
		//document.loginForm.action="<%= request.getContextPath()%>/demo/demoList.action";
		document.getElementById("loginSubmit").readOnly = true;
		SetPwdAndChk();
		return true;
	}
}
var xmlHttp;

function startRequest(){
	
	var uname=document.loginForm.username.value;
	//alert(uname);
	if(uname!=null && uname!=""){
		var username="username="+uname;
		var url = "<%=request.getContextPath()%>/checkSMSValidateCode.action";
		createXMLHttpRequest();
		xmlHttp.onreadystatechange=handlestatechange;
		xmlHttp.open("post",url,true);
		xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
		xmlHttp.send(username);
		//document.loginForm.username.value=uname;
	}else{
		if(uname==null || uname==""){
			alert("请输入用户名");
		}
	}
}

function createXMLHttpRequest(){
	if(window.ActiveXObject){
	  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	}else if(window.XMLHttpRequest){
	  xmlHttp = new XMLHttpRequest();
	}
}

function handlestatechange(){
	if(xmlHttp.readyState==4){
		  if(xmlHttp.status==200){
			  var msg = trimEnter2(xmlHttp.responseText);
				if(msg.length>0){
					alert(msg);
					//document.getElementById("messages").value=msg;
				}
		  }
	 
	}
}
//删除回车
function trimEnter2(str){   
    return str.replace(/\n\r/gi,"");   
}  

</script>
	<script type="text/javascript">
		window.onload=function onLoginLoaded() {
			GetLastUser();	
		}
		
		function GetLastUser() {
			var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";//GUID标识符
			var usr = GetCookie(id);
			if (usr != null) {
				document.getElementById('txtUserName').value = usr;
			}
			GetPwdAndChk();
		}
		//点击登录时触发客户端事件
		
		function SetPwdAndChk() {
			//取用户名
			var usr = document.getElementById('txtUserName').value;
			//将最后一个用户信息写入到Cookie
			SetLastUser(usr);
			//如果记住密码选项被选中
			if (document.getElementById('chkRememberPwd').checked == true) {
				//取密码值
				var pwd = document.getElementById('txtPassword').value;
				var expdate = new Date();
				expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
				//将用户名和密码写入到Cookie
				SetCookie(usr, pwd, expdate);
			} else {
				//如果没有选中记住密码,则立即过期
				ResetCookie();
			}
		}
		
		function SetLastUser(usr) {
			var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";
			var expdate = new Date();
			//当前时间加上两周的时间
			expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
			SetCookie(id, usr, expdate);
		}
		//用户名失去焦点时调用该方法
		
		function GetPwdAndChk() {
			var usr = document.getElementById('txtUserName').value;
			var pwd = GetCookie(usr);
			if (pwd != null) {
				document.getElementById('chkRememberPwd').checked = true;
				document.getElementById('txtPassword').value = pwd;
			} else {
				document.getElementById('chkRememberPwd').checked = false;
				document.getElementById('txtPassword').value = "";
			}
		}
		//取Cookie的值
		
		function GetCookie(name) {
			var arg = name + "=";
			var alen = arg.length;
			var clen = document.cookie.length;
			var i = 0;
			while (i < clen) {
				var j = i + alen;
				if (document.cookie.substring(i, j) == arg) return getCookieVal(j);
				i = document.cookie.indexOf(" ", i) + 1;
				if (i == 0) break;
			}
			return null;
		}
		
		function getCookieVal(offset) {
			var endstr = document.cookie.indexOf(";", offset);
			if (endstr == -1) endstr = document.cookie.length;
			return unescape(document.cookie.substring(offset, endstr));
		}
		//写入到Cookie
		
		function SetCookie(name, value, expires) {
			var argv = SetCookie.arguments;
			var argc = SetCookie.arguments.length;
			var expires = (argc > 2) ? argv[2] : null;
			var path = (argc > 3) ? argv[3] : null;
			var domain = (argc > 4) ? argv[4] : null;
			var secure = (argc > 5) ? argv[5] : false;
			document.cookie = name + "=" + escape(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ((path == null) ? "" : ("; path=" + path)) + ((domain == null) ? "" : ("; domain=" + domain)) + ((secure == true) ? "; secure" : "");
		}
		
		function ResetCookie() {
			var usr = document.getElementById('txtUserName').value;
			var expdate = new Date();
			var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";
			SetCookie(id, null, expdate);
			SetCookie(usr, null, expdate);
		}
	</script>
	
	<style type="text/css">
.content{
margin:0 auto;
width:990px;
overflow:hidden;
}
.head{
padding:15px 0;
border-bottom:2px solid #398439;
}
.login_l{
float: left;
width:550px;
height:300px;
overflow: hidden;
margin-top: 20px;
padding:15px 0;
}
.login_r {
float: right;
width:440px;
height:300px;
overflow: hidden;
background: url(<%=base_root%>/theme/images/loginimg/login_background_right.png) no-repeat right top;
margin-top:35px;
}
</style>
<link rel="icon" href="<%=base_root%>/theme/images/title.ico" mce_href="<%=base_root%>/theme/images/title.ico" type="image/x-icon">
</HEAD>

<body style="background-color:white"> 
	<div class="content">
		<div class="head">
			<img src="<%=base_root%>/theme/images/loginimg/logo04.png"/>
		</div>
		<div class="login_l">
			<img src="<%=base_root%>/theme/images/loginimg/login_background_left.png"/>
		</div>
		
		<div class="login_r">
			<div style="padding-left:40px;padding-top:10px">
				<div style="border-bottom:1px solid #E5E5E5;">
					<h3 style="padding-left:30px;font-weight:bold;">用户登录</h3>
				</div>
				<form class="form-horizontal text-center" role="form" method="post" name="loginForm" id="loginForm">
				  <div class="form-group" style="padding-top:15px;">
					<label class="col-lg-3 col-xs-3 control-label" style="text-align:right" >用户名:</label>
					<div class="col-lg-7 col-xs-7">
					  <input name="<%=Config.KEY_USERNAME%>" type="text" tabindex="1" id="txtUserName" value="">
					</div>
				  </div>
				  <div class="form-group">
					<label for="inputPassword" class="col-lg-3 col-xs-3 control-label" style="text-align:right">密码:</label>
					<div class="col-lg-7 col-xs-7">
					   <input name="<%=Config.KEY_PASSWORD%>" type="password" tabindex="2" id="txtPassword" value="">
					</div>
				  </div>
				  <p id="tip" style="margin:-7px 0 0 0;color:red;font-weight:300;text-align: left;padding-left: 108px;"></p>
				   <div class="form-group">
					  <div class="col-lg-7 col-xs-7" style="margin-left:84px">
						<div class="checkbox">
						  <label>
							<input type="checkbox" id="chkRememberPwd" value="1" />
							<small>记住密码</small> 
						  </label>
						  <label>
						  <a href="forgetpwd.action" class="text-info"><small style="padding-left:88px">忘了密码</small></a>
						  </label>
						</div>
					  </div>
					</div>
					<div class="form-group">
						<div>
							<a href="register.action" class="btn btn-success">还没有帐号？点击注册</a>
							<button type="submit" class="btn btn-success" style="width:100px;" name="loginSubmit" id="loginSubmit" onFocus="this.blur()" onClick="return checkuser()" tabindex="3">登录</button>
							<input type="hidden" name="<%=Config.KEY_LOGIN_TO_URL%>" value="<%=request.getContextPath()%>/welcome.action">
						</div>
					</div>
				 </form>
			</div>
		</div>
	</div>
	 <div class="footer text-center" >
		<div style="padding:140px 0 20px 0">
						 <p >
					<a href="#">网站地图</a><i>|</i>
				  
					<a href="#">版权声明</a><i>|</i>
				  
					<a href="#">使用条款</a><i>|</i>
				  
					<a href="#">联系我们</a>
					  </p>
					  <p>@广东省农业专业镇信息服务平台</p>
					 Powered By 广东友元国土信息工程有限公司
		</div>
	 </div>

</body>
<!--
<%
out.print("JVM MAX MEMORY: " + Runtime.getRuntime().maxMemory()/1024/1024+"M\r");
out.print("JVM IS USING MEMORY:" + Runtime.getRuntime().totalMemory()/1024/1024+"M");
%>
-->
</HTML>
