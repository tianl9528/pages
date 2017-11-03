<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>全部频道</title>
<style type="text/css">
	.zt{
		font-size:14px;
		font-family:"宋体";
		text-align:center;
	}
</style>
</head>
<body>
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default" style="border:none;">
			<div class="panel-body">
				<div class="row"><!-- 第一行 -->
					<div class="col-xs-1 col-lg-1"></div>
					<div class="col-xs-10 col-lg-10"><!-- 第二列 -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-10 xol-lg-10" style="text-align:left;padding-left:50px;">
										<font class="zt">所有频道</font>
									</div>
									<div class="col-xs-2 col-lg-2" style="text-align:right;">								
									</div>
								</div>
							</div>
							<div class="panel-body">
								<c:if test="${!empty rssList}">
									<c:forEach items="${rssList}" var="rss" varStatus="stat">
										<div class="row" style="margin-top:20px;">
											<div class="col-xs-4 col-lg-4">
												<img alt="" src="<%=request.getContextPath()%>/theme/rss-img/rss_dy01.jpg" width="40" height="40" />
												<font class="zt"><a href="${rss.rssurl }">${rss.rssname}</a></font>
											</div>									
											<div class="col-xs-5 col-lg-5"></div>
											<div class="col-xs-3 col-lg-3">
												<a href="channelSub.action?id=${rss.id}"><img alt="" src="<%=request.getContextPath()%>/theme/rss-img/rss_dy.jpg" width="106" height="39" /></a>
											</div>
										</div>
									</c:forEach>
								</c:if>																																								
							</div>
						</div>
					</div>
					<div class="col-xs-1 col-lg-1"></div>
				</div>
			</div>							
		</div>
	</div>
</body>
</html>