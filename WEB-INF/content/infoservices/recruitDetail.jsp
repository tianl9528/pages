<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%
	String base_root = request.getContextPath();
 %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/gmap3/gmap3.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>招聘详情</title>
<style>
.jobbasic td{
	line-height:45px;
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
	color:blue;
	float: left;
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
<table class="jobbasic" style="float:left;" >
	<tr><td><h1>${recruit.job}</h1></td></tr>
	<tr><td><h2 style="color:#2d54cb;">${recruit.user.company.companyname}</h2></td></tr>
	<tr><td class="color-gray">工作性质：</td><td class="color-gray">${recruit.properties}</td></tr>
	<tr><td class="color-gray">公司性质：</td><td class="color-gray">${recruit.user.company.nature}</td></tr>
	<tr><td class="color-gray">招聘人数：</td><td class="color-gray">${recruit.num}</td></tr>
	<tr><td class="color-gray">发布日期：</td><td class="color-gray"><fmt:formatDate value='${recruit.pubdate}'
											pattern='yyyy-MM-dd'></fmt:formatDate></td></tr>
</table>

<div id="map" style="width:400px;height:300px;border:1px dashed #000;margin-left:500px;"></div>
	
<div class="job-page">
	<div class="jobtitle">
	<span class="title-name">公司简介</span>
	</div>
	<div class="job-content">${recruit.user.company.introduction}</div>
</div>

<div class="job-page">
	<div class="jobtitle">
	<span class="title-name">职位描述</span>
	</div>
	<div class="job-content">${recruit.jobDetail}</div>
</div>

<div class="job-page">
	<div class="jobtitle">
	<span class="title-name">工作要求</span>
	</div>
	<div class="job-content">${recruit.jobRequire}</div>
</div>

<div class="job-page">
	<div class="jobtitle">
	<span class="title-name">联系方式</span>
	</div>
	<div class="job-content">
	<div style="font-size:12px"><div>公司名称：${recruit.user.company.companyname}</div>
	<div>联系地址：${recruit.address}</div>
	<div>电 &nbsp; &nbsp;话：<span style="background-color: rgb(255, 255, 255); font-family: simsun; line-height: 27px;">${recruit.phoneNumber }</span></div>
	<div>公司主页：<a>${recruit.user.company.companysite}</a></div></div>
	
	
	
	<input  id="lat"  type="hidden" value="${recruit.user.company.lat}" />
	<input  id="lon"  type="hidden" value="${recruit.user.company.lon}" />
	</div>
</div>
<script>
var lat = $('#lat').val();
var lon = $('#lon').val();
$("#map")
.gmap3(
		{
			marker : {
				latLng : [ lat, lon ],
			},
			map : {
				options : {
					zoom : 10
				}
			}
		});
</script>
</div>
</body>
</html>
