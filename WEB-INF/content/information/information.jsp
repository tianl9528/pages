<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.util.weather.WeatherUtil"%>
<%@ page import="sunit.util.grasp.InfoGraspUtil"%>
<%

 	String info = WeatherUtil.getWeather("101280101");	
	InfoGraspUtil grasp = new InfoGraspUtil("http://www.agri.gov.cn/");
	String pifa = grasp.PFSCGrasp();
	
	//System.out.println(pifa);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>农业资讯</title>
</head>

<body>
<br>
获取实时天气...
<br>
<%=info %>

<table style="width:590;height:250;">
<tr>
	<td>
		
	</td>
	
</tr>
<tr>
	<td><%=pifa %></td>
</tr>
</body>
</html>
