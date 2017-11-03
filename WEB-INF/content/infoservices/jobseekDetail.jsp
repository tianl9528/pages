<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%
	String base_root = request.getContextPath();
 %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>求职详情</title>
<style>
.jobbasic td{
	line-height:30px;
}
.color-gray{color: #848484;font-size: 16px;}
.jobbasic h1{
line-height: 30px;
font-size: 22px;
margin-bottom: 6px;
font-family: 'Microsoft YaHei','simsun';
}
.jobbasic h2{
line-height: 24px;
font-size: 18px;
}
.title-name {
	line-height: 35px;
	margin-top: 24px;
	font-weight: bold;
	font-size: 16px;
	float: left;
	color:blue;
}
.jobtitle{
height: 61px;
border-bottom: 1px solid #d0d0d0;
margin-bottom: 5px;
}
.job-content{
width: 950px;
line-height: 30px;
margin-bottom: 10px;
font-size: 14px;
}
.mainpage{
padding:20px;
margin:5px;

box-shadow:0 0 5px 3px #d5c59f;
border:1px solid #ccc;
border-bottom:2px solid #bbb;
border-top:1px solid #ddd;
border-radius:10px;
-webkit-border-radius:10px;
-moz-border-radius:10px;
}
</style>
</head>
<body>

<div class="mainpage">
<table class="jobbasic">
	<tr><td><h1>求职：${jobseek.expjob}</h1></td></tr>
	<tr><td><h2 style="color:#2d54cb;">求职者姓名：${jobseek.applyername}</h2></td></tr>
	
	<tr><td class="color-gray">期望薪资：</td><td class="color-gray">${jobseek.expsalary}</td></tr>
	<tr><td class="color-gray">学历：</td><td class="color-gray">${jobseek.appdegree}</td></tr>
	<tr><td class="color-gray">专业：</td><td class="color-gray">${jobseek.appmajor}</td></tr>
	<tr><td class="color-gray">学校：</td><td class="color-gray">${jobseek.appschool}</td></tr>
	<tr><td class="color-gray">发布日期：</td><td class="color-gray"><fmt:formatDate value='${jobseek.apppubdate}'
											pattern='yyyy-MM-dd'></fmt:formatDate></td></tr>
</table>



<div class="job-page">
	<div class="jobtitle">
	<span class="title-name">联系方式</span>
	</div>
	<div class="job-content">

	<div>联系地址：${jobseek.appaddress}</div>
	<div>联系邮箱：${jobseek.appemail}</div>
	
	<div>电 &nbsp; &nbsp;话：<span style="background-color: rgb(255, 255, 255); font-family: simsun; line-height: 27px;">${jobseek.appmobile }</span></div>

	
</div>
</div>
</div>
</body>
</html>
