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
<div style="width:1000px;margin-top:10px;">
	<div class="col-lg-2 col-xs-2" style="padding-left:0">
		<div id="sidebar" style="margin-left:15px;">
			<div class="panel panel-default" style="margin-bottom:2px">
				<div class="panel-body">																	
					<ul class="nav nav-pills">
						<li class="active"><a href="#tab1" data-toggle="tab">农业要闻</a>
						<li><a href="#tab2" data-toggle="tab">科技要闻</a>
						<li><a href="#tab3" data-toggle="tab">专家论坛</a>
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
						<c:if test="${!empty nyyw}">
							<c:forEach items="${nyyw}" var="nyyw" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="aidetail.action?id=${nyyw.id}" target="_blank">${nyyw.aititle}</a>
									</div>
									<div class="col-lg-2 col-xs-2">
										<fmt:formatDate value="${nyyw.aidate}"></fmt:formatDate>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="row" style="margin-top:20px;">
							<div class="col-lg-10 col-xs-10">
								
							</div>
							<div class="col-lg-2 col-xs-2">
								<span class="label label-info"><a href="nyywlist.action" target="_blank">更多&nbsp;>></a></span>
							</div>
						</div>
					</div>
				</div>
			</div><!--tab-pane tab1-->
			<div class="tab-pane" id="tab2">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty kjyw}">
							<c:forEach items="${kjyw}" var="kjyw" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="aidetail.action?id=${kjyw.id}" target="_blank">${kjyw.aititle}</a>
									</div>
									<div class="col-lg-2 col-xs-2">
										<fmt:formatDate value="${kjyw.aidate}"></fmt:formatDate>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="row" style="margin-top:20px;">
							<div class="col-lg-10 col-xs-10">
								
							</div>
							<div class="col-lg-2 col-xs-2">
								<span class="label label-info"><a href="kjywlist.action" target="_blank">更多&nbsp;>></a></span>
							</div>
						</div>
					</div>
				</div>
			</div><!--tab-pane tab2-->
			<div class="tab-pane" id="tab3">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty zjlt}">
							<c:forEach items="${zjlt}" var="zjlt" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="aidetail.action?id=${zjlt.id}" target="_blank">${zjlt.aititle}</a>
									</div>
									<div class="col-lg-2 col-xs-2">
										<fmt:formatDate value="${zjlt.aidate}"></fmt:formatDate>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="row" style="margin-top:20px;">
							<div class="col-lg-10 col-xs-10">
								
							</div>
							<div class="col-lg-2 col-xs-2">
								<span class="label label-info"><a href="zjltlist.action" target="_blank">更多&nbsp;>></a></span>
							</div>
						</div>
					</div>
				</div>
			</div><!--tab-pane tab3-->
		</div>
	</div> 
</div>
</body>
</html>