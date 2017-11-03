<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String base_root = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=base_root%>/theme/css/bootstrap.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>

<title>招商代理>>招商代理信息</title>
<style type="text/css">
h1 {
	text-align: left;
}

#head {
	background: #A8CBF2;
}

.pageNew {
	float: right;
	width: 200px;
}

.btnNew {
	float: left;
}

.btn-default {
	width: 200px;
	height: 35px;
	background: #F9F9F9;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("a.curPage").mouseover(function() {
			$("a.curPage").css("background-color", "#C1E858");
		});
		$("a.curPage").mouseout(function() {
			$("a.curPage").css("background-color", "#FFF");
		});
	});
</script>
</head>
<body>
	<div style="padding: 20px 10px 0 10px">
		<div class="panel panel-success">
			<div class="panel-heading" id="head">
				<h1 class="panel-title">招商</h1>
			</div>
			<div class="panel-body listBox">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>主题</th>
							<th>发布人</th>
							<th>发布时间</th>
						</tr>
					</thead>
					<tbody class="">
						<c:if test="${!empty page.result}">
							<c:forEach items="${page.result}" var="invest" varStatus="stat">
								<tr>
									<td width="70%"><a
										href="agentdetail.action?id=${invest.id}&investerid=${invest.user.user_id}"
										class="active">招商：&nbsp;${invest.inName}</a></td>
									<td width="10%">${invest.user.user_name}</td>
									<td width="10%"><fmt:formatDate
											value="${invest.inPubDate}"></fmt:formatDate></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
				<c:if test="${empty page.result}">
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="tTitle">
						<tr>
							<td>没有数据！！！</td>
						</tr>
					</table>
				</c:if>
				<!--分页-->
				<div class="page">
				<div class="pageBox">
					<table border="0" cellpadding="0" cellspacing="0"
						style="margin-left: auto; margin-right: auto; margin-top: 15px;">
						<tr>
							<td><c:if test="${!empty page.result}">${controlTable}</c:if></td>
						</tr>
					</table>
				</div></div>
			</div>
		</div>
	</div>
</body>
</html>