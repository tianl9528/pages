<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻信息</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/index.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<link rel="stylesheet"
	href="<%=base_root%>/theme/jquery-ui-1.8.20.custom.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="<%=base_root%>/theme/ui-lib/qtip/css/jquery.qtip.css"
	type="text/css" />
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-table-list_select.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/ui-lib/qtip/js/jquery.qtip.js"></script>

<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.forecast a {
	color: #4e5b2c;
	font-weight: bold;
}

.nav-pills>li>a {
	border-radius: 0;
	text-align: center;
	width: 200px;
}

.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus
	{
	color: #ffffff;
	background-color: #A8CBF2;
}
</style>
</head>
<body style="background: none;">
	<div class="row"
		style="max-width: 670px; min-width: 670px; margin: 15px">
		<div class="listBox" style="width: 670px">
			<div class="tab-content">
				<div class="panel-heading myFont15">
                    ${title }
				</div>
				<div class="panel-body" style="padding: 5px 15px 45px 15px">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${!empty page_article.result}">
							<c:forEach items="${page_article.result}" var="article"
								varStatus="stat">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="articlePage.action?articleID=${article.id}"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${article.atitle }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">
												<fmt:formatDate value="${article.adate }"></fmt:formatDate>
											</p>
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
								<td><c:if test="${!empty page_article.result}">${controlTable_article}</c:if></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>