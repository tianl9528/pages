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
.season{
	font-size:14px;
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
						<li class="active"><a href="#tab1" data-toggle="tab">农业气象</a>
						<li><a href="#tab2" data-toggle="tab">病虫害</a>
						<li><a href="#tab3" data-toggle="tab">致富经验</a>
						<li><a href="#tab4" data-toggle="tab">当季产品</a>
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
						<c:if test="${!empty nyqx}">
							<c:forEach items="${nyqx}" var="nyqx" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="aidetail.action?id=${nyqx.id}" target="_blank">${nyqx.aititle}</a>
									</div>
									<div class="col-lg-2 col-xs-2">
										<fmt:formatDate value="${nyqx.aidate}"></fmt:formatDate>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="row" style="margin-top:20px;">
							<div class="col-lg-10 col-xs-10">
								
							</div>
							<div class="col-lg-2 col-xs-2">
								<span class="label label-info"><a href="nyqxlist.action" target="_blank">更多&nbsp;>></a></span>
							</div>
						</div>
					</div>
				</div>
			</div><!--tab-pane tab1-->
			<div class="tab-pane" id="tab2">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty bchyb}">
							<c:forEach items="${bchyb}" var="bchyb" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="aidetail.action?id=${bchyb.id}" target="_blank">${bchyb.aititle}</a>
									</div>
									<div class="col-lg-2 col-xs-2">
										<fmt:formatDate value="${bchyb.aidate}"></fmt:formatDate>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="row" style="margin-top:20px;">
							<div class="col-lg-10 col-xs-10">
								
							</div>
							<div class="col-lg-2 col-xs-2">
								<span class="label label-info"><a href="bchyblist.action" target="_blank">更多&nbsp;>></a></span>
							</div>
						</div>
					</div>
				</div>
			</div><!--tab-pane tab2-->
			<div class="tab-pane" id="tab3">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty zfjy}">
							<c:forEach items="${zfjy}" var="zfjy" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="aidetail.action?id=${zfjy.id}" target="_blank">${zfjy.aititle}</a>
									</div>
									<div class="col-lg-2 col-xs-2">
										<fmt:formatDate value="${zfjy.aidate}"></fmt:formatDate>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<div class="row" style="margin-top:20px;">
							<div class="col-lg-10 col-xs-10">
								
							</div>
							<div class="col-lg-2 col-xs-2">
								<span class="label label-info"><a href="zfjylist.action" target="_blank">更多&nbsp;>></a></span>
							</div>
						</div>
					</div>
				</div>
			</div><!--tab-pane tab3-->
			<div class="tab-pane" id="tab4">
				<div class="panel panel-default">
					<div class="panel-body">
						<c:if test="${!empty seaPro}">
							<c:forEach items="${seaPro}" var="product" varStatus="stat" begin="0" end="10">
								<div class="row" style="margin-top:15px;">
									<div class="col-lg-10 col-xs-10">
										<a href="#" target="_blank"><p class="season">${product}</p></a>
									</div>
								</div>
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