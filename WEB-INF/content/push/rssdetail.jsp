<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import= "com.sun.syndication.feed.synd.SyndEntry" %>
<%@ page import= "sunit.app.push.manager.ChannelItem" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${rssInfo.rssname}频道</title>
<%
	String base_root = request.getContextPath();
%>

<style type="text/css">
.panel-body>.table>tbody>tr>td {
	border-top: 0px;
	border-bottom: 1px solid #BEEC94;
}

.btn-success {
	background-color: #90B82A;
}

.btn-success:hover,btn-success:focus {
	background-color: #86AA29;
}

.panel a {
	color: #4e5b2c;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-10 col-xs-10">
		
		</div>
		<div class="col-lg-2 col-xs-2">
		<span class="label label-info"><a href="channelcancel.action?id=${id}">取消订阅</a></span></div>
	</div>
	<div class="row" style="max-width: 1007px; min-width: 820px; margin: 15px">
		<div class="listBox">
			<div class="panel panel-default col-lg-12 col-xs-12"
				style="padding: 0;">
				<div class="panel-body" style="padding: 5px 15px 45px 15px">					
					<c:if test="${empty items}">没有数据！！！</c:if>
					<c:if test="${!empty items}">
						<c:forEach items="${items}" varStatus="stat" var="item">
							<div class="row" style="text-align:center;">
								<a href="${item.link}" target="_blank" style="cursor: pointer; text-decoration: none; font-size:16px; text-align:center;">
								${item.title}</a>
							</div>																							
							<div class="row" style="margin-top:5px;">
								<p class="text-muted">${fn:substring(item.description,0,120) }...</p>
							</div>
							<div class="row">
								<hr>
							</div>									
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>