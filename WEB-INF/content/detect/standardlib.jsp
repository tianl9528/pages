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
<title>质量检测>> 标准库</title>
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
	color: #4e5b2c;
	background-color: #c3f29d;
}
</style>
</head>
<body>
<div class="container">
	<div class="row forecast">
		<div class="listBox">
			<form
				action="<%=request.getContextPath()%>/infoservices/articleSearch.action"
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
									<b>标准库</b>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="panel-body" style="padding: 5px 15px 45px 15px">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${empty page_BIAOZHUN.result}">没有数据！！！</c:if>
						<c:if test="${!empty page_BIAOZHUN.result}">
							<c:forEach items="${page_BIAOZHUN.result}" varStatus="stat"
								var="standard">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="<%=request.getContextPath() %>/detect/bzarticlePage.action?biaozhunID=${standard.id}"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${standard.bztitle }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">${standard.bzdate}</p>
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
								<td><c:if test="${!empty page_BIAOZHUN.result}">${controlTable_BIAOZHUN}</c:if></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="span3">
			<div class="panel panel-default">
				<div class="panel-heading myFont15"
					style="color: white;text-align: center;">
					病虫害预报
				</div>
				<div class="panel-body">
					<ul class="nav nav-pills">
						<li class="active"><a href="#tab1" data-toggle="tab">蔬菜</a></li>
						<li><a href="#tab2" data-toggle="tab">水产</a></li>
						<li><a href="#tab3" data-toggle="tab">水果</a></li>
					</ul>
				</div>
			</div>
		</div> -->
	    <%-- <div class="span12">
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<div class="panel panel-default"
						style="padding: 0;">
						<table class="table table-hover " style="margin: 0">
							<c:if test="${empty page_shucaibingchonghai.result}">没有数据！！！</c:if>
							<c:if test="${!empty page_shucaibingchonghai.result}">
								<c:forEach items="${page_searchresult.result}" varStatus="stat"
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
						<iframe
							src="<%=base_root%>/infoservices/articleNewsframe.action?type=bingchonghaifangyi&other=shucai "
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm1" name="ifm1"
							onload="javascript:dyniframesize('ifm1');"
							style="height: 520px;"> </iframe>
						<!-- 
				<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
				 -->
						<div class="panel-heading"
							style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11" style="border-top: 0;">
										<div style="padding-left: 15px;">
											<b>蔬菜</b>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty page_shucaibingchonghai.result}">
									<c:forEach items="${page_shucaibingchonghai.result}" var="veg"
										varStatus="stat">
										<li><a href="latestNewsPage3.action" target="_blank"></a></li>
										<tr>
											<td class="col-lg-10 col-xs-10"><a
												href="articlePage.action?articleID=${veg.id }"
												target="_blank"
												style="cursor: pointer; text-decoration: none">
													<p>${veg.atitle }</p>
											</a></td>
											<td class="col-lg-2 col-xs-2">
												<div>
													<p class="text-muted pull-right">
														<fmt:formatDate value="${veg.adate }"></fmt:formatDate>
													</p>
												</div>
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</table>
						</div>
	
					</div>
				</div>
	
				<div class="tab-pane" id="tab2">
					<div class="panel panel-default"
						style="padding: 0;">
						<iframe
							src="<%=base_root%>/infoservices/articleNewsframe.action?type=bingchonghaifangyi&other=shuichan "
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm2" name="ifm2"
							onload="javascript:dyniframesize('ifm2');"
							style="height: 520px;"> </iframe>
						<!-- 
				<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
				 -->
						<div class="panel-heading"
							style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11" style="border-top: 0;">
										<div style="padding-left: 15px;">
											<b>水产</b>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty page_shuichanbingchonghai.result}">
									<c:forEach items="${page_shuichanbingchonghai.result}"
										var="aqua" varStatus="stat">
										<li><a href="latestNewsPage3.action" target="_blank"></a></li>
										<tr>
											<td class="col-lg-10 col-xs-10"><a
												href="articlePage.action?articleID=${aqua.id }"
												target="_blank"
												style="cursor: pointer; text-decoration: none">
													<p>${aqua.atitle }</p>
											</a></td>
											<td class="col-lg-2 col-xs-2">
												<div>
													<p class="text-muted pull-right">
														<fmt:formatDate value="${aqua.adate }"></fmt:formatDate>
													</p>
												</div>
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</table>
						</div>
	
					</div>
	
				</div>
	
				<div class="tab-pane" id="tab3">
					<div class="panel panel-default"
						style="padding: 0;">
						<iframe
							src="<%=base_root%>/infoservices/articleNewsframe.action?type=bingchonghaifangyi&other=shuiguo"
							frameborder="0" marginheight="0" marginwidth="0" frameborder="0"
							scrolling="auto" id="ifm3" name="ifm3"
							onload="javascript:dyniframesize('ifm3');" "
							style="height: 520px;"> </iframe>
						<!-- 
				<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
				 -->
						<div class="panel-heading"
							style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
							<table class="table" style="margin: 0;">
								<tr>
									<td class="col-xs-11 col-lg-11" style="border-top: 0;">
										<div style="padding-left: 15px;">
											<b>水果</b>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty page_shuiguobingchonghai.result}">
									<c:forEach items="${page_shuiguobingchonghai.result}"
										var="fruit" varStatus="stat">
										<li><a href="latestNewsPage3.action" target="_blank"></a></li>
										<tr>
											<td class="col-lg-10 col-xs-10"><a
												href="articlePage.action?articleID=${fruit.id }"
												target="_blank"
												style="cursor: pointer; text-decoration: none">
													<p>${fruit.atitle }</p>
											</a></td>
											<td class="col-lg-2 col-xs-2">
												<div>
													<p class="text-muted pull-right">
														<fmt:formatDate value="${fruit.adate }"></fmt:formatDate>
													</p>
												</div>
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</table>
						</div>
	
					</div>
				</div>
			</div>
		</div >--%>
	  </div>
	</div>
</body>
</html>