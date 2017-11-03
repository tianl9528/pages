<%@page import="com.google.gxp.compiler.alerts.Alert"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>

<title>供应信息>>供应信息搜索结果</title>
<link href="<%=request.getContextPath()%>/theme/css/supplyinfo.css"
	rel="stylesheet" />
<script src="<%=request.getContextPath()%>/theme/js/supplyinfo.js"></script>

<style>
.contentBox .page {
	background-image: none;
}
</style>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row row-css listBox">
			<!--第一行，产品展示-->
			<div class=" row-headline text-center ">
				<strong>产品供应</strong>
			</div>
			<div class="row-childhead text-right" style="height: 50px">
				<a
					href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1"><strong>更多>></strong></a>
			</div>
		</div>
		<!--第一行-->
		<div class="row option">
			<!--第二行-->
			<div class="row row-top listBox">
				<!--第三行、信息列表-->
				<div class="col-xs-9 col-lg-9">
					<div class="tab-content">
						<!--种植果蔬-->
						<c:if test="${!empty searchpage.result}">
							<c:forEach items="${searchpage.result}" var="prosup"
								varStatus="stat">
								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosup.id}&supplyerid=${prosup.user.user_id}">
											<c:if test="${empty prosup.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/product006.jpg"
													class="img-box" />
											</c:if> <c:if test="${!empty prosup.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosup.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosup.spName}</b>
										</h4>
										<p>产品类型：</p>
										<p>
											<b>${prosup.agriculturethirdtype.agriculturesecondtype.agriculturefirsttype.agftypename}->
												${prosup.agriculturethirdtype.agriculturesecondtype.agstypename}->
												${prosup.agriculturethirdtype.agttypename}</b>
										</p>
										<p>产品描述：${prosup.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosup.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosup.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />茂名XXXX
									</div>
									<div class="col-xs-1 col-lg-1 text-center"
										style="padding-top: 35px; padding-left: 0px;">
										<a target="_blank"
											href="http://wpa.qq.com/msgrd?v=3&uin=2109675407&site=qq&menu=yes"><img
											style="margin-left: -10px;" border="0"
											src="http://wpa.qq.com/pa?p=2:2109675407:51" alt="点击这里给我发消息"
											title="点击这里给我发消息" /> </a>
									</div>
								</div>
								<hr />
							</c:forEach>
						</c:if>
						<c:if test="${empty searchpage.result}">未搜索到相应信息</c:if>
						<div class="page">
							<div class="pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty searchpage.result}">${searchcontrolTable}</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-xs-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background: rgb(115, 175, 55); color: white; padding: 5px;">
							<strong>热门推荐</strong>
						</div>
						<ul class="list-group">

							<li class="list-group-item"><a href="#"> <img
									class="img-box"
									src="<%=request.getContextPath()%>/theme/image/default/default.png" />
									<span>优质红椒</span>
							</a>
								<center>
									<a target="_blank"
										href="http://wpa.qq.com/msgrd?v=3&uin=2109675407&site=qq&menu=yes"><img
										style="margin-left: -10px;" border="0"
										src="http://wpa.qq.com/pa?p=2:2109675407:51" alt="点击这里给我发消息"
										title="点击这里给我发消息" /> </a>
								</center></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>