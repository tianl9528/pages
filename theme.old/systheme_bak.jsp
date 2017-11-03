<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="sunit.accesscontrol.*"%>

<%
	//Info currentInfo=(Info)session.getAttribute(Config.KEY_LOGIN_INFO);
	//if(null==currentInfo) {
	//	request.getRequestDispatcher(request.getContextPath()+"/login.action").forward(request,response);
	//}
	String base_root = request.getContextPath();

%>
<HTML>
<HEAD>
<%-- <TITLE><%=Config.getInstance().realmName%> - <decorator:title default="<%=Config.getInstance().realmName%>" /></TITLE> --%>
<TITLE>欢迎使用浩臻工作至培训管理系统</TITLE>
<link rel="stylesheet" href="<%=base_root%>/theme/menu.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=base_root%>/theme/head.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=base_root%>/theme/base_style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=base_root%>/theme/jquery-ui-1.8.20.custom.css" type="text/css" media="screen" />

<script type="text/javascript" src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/jquery-table-list_select.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/dwz.util.date.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript" src="<%=base_root%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
<script>
$(function(){
	$('#webmenu li').hover(function(){
		$(this).children('ul').stop(true,true).show('fast');
	},function(){
		$(this).children('ul').stop(true,true).hide('fast');
	});
	
	$('#webmenu li').hover(function(){
		$(this).children('div').stop(true,true).show('fast');
	},function(){
		$(this).children('div').stop(true,true).hide('fast');
	});
});

function jumpPage(pageNo){
	document.getElementById("pageNo").value = pageNo;
	document.getElementById('controltableForm').submit();
}
</script>
<decorator:head /> 
</HEAD>
<body>

<div style="width:100%;">
<div style="height:45px;"></div>
</div>

<div class="mainhead">
<ul>
	<li style="float:left;position:relative;height:83px; padding-left:130px"><img src="<%=base_root%>/theme/image/suntilogo22_03.png" width="280" height="83" border="0"></li>
	<li style="float:left;position:relative;padding-top:23px;padding-left:20px"></li>
</ul> 
<%//=currentInfo==null?"":currentInfo.getMenu().get("权限模块")%>  
<ul id="webmenu" class="first-menu">
  <li><a href="#" target="_self">个人桌面</a></li>
  <li><a href="#" target="_self">项目管理</a></li>


  <li><a href="" target="_blank">通知公告</a></li>
  
  <li><a href="" target="_blank">系统管理</a></li>
</ul>    

</div>
<!-- MAIN BODY --> 

<table class="head_body_content">
<tr>
<td style="height:500px;" align="center" valign="top">
<decorator:body/>
</td>
</tr>
</table>

<!-- MAIN FOOT -->  
<div class="head_youqing_link"><br>
<ul style="width:636px;margin-left:auto; margin-right:auto;">
<li style="float:left; position:relative;"><img src="<%=base_root%>/theme/image/liantong.png" width="159" height="50" border="0"></li>
<li style="float:left; position:relative"><img src="<%=base_root%>/theme/image/dianxin.png" width="159" height="50" border="0"></li>
<li style="float:left; position:relative"><img src="<%=base_root%>/theme/image/dianxinzhen.png" width="159" height="50" border="0"></li>
<li style="float:left; position:relative"><img src="<%=base_root%>/theme/image/yidong.png" width="159" height="50" border="0"></li>
</ul>
</div>

<div style="height:2px;background-image:url(<%=base_root%>/theme/image/heard22_02.jpg);"></div>
<div style="background-color:#D1D1D1;color: #626161; width:100%;height:50px; padding:30px 0 0 0; text-align:center">
  版权所有：广州市升日科技有限公司  联系电话：020-38839722,020-38839733
</div>
<!--
<%
out.print("JVM MAX MEMORY: " + Runtime.getRuntime().maxMemory()/1024/1024+"M\r");
out.print("JVM IS USING MEMORY:" + Runtime.getRuntime().totalMemory()/1024/1024+"M");
%>
-->
</body>
</HTML>
