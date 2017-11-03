<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="sunit.util.grasp.InfoGraspUtil"%>
<%
	InfoGraspUtil grasp = new InfoGraspUtil("http://www.agri.gov.cn/");
	String pifa = "";
	try {
		pifa = grasp.PFSCGrasp();
		pifa = pifa.replace("width=\"550\"", "width=\"480\"");
		pifa = pifa.replace("height=\"250\"", "height=\"210\"");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>市场信息</title>
<meta name="description" content="Creating Modal Window with Bootstrap">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/theme/css/marketinfo.css"
	rel="stylesheet" type="text/css" />
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
    <style type="text/css">
        .panel {
            background-color: rgba(200, 235, 240, 0.61);
        }
    </style>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row" style="padding: 0 0 0 10px">
			<!--批发市场、市场动态-->
			<div class="col-xs-8 col-lg-8" style="padding: 0;">
				<!--批发市场-->
				<div class="col-xs-12 col-lg-12" style="padding: 0;">
					<!--每日农产品价格-->
					<div class="panel panel-default" style="border-top: none">
						<%--<div class="panel-heading"--%>
							<%--style="background: #A8CBF2; padding: 10px 5px 10px 10px; font-size: 20px; color: white;">--%>
							<%--<b>批发市场</b>--%>
						<%--</div>--%>

                        <div class="wp100" style="height: 40px;">
                            <div class="blueBar1 fl lh30 myFont15  textCenter color_withe">
                                批发市场
                            </div>
                            <div class="blueBar2 w539 fl"></div>
                            <div class="blueBar3 fl"></div>
                        </div>
						<div class="panel-body" style="padding: 0 15px 0 15px;">
							<div class="row">
								<div class="col-xs-8 col-lg-8" style="padding: 0 0 0 10px;">
									<%=pifa%>
								</div>
								<div class="col-xs-4 col-lg-4" style="padding: 0 0px 0 60px;">
									<a
										href="http://jgsb.agri.gov.cn/controller?SERVICE_ID=REGISTRY_P_AUDIT_MARKET_PRICE_JGHQ_AVGPRICE_SEARCH_SERVICE&recordperpage=20&newsearch=true&login_result_sign=nologin"
										target="_blank"><img
										src="<%=request.getContextPath()%>/theme/image/marketinfo001.jpg"
										" style="width: 150px; height: 180px;" alt="农产品图片"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-lg-4" style="padding: 0 10px 0 10px;">
				<!--市场动态-->
				<div class="panel panel-default">
					<div class="panel-heading color_withe myFont15">市场动态</div>
					<div class="panel-body" style="padding: 2px 15px 0 15px">
						<c:if test="${!empty page_market.result}">
							<c:forEach items="${page_market.result}" var="article"
								varStatus="stat" begin="0" end="5">
								<a href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"
									target="_blank"><p class="text-left">${article.atitle }</p></a>
							</c:forEach>
						</c:if>
						<a href="<%=request.getContextPath()%>/infoservices/article.action?searchInput=shichangdongtai"><p class="text-right">更多>></p></a>
					</div>
				</div>
			</div>
		</div>
		<!--第一行-->
		<div class="row" style="padding: 0 0 0 10px">
			<!--供求一通站、价格行情-->
			<div class="col-xs-8 col-lg-8" style="padding: 0;">
				<div class="panel panel-default">
					<div class="bgDeepBlue panel-heading "
						style="padding: 5px 5px 5px 10px; font-size: 20px; ">
						<div>
							<form action="search.action" method="post" class="color_withe "
								enctype="multipart/form-data">
								<b class="myFont15">供求一通站</b>&nbsp;&nbsp; <span style="color: rgb(190, 80, 10);">
									|&nbsp;&nbsp;<a
									href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1">我要买</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
									href="<%=request.getContextPath()%>/elecBusiness/buyInfo.action">我要卖</a>&nbsp;&nbsp;|
								</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>信息查询</b> <input
									type="text" class=" input-sm" style="width: 130px;"
									placeholder="关键字" name="searchinput"> <select
									class=" input-sm rightleg" name="searchtype">
									<option select="selected" value="buy">需求</option>
									<option value="sale">供应</option>
								</select>
								<button type="submit" class="btn btn-success "
									style="padding: 3px 5px 3px 5px;">
									<b>搜索</b>
								</button>
							</form>
						</div>
					</div>
					<div class="panel-body" style="padding: 0 15px 0 15px;">
						<div class="row">
							<div class="col-xs-4 col-lg-4" style="padding: 10px 0 0 10px;">
								<!--产品图片-->
								<div class="thumbnail">
									<img
										src="<%=request.getContextPath()%>/theme/image/marketinfo002.jpg"
										" style="width: 200px; height: 200px;" alt="农产品图片">
									<div class="caption">
										<div class="row">
											<div class="col-xs-12 col-lg-12"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-lg-4" style="padding: 10px 0 0 10px;">
								<!--供求产品-->
								<ul class="text-left">
									<c:if test="${!empty page_supp.result}">
										<c:forEach items="${page_supp.result}" var="prosupp"
											varStatus="stat" begin="0" end="11">
											<a
												href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
												<li>[供应]${prosupp.spName}</li>
											</a>
										</c:forEach>
									</c:if>
								</ul>
							</div>
							<div class="col-xs-4 col-lg-4" style="padding: 10px 0 0 10px;">
								<!--需求产品-->
								<ul class="text-left">
									<c:if test="${!empty page_buy.result}">
										<c:forEach items="${page_buy.result}" var="prodbuy"
											varStatus="stat" begin="0" end="11">
											<a
												href="<%=request.getContextPath()%>/infoExchange/buydetail.action?id=${prodbuy.id}&buyerid=${prodbuy.user.user_id}">
												<li>[求购]${prodbuy.pbName}</li>
											</a>
										</c:forEach>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-4 col-lg-4" style="padding: 0 10px 0 10px;">
				<div class="panel panel-default">
					<div class="panel-heading myFont15">价格行情</div>
					<div class="panel-body" style="padding: 2px 15px 0 15px">
						<c:if test="${!empty page_price.result}">
							<c:forEach items="${page_price.result}" var="article"
								varStatus="stat">
								<a href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${article.id}"
									target="_blank"><p class="text-left">${article.atitle }</p></a>
							</c:forEach>
						</c:if> <a
							href="<%=request.getContextPath()%>/infoservices/article.action?searchInput=jiagehangqing"><p class="text-right">更多>></p></a>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading"
						style=" padding-bottom: 0px;">
						<ul class="nav nav-tabs nav-justified">
							<li class="active"><a href="#transprov" data-toggle="tab" class="myFont15 color_withe">物流供应</a></li>
							<li><a href="#transneed" data-toggle="tab" class="myFont15 color_withe">物流需求</a></li>
						</ul>
					</div>
					<div class="panel-body" style="padding: 2px 15px 0 15px">
						<div class="tab-content">
							<div class="tab-pane active" id="transprov">
								<ul style="padding-left: 5px;">
									<c:forEach items="${page_logSupp.result}" var="logSupp"
										varStatus="stat" begin="0" end="1">
										<li><a
											href="<%=request.getContextPath()%>/infoExchange/logSuppDetail.action?id=${logSupp.id}"><p
													class="text-left">${logSupp.explanation}</p></a></li>
									</c:forEach>
								</ul>
								<!-- <a href="#"><p class="text-right">更多>></p></a> -->
							</div>
							<div class="tab-pane" id="transneed">
								<ul style="padding-left: 5px;">
									<c:forEach items="${page_logdemd.result}" var="logDemd"
										varStatus="stat" begin="0" end="1">
										<li><a
											href="<%=request.getContextPath()%>/infoExchange/logDemdDetail.action?id=${logDemd.id}"><p
													class="text-left">${logDemd.require}</p></a></li>
									</c:forEach>
								</ul>
								<!-- <a href="#"><p class="text-right">更多>></p></a> -->
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--第二行-->
		<div class="row" style="padding: 0 0 0 10px">
			<!--第三行、名优产品、农产品相册-->
			<div class="panel panel-default" style="border-top: none">
                <div class="wp100" style="height: 40px;">
                    <div class="blueBar1 fl lh30 myFont15  textCenter color_withe">
                        名优产品
                    </div>
                    <div class="blueBar2 w861 fl"></div>
                    <div class="blueBar3 fl"></div>
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
		<!--第三行-->
	</div>
</body>
</html>