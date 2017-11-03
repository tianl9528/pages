<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>农产品分类</title>
<meta name="description" content="Creating Modal Window with Bootstrap">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/theme/css/productinfo.css"
	rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>

</head>
<body>
	<!--  防止页面超过框外 -->
	<div style="padding: 20px 20px 0 20px;">
		<!--  防止页面超过框外 -->
		<div class="row">
			<!--第一行-->
			<div class="panel panel-default">
				<div class="panel-heading"
					style="background: #F1F1F1; padding: 5px 5px 5px 10px; font-size: 20px;">
					<div class="row">
						<div class="col-xs-10 col-lg-10">
							<b style="color:#70AB37;font-size:16px;">分类检索</b>
						</div>
						<div class="col-xs-2 col-lg-2 text-right">
							<a
								href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action"><small>更多>></small></a>
						</div>
					</div>
				</div>
				<div class="panel-body" style="padding: 5px 15px 10px 15px;">
					<div class="row row-top">
						<!--body的一个外框-->
						<div class="col-xs-12 col-lg-12 col-css">
							<div class="row row-bottom">
								<!--右侧信息栏第一行第一列-->
								<div class="col-xs-4 col-lg-4">
									<div class="media">
										<a class="pull-left"
											href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1">
											<img class="media-object"
											src="<%=request.getContextPath()%>/theme/image/product001.jpg"
											style="width: 150px;" alt="...">
											<div class="text-center text-color">
												<b>种植果蔬</b>
											</div>
										</a>
										<div class="media-body">
											<div class="text-right">
												<a
													href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1"><small>更多>></small></a>
											</div>
											<table>
												<tbody>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1&type=8">竹笋类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1&type=9">花菜类</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1&type=11">豆荚类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1&type=12">瓜果类</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1&type=14">根菜类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1&type=15">水生菜类</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<!--右侧信息栏第一行第二列-->
								<div class="col-xs-4 col-lg-4">
									<div class="media">
										<a class="pull-left"
											href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2">
											<img class="media-object"
											src="<%=request.getContextPath()%>/theme/image/product002.jpg"
											style="width: 150px;" alt="...">
											<div class="text-center text-color">
												<b>养殖水产</b>
											</div>
										</a>
										<div class="media-body">
											<table>
												<div class="text-right">
													<a
														href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2"><small>更多>></small></a>
												</div>
												<tbody>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=22">鳖类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=23">鱼类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=24">虾类</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=25">贝类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=26">藻类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=27">螺类</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=28">蛙类</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=2&type=29">蟹类</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="col-xs-4 col-lg-4">
									<div class="media">
										<a class="pull-left"
											href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3">
											<img class="media-object"
											src="<%=request.getContextPath()%>/theme/image/product003.jpg"
											style="width: 150px;" alt="...">
											<div class="text-center text-color">
												<b>副食特产</b>
											</div>
										</a>
										<div class="media-body">
											<table>
												<div class="text-right">
													<a
														href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3"><small>更多>></small></a>
												</div>
												<tbody>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3&type=36">休闲食品</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3&type=38">水产制品</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3&type=40">水果加工</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3&type=39">蔬菜加工</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3&type=41">特色农产</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=3&type=45">粮油副产品</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="row row-bottom">
								<!--右侧信息栏第二行第一列-->
								<div class="col-xs-4 col-lg-4">
									<div class="media">
										<a class="pull-left"
											href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4">
											<img class="media-object"
											src="<%=request.getContextPath()%>/theme/image/product004.jpg"
											style="width: 150px;" alt="...">
											<div class="text-center text-color">
												<b>园林园艺</b>
											</div>
										</a>
										<div class="media-body">
											<div class="text-right">
												<a
													href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4"><small>更多>></small></a>
											</div>
											<table>
												<tbody>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4&type=52">草本花卉</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4&type=57">园艺景观</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4&type=53">木本花卉</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4&type=59">草坪</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=4&type=58">盆栽</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<!--右侧信息栏第二行第二列-->
								<div class="col-xs-4 col-lg-4">
									<div class="media">
										<a class="pull-left"
											href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5"">
											<img class="media-object"
											src="<%=request.getContextPath()%>/theme/image/product005.jpg"
											style="width: 150px;" alt="...">
											<div class="text-center text-color">
												<b>农资供应</b>
											</div>
										</a>
										<div class="media-body">
											<div class="text-right">
												<a
													href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5"><small>更多>></small></a>
											</div>
											<table>
												<tbody>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5&type=61">种子</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5&type=62">种苗</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5&type=68">农药</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5&type=70">饲料</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5&type=71">牧草</a>|<a
															href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=5&type=73">五金工具</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="col-xs-4 col-lg-4">
									<div class="media">
										<a class="pull-left"
											href="<%=request.getContextPath()%>/town/featureproduct.action">
											<img class="media-object"
											src="<%=request.getContextPath()%>/theme/image/product007.jpg"
											style="width: 150px;" alt="...">
											<div class="text-center text-color">
												<b>名优产品</b>
											</div>
										</a>
										<div class="media-body">
											<div class="text-right">
												<a
													href="<%=request.getContextPath()%>/town/featureproduct.action"><small>更多>></small></a>
											</div>
											<table>
												<tbody>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/town/featureproduct.action?tid=218">电城镇</a>|</td>
														<td><a
															href="<%=request.getContextPath()%>/town/featureproduct.action?tid=220">公馆镇</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/town/featureproduct.action?tid=221">博贺镇</a>|</td>
														<td><a
															href="<%=request.getContextPath()%>/town/featureproduct.action?tid=222">泗水镇</a></td>
													</tr>
													<tr>
														<td><a
															href="<%=request.getContextPath()%>/town/featureproduct.action?tid=223">谢鸡镇</a>|</td>
														<td><a
															href="<%=request.getContextPath()%>/town/featureproduct.action?tid=224">根子镇</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<!--第二行-->
			<div class="col-xs-6 col-lg-6" style="padding: 0 5px 0 5px;">
				<div class="panel panel-default">
					<div class="panel-heading"
						style="background: #F2B232; padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
						<div class="row">
							<div class="col-xs-8 col-lg-8">
								<b style="font-size:16px;">供应信息</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right">
								<a
									href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1"><small>更多>></small></a>
							</div>
						</div>
					</div>
					<table class="table table-striped">
						<tbody class="">
							<tr height="50px">
								<td width="100px">
									<h4 style="margin-bottom: 5px;">
										<b>供应商品</b>
									</h4>
								</td>
								<td width="280px">
									<h4 style="margin-bottom: 5px;">
										<b>供应描述</b>
									</h4>
								</td>
								<td>
									<h4 style="margin-bottom: 5px;">
										<b>供应量</b>
									</h4>
								</td>
							</tr>
							<c:if test="${!empty page_sale.result}">
								<c:forEach items="${page_sale.result}" var="prodsupp"
									varStatus="stat" begin="0" end="4">
									<tr height="70px">
										<td><a
											href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prodsupp.id}&supplyerid=${prodsupp.user.user_id}">
												<h4 style="margin-bottom: 5px;">
													<p>${prodsupp.spName}</p>
												</h4>
										</a></td>
										<td>
											<h4 style="margin-bottom: 5px;">
												<p>${prodsupp.spContent}</p>
											</h4>
										</td>
										<td>
											<h4 style="margin-bottom: 5px;">
												<p>${fn:replace(prodsupp.spNum, ',' , '')}</p>
											</h4>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty page_sale.result}">没有数据</c:if>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-xs-6 col-lg-6" style="padding: 0 5px 0 5px;">
				<div class="panel panel-default">
					<div class="panel-heading"
						style="background: #64C2FF; padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
						<div class="row">
							<div class="col-xs-8 col-lg-8">
								<b style="font-size:16px;">求购信息</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right">
								<a
									href="<%=request.getContextPath()%>/elecBusiness/buyInfo.action"><small>更多>></small></a>
								<!-- <%=request.getContextPath()%>/elecBusiness/supplyInfo.action -->
							</div>
						</div>
					</div>
					<table class="table table-striped">
						<tbody class="">
							<tr height="50px">
								<td width="100px">
									<h4 style="margin-bottom: 5px;">
										<b>求购商品</b>
									</h4>
								</td>
								<td width="280px">
									<h4 style="margin-bottom: 5px;">
										<b>求购描述</b>
									</h4>
								</td>
								<td>
									<h4 style="margin-bottom: 5px;">
										<b>求购量</b>
									</h4>
								</td>
							</tr>
							<c:if test="${!empty page_buy.result}">
								<c:forEach items="${page_buy.result}" var="prodbuy"
									varStatus="stat" begin="0" end="4">
									<tr height="70px">
										<td><a
											href="<%=request.getContextPath()%>/infoExchange/buydetail.action?id=${prodbuy.id}&buyerid=${prodbuy.user.user_id}">
												<h4 style="margin-bottom: 5px;">
													<p>${prodbuy.pbName}</p>
												</h4>
										</a></td>
										<td>
											<h4 style="margin-bottom: 5px;">
												<p>${prodbuy.pbContent}</p>
											</h4>
										</td>
										<td>
											<h4 style="margin-bottom: 5px;">
												<p>${fn:replace(prodbuy.pbNum, ',' , '')}</p>
											</h4>
										</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty page_buy.result}">没有数据</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading" style="background: #F5FAF7">
					<b style="font-size:16px; color:#267300;">名优产品</b>
				</div>
				<div class="panel-body" style="padding: 10px;">
					<div class="rwo">
						<div class="col=xs-12 col-lg-12" style="padding: 0;">
							<div id="carousel-example-captions" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="item active">
										<!--第一组图片-->
										<div class="row" style="padding: 0 15px 0 20px;">
											<!-- 添加了名优产品的显示，以下 -->
											<c:if test="${!empty page_hprod.result}">
												<c:forEach items="${page_hprod.result}" var="hprod"
													varStatus="stat" begin="0" end="5">
													<!--第一张图片-->
													<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
														<div class="panel"
															style="padding: 0; margin: 5px 0 5px 0;">
															<div class="subfeature">
																<div class="thumbnail" style="margin: 0;">
																	<a
																		href="<%=request.getContextPath()%>/town/classfy.action?id=${hprod.id}&type=${hprod.type}&pid=${hprod.pid}">
																		<c:if test="${empty hprod.image}">
																			<img
																				src="<%=request.getContextPath()%>/theme/image/product006.jpg"
																				alt="cow-head-barbacoa" class="post-image" />
																		</c:if> <c:if test="${!empty hprod.image}">
																			<img
																				src="<%=request.getContextPath() %>${hprod.image}"
																				alt="cow-head-barbacoa" class="post-image"
																				style="width: 160px; height: 160px;" />
																		</c:if>
																		<p class="text-center" style="margin: 5px;">${hprod.pname}</p>
																	</a>
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
											<!--第一组图片-->
											<c:if test="${!empty page_hprod.result}">
												<c:forEach items="${page_hprod.result}" var="hprod"
													varStatus="stat" begin="6" end="11">
													<!--第一张图片-->
													<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
														<div class="panel"
															style="padding: 0; margin: 5px 0 5px 0;">
															<div class="subfeature">
																<div class="thumbnail" style="margin: 0;">
																	<a
																		href="<%=request.getContextPath()%>/town/classfy.action?id=${hprod.id}&type=${hprod.type}&pid=${hprod.pid}">
																		<c:if test="${empty hprod.image}">
																			<img
																				src="<%=request.getContextPath()%>/theme/image/product006.jpg"
																				alt="cow-head-barbacoa" class="post-image" />
																		</c:if> <c:if test="${!empty hprod.image}">
																			<img
																				src="<%=request.getContextPath() %>${hprod.image}"
																				alt="cow-head-barbacoa" class="post-image"
																				style="width: 160px; height: 160px;" />
																		</c:if>
																		<p class="text-center" style="margin: 5px;">${hprod.pname}</p>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</c:if>
											<!-- 添加了名优产品的显示，以上 -->
										</div>
									</div>
								</div>
								<a class="left carousel-control" style="width: 30px"
									href="#carousel-example-captions" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left" style="left: 5px;"></span>
								</a> <a class="right carousel-control" style="width: 30px"
									href="#carousel-example-captions" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right" style="right: 5px;"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>