<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page import="org.apache.struts2.ServletActionContext"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检测知识</title>
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<title>检测检验 >> 检测知识</title>
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

				<div class="panel-heading">
					<table class="table" style="margin: 0;">
						<tr>
							<td class="col-xs-11 col-lg-11" style="border-top: 0;">
								<div class="myFont15" style="padding-left: 15px;">
									检测知识
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="panel-body" style="padding: 5px 15px 45px 15px">
					<table class="table table-hover " style="margin: 0">


						<c:if test="${!empty page_knowledge.result}">
							<c:forEach items="${page_knowledge.result}" var="knowledge"
								varStatus="stat">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="../infoservices/articlePage.action?articleID=${knowledge.id }"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${knowledge.atitle }</p>
									</a></td>
									<td class="col-lg-1 col-xs-1">
										<div>
											<p class="text-muted pull-right">2013-10-31</p>
										</div>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>

					<c:if test="${empty page_knowledge.result}">
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							class="tTitle">
							<tr>
								<td>没有数据！！！</td>
							</tr>
						</table>
					</c:if>
				</div>
				<!--分页-->
				<div class="page">
					<div class="pageBox">
						<table border="0" cellpadding="0" cellspacing="0"
							style="margin-left: auto; margin-right: auto">
							<tr>
								<td><c:if test="${!empty page_knowledge.result}">${controlTable_knowledge}</c:if></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>