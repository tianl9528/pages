<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>RSS订阅频道</title>
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
			<div class="panel-heading" style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
				<div class="row">
					<div class="col-xs-10 xol-lg-10">
							
					</div>
					<div class="col-xs-2 col-lg-2">
						<a href="allRSS.action"><font class="zt">RSS频道列表</font></a>						
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="row"><!-- 第一行 -->
					<!-- 
					<div class="col-xs-2 col-lg-2" style="padding-left:5px;">
						<div class="panel panel-success">
							<div class="panel-heading" style="text-align:center;">
								<a href="#"><font class="zt">全部更新</font></a>
							</div>							
						</div>
					</div>
					  -->
					<div class="col-xs-4 col-lg-4" style="padding-left:5px;"><!-- 第一列 -->
						<div class="panel panel-success">
							<div class="panel-heading" style="text-align:center;">
								<a href="#"><font class="zt">我的订阅</font></a>
							</div>
							<div class="panel-body">
								<c:if test="${!empty rssSet}">
									<c:forEach items="${rssSet}" var="rss" varStatus="stat">
										<div class="row" style="margin-top:5px;">
											<h5 style="text-align:center;"><a href="rssdetail.action?id=${rss.id }">${rss.rssname}</a></h5>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${empty rssSet}">
									<div class="row" style="margin-top:0px;margin-left:30px;">
										<font class="zt">你没有订阅</font>
									</div>
								</c:if>
							</div>							
						</div>
					</div>
					
					<div class="col-xs-8 col-lg-8" style="margin-left:-20px;"><!-- 第二列 -->
						<div class="panel panel-default" style="margin-right:-30px;">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-10 xol-lg-10" style="text-align:left;padding-left:50px;">
										<font class="zt">你可能喜欢</font>
									</div>
									<div class="col-xs-2 col-lg-2" style="text-align:right;">								
									</div>
								</div>
							</div>
							<div class="panel-body">
								<c:if test="${!empty recoList}">
									<c:forEach items="${recoList}" var="rss" varStatus="stat">
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
				</div>
			</div>							
		</div>
	</div>
</body>
</html>