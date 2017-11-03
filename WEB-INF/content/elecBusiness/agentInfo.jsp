<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>招商代理</title>
<link href="<%=request.getContextPath()%>/theme/css/supplyinfo.css"
	rel="stylesheet">
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row" style="width: 960px; height: 200px">
			<div class="col-xs-12 col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"
						style="padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
						<div class="row">
							<div class="col-xs-11 col-lg-11 text-left myFont15">
								热门招商代理
							</div>
							<div class="col-xs-1 col-lg-1 color_withe">
								<a
									href="<%=request.getContextPath()%>/elecBusiness/agentlistInfo.action?pageid=1"><small class="lh30">更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body" style="padding: 10px; height: 200px">
						<div class="row row-top" style="padding: 10px 10px 10px 10px">
							<!--第一条-->
							<div class="col-xs-4 col-lg-4 text-left" style="color: green; border-bottom: 2px solid grey;">
								<h4>信息名称</h4>
							</div>
							<div class="col-xs-2 col-lg-2 text-left" style="color: green; border-bottom: 2px solid grey;">
								<h4>发布单位</h4>
							</div>
							<div class="col-xs-2 col-lg-2 text-right" style="color: green; border-bottom: 2px solid grey;">
								<h4>联系地址</h4>
							</div>
							<div class="col-xs-4 col-lg-4 text-right" style="color: green; border-bottom: 2px solid grey;">
								<h4>发布时间</h4>
							</div>
							<c:if test="${empty page_popular.result }">没有数据</c:if>
							<c:if test="${!empty page_popular.result }">
								<c:forEach items="${page_popular.result}" var="agent_popular"
									varStatus="stat" begin="0" end="10">
									<div class="col-xs-4 col-lg-4 text-left" style="padding-top: 5px">
										<a
											href="<%=request.getContextPath()%>/elecBusiness/agentdetail.action?id=${agent_popular.id}&investerid=${agent_popular.user.user_id}">${agent_popular.inName}</a>
									</div>
									<div class="col-xs-2 col-lg-2 text-left" style="padding-top: 5px">
										${agent_popular.inFactory}</div>
									<div class="col-xs-2 col-lg-2 text-right" style="padding-top: 5px">
										${agent_popular.inAddress}</div>
									<div class="col-xs-4 col-lg-4 text-right" style="padding-top: 5px">
										<fmt:formatDate value="${agent_popular.inPubDate}"
											pattern="yyyy-MM-dd" />
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="width: 960px; height: 200px">
			<div class="col-xs-12 col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"
						style="padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
						<div class="row">
							<div class="col-xs-11 col-lg-11 text-left myFont15">
								最新招商代理
							</div>
							<div class="col-xs-1 col-lg-1 color_withe">
								<a
									href="<%=request.getContextPath()%>/elecBusiness/agentlistInfo.action?pageid=2"><small class="lh30">更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body" style="padding: 10px; height: 200px">
						<div class="row row-top" style="padding: 10px 10px 10px 10px">
							<!--第一条-->
							<div class="col-xs-4 col-lg-4 text-left" style="color: green; border-bottom: 2px solid grey;">
								<h4>信息名称</h4>
							</div>
							<div class="col-xs-2 col-lg-2 text-left" style="color: green; border-bottom: 2px solid grey;">
								<h4>发布单位</h4>
							</div>
							<div class="col-xs-2 col-lg-2 text-right" style="color: green; border-bottom: 2px solid grey;">
								<h4>联系地址</h4>
							</div>
							<div class="col-xs-4 col-lg-4 text-right" style="color: green; border-bottom: 2px solid grey;">
								<h4>发布时间</h4>
							</div>
							<c:if test="${empty page_latest.result }">没有数据</c:if>
							<c:if test="${!empty page_latest.result }">
								<c:forEach items="${page_latest.result}" var="agent_latest"
									varStatus="stat" begin="0" end="10">
									<div class="col-xs-4 col-lg-4 text-left" style="padding-top: 5px">
										<a
											href="<%=request.getContextPath()%>/elecBusiness/agentdetail.action?id=${agent_latest.id}&investerid=${agent_latest.user.user_id}">${agent_latest.inName}</a>
									</div>
									<div class="col-xs-2 col-lg-2 text-left" style="padding-top: 5px">
										${agent_latest.inFactory}</div>
									<div class="col-xs-2 col-lg-2 text-right" style="padding-top: 5px">
										${agent_latest.inAddress}</div>
									<div class="col-xs-4 col-lg-4 text-right" style="padding-top: 5px">
										<fmt:formatDate value="${agent_latest.inPubDate}"
											pattern="yyyy-MM-dd" />
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>