<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
<meta charset="utf-8"> 
<title>信息推送</title>
<%
	String base_root = request.getContextPath();	
%>
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<style type="text/css">
.nav-pills > li >a{
	border-radius:0;
	text-align:left;
	width:100px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #ffffff;
  background-color:#A8CBF2;
}
</style> 
</head>
<body>
<div style="width:1000px;">
	<div class="col-lg-2 col-xs-2" style="padding-left:0">
		<div id="sidebar" style="margin-left:15px;">
			<div class="panel panel-default" style="margin-bottom:2px">
				<div class="panel-body">																	
					<ul class="nav nav-pills">
						<li class="active"><a href="#tab1" data-toggle="tab">产品供应</a>
						<li><a href="#tab2" data-toggle="tab">产品需求</a>
						<li><a href="#tab3" data-toggle="tab">产品代理</a>
						<li><a href="#tab4" data-toggle="tab">实用技术</a>
					</ul>									 
				</div>
			</div>
		 </div>
	</div>
	<div class="col-lg-9 col-xs-9" style="min-width:755px;padding:0;margin-left:5px;">
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty psMap}">
							<c:forEach items="${psMap}" var="map">
								<c:forEach items="${map.value}" var="ps">
									<div class="row" style="margin-top:10px;">
										<div class="col-lg-3 col-xs-3">
											<a href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${ps.id}&supplyerid=${ps.user.user_id}" target="_blank">
												供应：${ps.spName}
											</a>
										</div>
										<div class="col-lg-3 col-xs-3">
											产品价格：${ps.spPrice}￥/每斤
										</div>
										<div class="col-lg-3 col-xs-3"></div>
										<div class="col-lg-3 col-xs-3">
											截止日期：<fmt:formatDate value="${ps.spExpDate}"></fmt:formatDate>
										</div>
									</div>
								</c:forEach>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div><!--tab-pane tab1-->
			<div class="tab-pane" id="tab2">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty pbMap}">
							<c:forEach items="${pbMap}" var="map">
								<c:forEach items="${map.value}" var="pb">
									<div class="row" style="margin-top:10px;">
										<div class="col-lg-3 col-xs-3">
											<a href="<%=request.getContextPath()%>/infoExchange/buydetail.action?id=${pb.id}&buyerid=${pb.user.user_id}" target="_blank">
												求购：${pb.pbName}
											</a>
										</div>
										<div class="col-lg-3 col-xs-3">
											产品价格：${pb.pbPrice}￥/每斤
										</div>
										<div class="col-lg-3 col-xs-3"></div>
										<div class="col-lg-3 col-xs-3">
											截止日期：<fmt:formatDate value="${pb.pbExpDate}"></fmt:formatDate>
										</div>
									</div>
								</c:forEach>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div><!--tab-pane tab2-->
			<div class="tab-pane" id="tab3">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty inMap}">
							<c:forEach items="${inMap}" var="map">
								<c:forEach items="${map.value}" var="im">
									<div class="row" style="margin-top:10px;">
										<div class="col-lg-3 col-xs-3">
											<a href="<%=request.getContextPath()%>/elecBusiness/agentdetail.action?id=${im.id}&investerid=${im.user.user_id}" target="_blank">
												代理：${im.inName}
											</a>
										</div>
										<div class="col-lg-3 col-xs-3">
											产品价格：${im.inPrice}￥/每斤
										</div>
										<div class="col-lg-3 col-xs-3"></div>
										<div class="col-lg-3 col-xs-3">
											截止日期：<fmt:formatDate value="${im.inExpDate}"></fmt:formatDate>
										</div>
									</div>
								</c:forEach>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div><!--tab-pane tab3-->
			<div class="tab-pane" id="tab4">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty techMap}">
							<c:forEach items="${techMap}" var="map">
								<c:forEach items="${map.value}" var="tech">
									<div class="row" style="margin-top:15px;margin-left:5px;">
										<div class="col-lg-3 col-xs-3">
										&bull;&nbsp;${tech.aiproduce}&nbsp;&gt;&nbsp;${tech.aichtype}技术
										</div>
										<div class="col-lg-9 col-xs-9">
											<a href="<%=request.getContextPath()%>/push/aidetail.action?id=${tech.id}" target="_blank">
												${tech.aititle}
											</a>
										</div>
									</div>
								</c:forEach>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div><!--tab-pane tab4-->
		</div>
	</div>
</div>
</body>
</html>