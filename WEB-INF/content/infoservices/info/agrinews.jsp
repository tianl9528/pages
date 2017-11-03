<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息服务>>农业要闻</title>
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
	<div class="row"
		style="max-width: 1007px; min-width: 820px; margin: 15px">
		<div class="listBox">
			<div class="panel panel-default col-lg-12 col-xs-12"
				style="padding: 0;">
				<!-- <div class="panel-heading"
					style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;"> -->
					<div class="panel-heading"
					style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
					<table class="table" style="margin: 0;">
						<tr>
							<td class="col-xs-11 col-lg-11" style="border-top: 0;">
								<div style="padding-left: 15px;">
									<b>农业要闻</b>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="panel-body" style="padding: 5px 15px 45px 15px">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${empty page_agrinews.result}">没有数据！！！</c:if>
						<c:if test="${!empty page_agrinews.result}">
							<c:forEach items="${page_agrinews.result}" varStatus="stat"
								var="article">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${article.atitle }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">${article.adate}</p>
										</div>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
				<div class="page">
					<div class="pageBox">
						<table border="0" cellpadding="0" cellspacing="0"
							style="margin-left: auto; margin-right: auto">
							<tr>
								<td><c:if test="${!empty page_agrinews.result}">${ct_agrinews}</c:if></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>