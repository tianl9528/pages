<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String base_root = request.getContextPath();
%>
<html>
<head>
<meta charset="utf-8">
<title>质量检测 >> 鉴定机构</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
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

a {
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
			<div class="panel-heading"
						style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
					<table class="table" style="margin: 0;">
						<tr>
							<td class="col-xs-11 col-lg-11" style="border-top: 0;">
								<div style="padding-left: 15px;">
									<b>鉴定机构</b>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="panel-body" style="padding: 5px 15px 45px 15px">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${empty page_jianding.result }">没有数据！！！</c:if>
						<c:if test="${!empty page_jianding.result }">
							<c:forEach items="${page_jianding.result }" var="jianding"
								varStatus="stat" begin="0" end="4">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="instdetail.action?id=${jianding.id }" target="_blank"
										style="cursor: pointer; text-decoration: none">
											<p>${jianding.dname }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">${jiliang.dkeyword}</p>
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
								<td><c:if test="${!empty page_jianding.result}">${controlTable_jianding}</c:if></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>