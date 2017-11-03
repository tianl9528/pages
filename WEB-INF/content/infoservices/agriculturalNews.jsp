<?xml version="1.0" encoding="utf-8" ?>
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
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/infoservices.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息服务 >> 农业资讯</title>
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
    color: rgba(0, 0, 0, 0.62);
    background-color: #c3f29d;
}
</style>
</head>
<body>
	<div class="row"
		style="max-width: 1007px; min-width: 820px; margin: 15px">
		<form
			action="<%=request.getContextPath()%>/infoservices/articleSearch.action"
			method="post" enctype="multipart/form-data">
			<div
				class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7"
				style="margin-bottom: 15px">
				<input name="searchInput" type="searchInput" class="form-control"><span
					class="input-group-btn">
					<button type="submit" class="btn btn-success"
						style="width: 88px; margin-right: 5px">搜索</button>
				</span>
			</div>
		</form>

		<div class="col-lg-3 col-xs-3" style="padding-left: 0">
			<div class="panel panel-default">
				<div class="panel-heading myFont15">
                    农业资讯
				</div>
				<div class="panel-body">
					<ul class="nav nav-pills">
						<li class="active" onclick="setType()"><a href="#tab1"
							data-toggle="tab">农业新闻</a></li>
						<li><a href="#tab2" data-toggle="tab">惠农资讯</a></li>
						<li><a href="#tab3" data-toggle="tab">教育医疗</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
				<div class="panel panel-default col-lg-9 col-xs-9"
					style="padding: 0;">
					<iframe
						src="<%=base_root%>/infoservices/articleNewsframe.action?type=nongyexinwen "
						frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
						scrolling="auto" id="ifm1" name="ifm1"
						onload="javascript:dyniframesize('ifm1');" width="100%"
						style="height: 520px;"> </iframe>
				</div>
				<%-- <div class="panel panel-default col-lg-9 col-xs-9"
					style="padding: 0;">
					<div class="panel-heading"
						style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
						<table class="table" style="margin: 0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top: 0;">
									<div style="padding-left: 15px;">
										<b>农业新闻</b>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding: 5px 15px 45px 15px">
						<table class="table table-hover " style="margin: 0">
							<c:if test="${!empty page_nongye.result}">
								<c:forEach items="${page_nongye.result}" var="nongye"
									varStatus="stat">
									<tr>
										<td class="col-lg-10 col-xs-10"><a
											href="articlePage.action?articleID=${nongye.id }"
											target="_blank"
											style="cursor: pointer; text-decoration: none">
												<p>${nongye.atitle }</p>
										</a></td>
										<td class="col-lg-2 col-xs-2">
											<div>
												<p class="text-muted pull-right">
													<fmt:formatDate value="${nongye.adate }"></fmt:formatDate>
												</p>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</div> --%>
			</div>
			<div class="tab-pane" id="tab2">
			<div class="panel panel-default col-lg-9 col-xs-9"
					style="padding: 0;">
					<iframe
						src="<%=base_root%>/infoservices/articleNewsframe.action?type=huinongzixun "
						frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
						scrolling="auto" id="ifm2" name="ifm2"
						onload="javascript:dyniframesize('ifm2');" width="100%"
						style="height: 520px;"> </iframe>
				</div>
				<%-- <div class="panel panel-default col-lg-9 col-xs-9"
					style="padding: 0;">
					<!-- 
			<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
			 -->
					<div class="panel-heading"
						style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
						<table class="table" style="margin: 0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top: 0;">
									<div style="padding-left: 15px;">
										<b>惠农资讯</b>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding: 5px 15px 45px 15px">
						<table class="table table-hover " style="margin: 0">
							<c:if test="${!empty page_huinong.result}">
								<c:forEach items="${page_huinong.result}" var="huinong"
									varStatus="stat">
									<tr>
										<td class="col-lg-10 col-xs-10"><a
											href="articlePage.action?articleID=${huinong.id }"
											target="_blank"
											style="cursor: pointer; text-decoration: none">
												<p>${huinong.atitle }</p>
										</a></td>
										<td class="col-lg-2 col-xs-2">
											<div>
												<p class="text-muted pull-right">
													<fmt:formatDate value="${huinong.adate }"></fmt:formatDate>
												</p>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>

				</div> --%>

			</div>

			<div class="tab-pane" id="tab3">
			<div class="panel panel-default col-lg-9 col-xs-9"
					style="padding: 0;">
					<iframe
						src="<%=base_root%>/infoservices/articleNewsframe.action?type=jiaoyuyiliao "
						frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
						scrolling="auto" id="ifm1" name="ifm1"
						onload="javascript:dyniframesize('ifm1');" width="100%"
						style="height: 520px;"> </iframe>
				</div>
				<%-- <div class="panel panel-default col-lg-9 col-xs-9"
					style="padding: 0;">
					<!-- 
			<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
			 -->
					<div class="panel-heading"
						style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
						<table class="table" style="margin: 0;">
							<tr>
								<td class="col-xs-11 col-lg-11" style="border-top: 0;">
									<div style="padding-left: 15px;">
										<b>教育医疗</b>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<div class="panel-body" style="padding: 5px 15px 45px 15px">
						<table class="table table-hover " style="margin: 0">
							<c:if test="${!empty page_jiaoyu.result}">
								<c:forEach items="${page_jiaoyu.result}" var="jiaoyu"
									varStatus="stat">
									<tr>
										<td class="col-lg-10 col-xs-10"><a
											href="articlePage.action?articleID=${jiaoyu.id }"
											target="_blank"
											style="cursor: pointer; text-decoration: none">
												<p>${jiaoyu.atitle }</p>
										</a></td>
										<td class="col-lg-2 col-xs-2">
											<div>
												<p class="text-muted pull-right">
													<fmt:formatDate value="${jiaoyu.adate }"></fmt:formatDate>
												</p>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</div> --%>
			</div>
		</div>
	</div>
</body>
</html>