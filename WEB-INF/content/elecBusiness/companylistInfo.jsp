<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
	<title>企业信息>>企业列表</title>
	<meta name="description" content="Creating Modal Window with Bootstrap">
		<link href="css/bootstrap.css" rel="stylesheet">
			<link href="<%=request.getContextPath()%>/theme/css/supplyinfo.css"
				rel="stylesheet">
				<script src="js/jquery.js"></script>
				<script src="js/bootstrap.js"></script>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row text-center row-css">
			<!--第一行，产品展示-->
			<div class="row-headline">
				<strong>企业展示</strong>
			</div>
		</div>
		<!--第一行-->
		<div class="row option">
			<!--第二行-->
			<div class="row row-top listBox">
				<!--第三行、信息列表-->
				<div class="col-xs-9 col-lg-9">
					<div class="tab-content">
						<div class="tab-pane active" id="fruveg">
							<!--种植果蔬-->
							<c:if test="${!empty page.result}">
								<c:forEach items="${page.result}" var="company" varStatus="stat">

									<div class="row row-list ">
										<div class="col-xs-3 col-lg-3" style="height: 150px;width: 150px">
											<a
												href="<%=request.getContextPath()%>/elecBusiness/companydetail.action?id=${company.id}">
												<c:if test="${empty company}">
													<img
														src="<%=request.getContextPath()%>/theme/image/default/companydefault.jpg"
														class="img-box" />
												</c:if> <c:if test="${!empty company}">
													<img src="<%=request.getContextPath()%>${company.companyimage}" class="img-box" />
												</c:if>
											</a>
										</div>
										<div class="col-xs-4 col-lg-4 text-left">
											<h4 style="margin-bottom: 5px;">
												<b>${company.companyname}</b>
											</h4>
											<p>${company.nature}</p>
											<h5>
												<strong>企业地址：</strong><a href="#">${company.address}</a>
											</h5>
										</div>
										<div class="col-xs-2 col-lg-2 text-center"
											style="padding-top: 35px;">
											<span class="price-text"><strong></strong></span>
										</div>
									</div>
									<hr>
								</c:forEach>
							</c:if>
							<c:if test="${empty page.result}">没有数据</c:if>
						</div>
						<div class="page">
							<div class="pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page.result}">${controlTable}</c:if></td>
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
									<span>优质青瓜</span>
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
</body>
</html>