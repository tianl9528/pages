<%@page import="com.google.gxp.compiler.alerts.Alert"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String pageid = (String) request.getParameter("pageid") == null ? "1"
			: (String) request.getParameter("pageid");
	String type = (String) request.getParameter("type") == null ? "0"
			: (String) request.getParameter("type");
%>
<html lang="en">
<head>
<title>供应信息</title>
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
		<div class="row text-center row-css">
			<!--第一行，产品展示-->
			<div class="row-headline">
				<strong>产品供应</strong>
			</div>
			<div class="row-childhead">
				<strong>
					<div class="col-xs-1 col-lg-1"></div> <!--制表-->

					<div class="col-xs-10 col-lg-10">
						<!--菜单栏-->
						<ul class="nav nav-pills nav-justified">

							<li
								class="<%if (pageid.endsWith("1")) {
				out.print("active");
			}%>"><a
								href="#fruveg" data-toggle="tab" onclick="SelectPage('1')">种植果蔬</a></li>
							<li
								class="<%if (pageid.endsWith("2")) {
				out.print("active");
			}%>"><a
								href="#seabreed" data-toggle="tab" onclick="SelectPage('2')">养殖水产</a></li>
							<li
								class="<%if (pageid.endsWith("3")) {
				out.print("active");
			}%>"><a
								href="#byproduct" data-toggle="tab" onclick="SelectPage('3')">副食特产</a></li>
							<li
								class="<%if (pageid.endsWith("4")) {
				out.print("active");
			}%>"><a
								href="#agricap" data-toggle="tab" onclick="SelectPage('4')">园林园艺</a></li>
							<li
								class="<%if (pageid.endsWith("5")) {
				out.print("active");
			}%>"><a
								href="#farmmach" data-toggle="tab" onclick="SelectPage('5')">农资供应</a></li>
						<!-- 	<li
								class="<%if (pageid.endsWith("6")) {
				out.print("active");
			}%>"><a
								href="#all" data-toggle="tab" onclick="SelectPage('6')">全部供应</a></li>
 -->
						</ul>
					</div>
					<div class="col-xs-1 col-lg-1"></div> <!--制表-->
				</strong>
			</div>
		</div>
		<!--第一行-->
		<div class="row option">
			<!--第二行、搜搜-->
			<form action="supplysearchresult2.action" method="post"
				enctype="multipart/form-data">

				<div class="col-xs-2 col-lg-2 text-right"
					style="padding: 10px 0 10px 0; margin-right: 5px;">种类：</div>
				<div class="col-xs-2 col-lg-2"
					style="padding: 10px 0 10px 0; margin-right: 5px;">
					<span id="spanpage"> <span> <%out.print(pageid); %></span> 
					<c:if test="${!empty typelist}">
							<span> <c:forEach items="${typelist}" var="type"
									varStatus="stat" begin="0" end="3">
									<option value="${type.id }">${type.agstypename }</option>
								</c:forEach>
							</span>
							<span> <c:forEach items="${typelist}" var="type"
									varStatus="stat" begin="4" end="6">
									<option value="${type.id }">${type.agstypename }</option>
								</c:forEach>
							</span>
							<span> <c:forEach items="${typelist}" var="type"
									varStatus="stat" begin="7" end="8">
									<option value="${type.id }">${type.agstypename }</option>
								</c:forEach>
							</span>
							<span> <c:forEach items="${typelist}" var="type"
									varStatus="stat" begin="9" end="12">
									<option value="${type.id }">${type.agstypename }</option>
								</c:forEach>
							</span>
							<span> <c:forEach items="${typelist}" var="type"
									varStatus="stat" begin="13" end="16">
									<option value="${type.id }">${type.agstypename }</option>
								</c:forEach>
							</span>
							<span> <c:forEach items="${typelist}" var="type"
									varStatus="stat" begin="0" end="16">
									<option value="${type.id }">${type.agstypename }</option>
								</c:forEach>
							</span>
						</c:if>
					</span> <select id="selectpage" name="searchtype">
						<!--不同select-->
					</select>
				</div>
				<div class="col-xs-1 col-lg-1 text-right"
					style="padding: 10px 0 10px 0; margin-right: 5px;">价格：</div>
				<div class="col-xs-2 col-lg-2"
					style="padding: 10px 0 10px 0; margin-right: 5px;">
					<select name="priceorder" id="priceorder">
						<option value="desc" selected="selected">从高到低</option>
						<option value="asc">从低到高</option>
					</select>
				</div>
				<div class="col-xs-2 col-lg-2"
					style="padding: 10px 0 10px 0; margin-right: 5px;">
					<select name="pricerange" id="pricerange">
						<option selected="selected" value="">价格区间</option>
						<option value="&lt 50">50以下</option>
						<option value="between 50 and 100">50-100</option>
						<option value="between 100 and 200">100-200</option>
						<option value="between 200 and 500">200-500</option>
						<option value="&gt 500 ">500以上</option>
					</select>
				</div>
				<div class="col-xs-2 col-lg-2"
					style="padding: 10px 0 10px 0; margin-right: 5px;">
					<button type="submit" class="btn btn-success col-sm-10"
						style="padding: 3px 3px 3px 3px;">
						<b>搜索</b>
					</button>
				</div>
			</form>
		</div>
		<!--第二行-->
		<div class="row row-top listBox">
			<!--第三行、信息列表-->
			<div class="col-xs-9 col-lg-9">
				<div class="tab-content">
					<div
						class="tab-pane <%if (pageid.endsWith("1")) {
				out.print("active");
			}%>"
						id="fruveg">
						<!--种植果蔬-->
						<c:if test="${empty page1.result}">没有数据</c:if>
						<c:if test="${!empty page1.result}">
							<c:forEach items="${page1.result}" var="prosupp" varStatus="stat">
								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
											<c:if test="${empty prosupp.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/default/default.png"
													class="img-box" />
											</c:if> <c:if test="${!empty prosupp.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosupp.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosupp.spName}</b>
										</h4>
										<p>${prosupp.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosupp.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosupp.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />
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
						<div class="page">
							<div class=" pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page1.result}">${controlTable1}</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div
						class="tab-pane <%if (pageid.endsWith("2")) {
				out.print("active");
			}%>"
						id="seabreed">
						<!--养殖水产-->
						<c:if test="${empty page2.result}">没有数据</c:if>
						<c:if test="${!empty page2.result}">
							<c:forEach items="${page2.result}" var="prosupp" varStatus="stat">
								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
											<c:if test="${empty prosupp.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/default/default.png"
													class="img-box" />
											</c:if> <c:if test="${!empty prosupp.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosupp.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosupp.spName}</b>
										</h4>
										<p>${prosupp.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosupp.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosupp.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />
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
						<div class="page">
							<div class=" pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page2.result}">${controlTable2}</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div
						class="tab-pane <%if (pageid.endsWith("3")) {
				out.print("active");
			}%>"
						id="byproduct">
						<!--副食特产-->
						<c:if test="${empty page3.result}">没有数据</c:if>
						<c:if test="${!empty page3.result}">
							<c:forEach items="${page3.result}" var="prosupp" varStatus="stat">

								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
											<c:if test="${empty prosupp.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/default/default.png"
													class="img-box" />
											</c:if> <c:if test="${!empty prosupp.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosupp.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosupp.spName}</b>
										</h4>
										<p>${prosupp.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosupp.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosupp.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />
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
						<div class="page">
							<div class=" pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page3.result}">${controlTable3}</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div
						class="tab-pane <%if (pageid.endsWith("4")) {
				out.print("active");
			}%>"
						id="agricap">
						<!--园林园艺-->
						<c:if test="${empty page4.result}">没有数据</c:if>
						<c:if test="${!empty page4.result}">
							<c:forEach items="${page4.result}" var="prosupp" varStatus="stat">

								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
											<c:if test="${empty prosupp.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/default/default.png"
													class="img-box" />
											</c:if> <c:if test="${!empty prosupp.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosupp.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosupp.spName}</b>
										</h4>
										<p>${prosupp.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosupp.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosupp.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />
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
						<div class="page">
							<div class=" pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page4.result}">${controlTable4}</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div
						class="tab-pane <%if (pageid.endsWith("5")) {
				out.print("active");
			}%>"
						id="farmmach">
						<!--农资供应-->
						<c:if test="${empty page5.result}">没有数据</c:if>
						<c:if test="${!empty page5.result}">
							<c:forEach items="${page5.result}" var="prosupp" varStatus="stat">

								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
											<c:if test="${empty prosupp.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/default/default.png"
													class="img-box" />
											</c:if> <c:if test="${!empty prosupp.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosupp.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosupp.spName}</b>
										</h4>
										<p>${prosupp.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosupp.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosupp.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />
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
						<div class="page ">
							<div class=" pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page5.result}">${controlTable5}</c:if></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div
						class="tab-pane <%if (pageid.endsWith("6")) {
				out.print("active");
			}%>"
						id="all">
						<!--全部-->
						<c:if test="${empty page6.result}">没有数据</c:if>
						<c:if test="${!empty page6.result}">
							<c:forEach items="${page6.result}" var="prosupp" varStatus="stat">
								<div class="row row-list ">
									<div class="col-xs-3 col-lg-3">
										<a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
											<c:if test="${empty prosupp.spPhotos}">
												<img
													src="<%=request.getContextPath()%>/theme/image/default/default.png"
													class="img-box" />
											</c:if> <c:if test="${!empty prosupp.spPhotos}">
												<img src="<%=request.getContextPath()%>${prosupp.spPhotos}"
													class="img-box" />
											</c:if>
										</a>
									</div>
									<div class="col-xs-4 col-lg-4 text-left">
										<h4 style="margin-bottom: 5px;">
											<b>${prosupp.spName}</b>
										</h4>
										<p>${prosupp.spContent}</p>
										<h5>
											<strong>供应商：</strong><a href="#">${prosupp.user.user_name}</a>
										</h5>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										<span class="price-text"><strong>￥${prosupp.spPrice}元</strong></span>
									</div>
									<div class="col-xs-2 col-lg-2 text-center"
										style="padding-top: 35px;">
										1件起订<br />
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
						<div class="page ">
							<div class=" pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page6.result}">${controlTable6}</c:if></td>
									</tr>
								</table>
							</div>
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
								<span>优质果蔬</span>
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