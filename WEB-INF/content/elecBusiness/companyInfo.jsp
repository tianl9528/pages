<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>企业名录</title>
<meta name="description" content="Creating Modal Window with Bootstrap">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/theme/css/businesslists.css"
	rel="stylesheet">
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>


</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<form action="companysearchInfo.action" method="post">
			<div class="row" style="padding: 0 5px 0 5px;">
				<!--第一行，信息检索-->
				<div class="col-xs-6 col-lg-6"></div>
				<!--向右偏移-->
				<div class="col-xs-4 col-lg-4">
					<div class="form-group">
						<input name="searchInput" type="text" class="form-control"
							style="padding-left: 35px; background: url(images/search.png) no-repeat center left;"
							placeholder="搜索企业">
					</div>
				</div>
				<div class="col-xs-1 col-lg-1" style="padding: 0;">
					<button type="submit" class="btn btn-success col-sm-10">
						<b>搜索</b>
					</button>
				</div>
			</div>
		</form>
		<!--第一行，搜索-->
		<div class="row">
			<!--第二行-->
			<div class="col-xs-4 col-lg-4" style="padding: 0 5px 0 5px">
				<!--第二行第一列，按专业镇浏览-->
				<div class="panel panel-default">
					<div class="panel-heading" style="padding: 5px 5px 5px 10px;">
						<div class="row">
							<div class="col-xs-8 col-lg-8 myFont15">按专业镇浏览</div>
							<div class="col-xs-4 col-lg-4 color_withe"
								style="text-align: right">
								<a
									href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action"><small
									class="lh30">更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body"
						style="padding: 0 15px 0 0px; height: 470px">
						<!--第一组-->
						<div class="panel-body my-panel-body"
							style="height: 470px; overflow: scroll;">
							<div class="list-group mylist">
								<c:if test="${empty townlist}">无数据</c:if>
								<c:if test="${!empty townlist}">
									<c:forEach items="${townlist }" var="town" varStatus="stat">
										<!-- 选择城市 -->
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/town/featurecompany.action?townid=${town.id}"
												class="list-group-item mytitem" id="${town.id}"
												style="font-size: 20px;">${town.tname }</a> <script
													type="text/javascript">
													/* alert("${townid}"); */
													var townid = "${townid}";
													if (townid == "${town.id}")
														document
																.getElementById("${town.id}").style.color = "red";
												</script></td>
										</tr>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--第二行第一列-->
			<div class="col-xs-8 col-lg-8" style="padding: 0 5px 0 5px">
				<!--第二行第二列，按行业浏览-->
				<div class="panel panel-default">
					<div class="panel-heading" style="padding: 5px 5px 5px 10px;">
						<div class="row">
							<div class="col-xs-10 xol-lg-10 myFont15">按行业浏览</div>
							<div class="col-xs-2 col-lg-2 color_withe"
								style="text-align: right">
								<a
									href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action"><small
									class="lh30">更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body" style="padding: 10px;">
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/company001.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body text-left">
								<h4 class="media-heading">农林牧渔原料</h4>
								<table>
									<tbody>
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=1">新鲜水果</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=2">新鲜蔬菜</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=3">鲜活水产</a></td>
										</tr>
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=4">种子种苗</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=5">新鲜食用菌</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=6">坚果干果</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/company002.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body text-left">
								<h4 class="media-heading">简加工制品</h4>
								<table>
									<tbody>
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=7">米面类</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=8">油脂类</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=9">茶叶类</a></td>
										</tr>
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=10">水产制品类</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=11">蜜制品类</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/company003.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body text-left">
								<h4 class="media-heading">深加工制品</h4>
								<table>
									<tbody>
										<tr>
											<td><a href="#">肉成品</a>|<a href="#">蛋成品</a>|<a href="#">罐头食品</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/company004.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body text-left">
								<h4 class="media-heading">农用物资</h4>
								<table>
									<tbody>
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=12">农业机械</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=13">加工设备</a>|<a
												href="<%=request.getContextPath()%>/elecBusiness/companylistInfo.action?type=14">食品设备</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/company005.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body text-left">
								<h4 class="media-heading">土特产</h4>
								<table>
									<tbody>
										<tr>
											<td><a
												href="<%=request.getContextPath()%>/town/featureproduct.action">名优特产</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--第二行第一列-->
		</div>
		<!--第二行-->
		<div class="row border">
			<div class="col-xs-1 col-lg-1"
				style="padding: 30px 10px 20px 10px; height: 110px; width: 50px; background: #83B149;">
				<span class="col-text"><b>名优企业</b></span>
			</div>
			<div class="col-xs-11 col-lg-11 col-padding" style="width: 900px;">
				<div id="carousel-example-captions" class="carousel slide"
					data-ride="carousel">
					<div class="row" style="padding: 5px 20px 5px 20px;">
						<div class="carousel-inner">
							<div class="item active">
								<!--第一组图片-->
								<div class="row row-padding">
									<!--第一行的企业-->
									<c:if test="${!empty page.result}">
										<c:forEach items="${page.result}" var="company"
											varStatus="stat" begin="0" end="5">
											<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
												<a
													href="<%=request.getContextPath() %>/elecBusiness/companydetail.action?id=${company.id}">
													<c:if test="${empty company}">
														<img
															src="<%=request.getContextPath()%>/theme/image/product006.jpg"
															class="img-thumbnail" />
													</c:if> <c:if test="${!empty company}">
														<img
															src="<%=request.getContextPath()%>${company.companyimage}"
															class="img-thumbnail" style="height: 80px; width: 200px" />
													</c:if>
												</a>
											</div>
										</c:forEach>
									</c:if>
								</div>
							</div>
							<div class="item">
								<!--第一组图片-->
								<div class="row row-padding">
									<!--第一行的企业-->
									<c:if test="${!empty page.result}">
										<c:forEach items="${page.result}" var="company"
											varStatus="stat" begin="6" end="11">
											<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
												<a
													href="<%=request.getContextPath() %>/elecBusiness/companydetail.action?id=${company.id}">
													<c:if test="${empty company}">
														<img
															src="<%=request.getContextPath()%>/theme/image/product006.jpg"
															class="img-thumbnail" />
													</c:if> <c:if test="${!empty company}">
														<img
															src="<%=request.getContextPath()%>${company.companyimage}"
															class="img-thumbnail" style="height: 80px; width: 200px" />
													</c:if>
												</a>
											</div>
										</c:forEach>
									</c:if>
								</div>
							</div>
						</div>
					</div>
					<a class="left carousel-control" style="width: 20px; height: 90px"
						href="#carousel-example-captions" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" style="left: 5px;"></span>
					</a> <a class="right carousel-control"
						style="width: 20px; height: 90px"
						href="#carousel-example-captions" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" style="right: 5px;"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>