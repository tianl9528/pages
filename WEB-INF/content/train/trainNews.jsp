<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	String base_root = request.getContextPath();
%>
<title>人才培训 >> 培训资讯</title>

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

.news a {
	color: #4e5b2c;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="row news"
		style="max-width: 1007px; min-width: 820px; min-height: 380px; margin: 15px">
		<form
			action="<%=request.getContextPath()%>/train/trainNews.action"
			method="post" enctype="multipart/form-data">
			<div
				class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7"
				style="margin-bottom: 15px">
				<input name="searchInput" type="searchInput" class="form-control">
				<span class="input-group-btn">
					<button type="submit" class="btn btn-success"
						style="width: 88px; margin-right: 5px">搜索</button>
				</span>
			</div>
		</form>
		<div class="listBox">
			<div class="panel panel-default col-lg-12 col-xs-12"
				style="padding: 0;">
				<!-- 
		<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
			 -->
				<div class="panel panel-heading">
					<table class="table" style="margin: 0;">
						<tr>
							<td class="col-xs-11 col-lg-11" style="border-top: 0;">
								<div style="padding-left: 5px;" class="h30">
									<p class="myFont15">培训资讯</p>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="panel-body" style="padding: 5px 15px">
					<table class="table table-hover " style="margin: 0">
						<tr>
							<td width="30%" align="left" valign="middle">机构名称</td>
							<td width="20%" align="left" valign="middle">培训类别</td>
							<td width="10%" align="left" valign="middle">培训费用</td>
							<td width="10%" align="left" valign="middle"><span
								class="title">培训开始时间</span></td>
							<td width="10%" align="left" valign="middle"><span
								class="title">培训结束时间</span></td>
							<td width="10%" align="left" valign="middle"><span
								class="title">发布时间</span></td>
						</tr>
						<c:if test="${!empty page_trainlist.result}">
							<c:forEach items="${page_trainlist.result}" var="tl"
								varStatus="stat">
								<tr>
									<td><a href="trainNewsPage.action?trainNewsID=${tl.id}"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${tl.orgname}</p>
									</a></td>
									<td><span>${tl.pid}</span></td>
									<td><span>${tl.tfee}</span></td>
									<td>
										<p class="text-muted ">
											<fmt:formatDate value='${tl.tbegin}' pattern='yyyy-MM-dd'></fmt:formatDate>
										</p>
									</td>
									<td>
										<p class="text-muted ">
											<fmt:formatDate value='${tl.tend}' pattern='yyyy-MM-dd'></fmt:formatDate>
										</p>
									</td>
									<td>
										<p class="text-muted ">
											<fmt:formatDate value='${tl.tdpubdate}' pattern='yyyy-MM-dd'></fmt:formatDate>
										</p>
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
								<td><c:if test="${!empty page_trainlist.result}">${controltable_tarinlist}</c:if></td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
