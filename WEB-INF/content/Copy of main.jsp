<%@ page contentType="text/html;charset=UTF-8"%>
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
}
else{

	session.removeAttribute(Config.KEY_LOGIN_INFO);
}
String base_root = request.getContextPath();
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
<body>

<div class="content">
		<div class="head">
			<img src="<%=base_root%>/theme/images/loginimg/title.png"/>
		</div>
		<div>
		<center>
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="860" height="520" id="FLVPlayer">
  <param name="movie" value="<%=base_root%>/theme/FLVPlayer_Progressive.swf" />
  <param name="quality" value="high" />
  <param name="wmode" value="opaque" />
  <param name="scale" value="noscale" />
  <param name="salign" value="lt" />
  <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=<%=base_root%>/theme/Clear_Skin_1&amp;streamName=<%=base_root %>/theme/chfycvbxfx&amp;autoPlay=true&amp;autoRewind=false" />
  <param name="swfversion" value="8,0,0,0" />
  <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
  <param name="expressinstall" value="<%=base_root%>/theme/Scripts/expressInstall.swf" />
  <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
  <!--[if !IE]>-->
  <object type="application/x-shockwave-flash" data="<%=base_root%>/theme/FLVPlayer_Progressive.swf" width="860" height="520">
    <!--<![endif]-->
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="scale" value="noscale" />
    <param name="salign" value="lt" />
    <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=<%=base_root%>/theme/Clear_Skin_1&amp;streamName=<%=base_root %>/theme/chfycvbxfx&amp;autoPlay=true&amp;autoRewind=false" />
    <param name="swfversion" value="8,0,0,0" />
    <param name="expressinstall" value="<%=base_root%>/theme/Scripts/expressInstall.swf" />
    <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
    <div>
      <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
      <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" /></a></p>
    </div>
    <!--[if !IE]>-->
  </object>
  <!--<![endif]-->
</object>
<script type="text/javascript">
swfobject.registerObject("FLVPlayer");
</script>
			
	   </center>
		</div>
		
		
</div>
<center>
	<form method="post" name="loginForm" id="loginForm">
	  	<input name="<%=Config.KEY_PASSWORD%>" type="hidden" tabindex="2" id="txtPassword" value="guest">
		 <input name="<%=Config.KEY_USERNAME%>" type="hidden" tabindex="1" id="txtUserName" value="guest">
		 <!-- <button type="submit"  class="btn btn-success col-lg-2 col-xs-2 col-lg-offset-5 col-xs-offset-5" style="margin-top:15px;display:none;" name="loginSubmit" id="loginSubmit" onFocus="this.blur()" onClick="return checkuser()" tabindex="3">进入系统</button>  -->
		 <img src="<%=base_root%>/theme/images/loginimg/enter.png" style="margin-top:0px;"  onClick="return checkuser()" id="loginSubmit"/>
		<input type="hidden" name="<%=Config.KEY_LOGIN_TO_URL%>" value="<%=request.getContextPath()%>/index.action">
	</form>
	 </center>

</body>
<script type="text/javascript">
swfobject.registerObject("FLVPlayer");
</script>
</html>