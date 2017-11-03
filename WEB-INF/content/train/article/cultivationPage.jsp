<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人才培训 >> 技术培训 >> 养殖技术</title>
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

.post-image {
	margin: 7px;
}

.zhongzhi a {
	color: #4e5b2c;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="row zhongzhi"
		style="max-width: 1007px; min-width: 820px; margin: 15px">

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

		<div class="col-lg-4 col-xs-4" style="padding-left: 0;">
			<div class="panel panel-default">
				<div class="panel-heading"
					style="text-align: center; background-color: white">
					<img src="<%=base_root%>/theme/images/trainimg/${pagepicture}"
						style="width: 285px" />
					<p style="font-weight: bold; margin: 15px 0 4px;">${pagetopic }养殖专题</p>
				</div>
				<div class="panel-body">
					<p>&nbsp;&nbsp;&nbsp;&nbsp;${pagedisc }</p>
				</div>
			</div>
		</div>
		<div class="col-lg-8 col-xs-8" style="padding: 0">
			<div class="panel panel-default">
				<!--  
			<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);">
		-->
				<div class="panel-heading" style="background-color: #A8CBF2">
					<span style="font-weight: bold">实用技术</span>
				</div>
				
					<div class="col-lg-7 col-xs-7">
						<ul style="padding-left: 0;">
							<c:if test="${empty page_article.result }">没有数据</c:if>
							<c:if test="${!empty page_article.result }">
								<c:forEach items="${page_article.result }" varStatus="stat"
									var="article">
									<li style="padding: 0 0 7px"><a
										href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"
										target="_blank">${article.atitle }</a></li>
								</c:forEach>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-12 col-xs-12" style="padding: 0;">
			<div id="carousel-captions" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active">
						<div class="row" style="padding: 0 15px 0 20px;">
							<!--第一组图片-->
							<c:if test="${empty page_article.result }">没有数据</c:if>
							<c:if test="${!empty page_article.result }">
								<c:forEach items="${page_article.result }" varStatus="stat"
									var="article" begin="0" end="3">
									<div class="col-xs-3 col-lg-3" style="padding: 0 5px 0 0;">
										<div class="panel" style="padding: 0; margin: 5px 0 5px 0;">
											<div class="subfeature">
												<div class="thumbnail" style="margin: 7px;">
													<a
														href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"
														" target="_blank"><img
														src="<%=base_root%>${article.aimgurl}" class="post-image" /></a>
													<p class="text-center" style="margin: 5px;">
														<a
															href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"
															" target="_blank">${article.atitle }</a>
													</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
					<div class="item">
						<!--第二组图片-->
						<div class="row" style="padding: 0 15px 0 20px;">
							<!--第二组图片-->
							<c:if test="${empty page_article.result }">没有数据</c:if>
							<c:if test="${!empty page_article.result }">
								<c:forEach items="${page_article.result }" varStatus="stat"
									var="article" begin="4" end="7">
									<div class="col-xs-3 col-lg-3" style="padding: 0 5px 0 0;">
										<!--第一张图片-->
										<div class="panel" style="padding: 0; margin: 5px 0 5px 0;">
											<div class="subfeature">
												<div class="thumbnail" style="margin: 7px;">
													<a href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"" target="_blank"><img
														src="<%=base_root%>${article.aimgurl}"
														class="post-image" /></a>
													<p class="text-center" style="margin: 5px;">
														<a href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"" target="_blank">${article.atitle }</a>
													</p>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
				<a class="left carousel-control" style="width: 30px"
					href="#carousel-captions" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" style="left: 5px;"></span>
				</a> <a class="right carousel-control" style="width: 30px"
					href="#carousel-captions" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" style="right: 5px;"></span>
				</a>
			</div>
		</div>
	</div>
</body>
</html>
</body>
</html>
