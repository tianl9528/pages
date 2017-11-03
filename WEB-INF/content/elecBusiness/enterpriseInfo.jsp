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
<link href="css/businesslists.css" rel="stylesheet">
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>


</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row" style="padding: 0 0 0 10px;">
			<!--第一行，信息检索-->
			<div class="col-xs-6 col-lg-6"></div>
			<!--向右偏移-->
			<div class="col-xs-4 col-lg-4">
				<div class="form-group">
					<input type="text" class="form-control"
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
		<!--第一行，搜索-->
		<div class="row">
			<!--第二行-->
			<div class="col-xs-4 col-lg-4" style="padding: 0 10px 0 10px">
				<!--第二行第一列，按专业镇浏览-->
				<div class="panel panel-default">
					<div class="panel-heading"
						style="background: #99CC00; padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
						<div class="row">
							<div class="col-xs-8 col-lg-8">
								<b>按专业镇浏览</b>
							</div>
							<div class="col-xs-4 col-lg-4">
								<a href="#"><small>更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body" style="padding: 0 15px 0 15px;">
						<!--第一组-->
						<div class="row">
							<!--第1组-->
							<table class="table">
								<tbody>
									<tr>
										<th>林头镇</th>
									</tr>
									<c:if test="${!empty page_latest.result}">
										<c:forEach items="${page_latest.result}" var="enterprise"
											varStatus="stat">
											<c:if test="${ enterprise.tid == '林头镇'}">
												<tr>
													<td><a href="#">${enterprise.ename}</a></td>
													<!-- <td class="text-right">${enterprise.eplace}</td> -->
												</tr>
											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<!--第一组-->
						<div class="row">
							<!--第2组-->
							<table class="table">
								<tbody>
									<tr>
										<th>电城镇</th>
									</tr>
									<c:if test="${!empty page_latest.result}">
										<c:forEach items="${page_latest.result}" var="enterprise"
											varStatus="stat">
											<c:if test="${ enterprise.tid == '电城镇'}">
												<tr>
													<td><a href="#">${enterprise.ename}</a></td>
													<!-- <td class="text-right">${enterprise.eplace}</td> -->
												</tr>
											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<div class="row">
							<!--第3组-->
							<table class="table">
								<tbody>
									<tr>
										<th>XXX</th>
									</tr>
									<c:if test="${!empty page_latest.result}">
										<c:forEach items="${page_latest.result}" var="enterprise"
											varStatus="stat">
											<c:if test="${ enterprise.tid == 'XXX'}">
												<tr>
													<td><a href="#">${enterprise.ename}</a></td>
													<!-- <td class="text-right">${enterprise.eplace}</td> -->
												</tr>
											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<!--第一组-->
					</div>
				</div>
			</div>
			<!--第二行第一列-->
			<div class="col-xs-8 col-lg-8" style="padding: 0 10px 0 10px">
				<!--第二行第二列，按行业浏览-->
				<div class="panel panel-default">
					<div class="panel-heading"
						style="background: #99CC00; padding: 5px 5px 5px 10px; font-size: 20px; color: white;">
						<div class="row">
							<div class="col-xs-10 xol-lg-10">
								<b>按行业浏览</b>
							</div>
							<div class="col-xs-2 col-lg-2">
								<a href="#"><small>更多>></small></a>
							</div>
						</div>
					</div>
					<div class="panel-body" style="padding: 10px;">
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/enterprise001.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body">
								<h4 class="media-heading">农林牧渔原料</h4>
								<table>
									<tbody>
										<tr>
											<td><a href="#">新鲜水果</a>|新鲜蔬菜|新鲜鸡蛋|鲜活水产品|鲜活牲畜|</td>
										</tr>
										<tr>
											<td>种子种苗|园林花卉</td>
										</tr>
										<tr>
											<td>豆类|可可</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/enterprise002.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body">
								<h4 class="media-heading">农林牧渔原料</h4>
								<table>
									<tbody>
										<tr>
											<td>新鲜水果|新鲜蔬菜|新鲜鸡蛋|鲜活水产品|鲜活牲畜|</td>
										</tr>
										<tr>
											<td>种子种苗|园林花卉</td>
										</tr>
										<tr>
											<td>豆类|可可</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/enterprise003.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body">
								<h4 class="media-heading">农林牧渔原料</h4>
								<table>
									<tbody>
										<tr>
											<td>新鲜水果|新鲜蔬菜|新鲜鸡蛋|鲜活水产品|鲜活牲畜|</td>
										</tr>
										<tr>
											<td>种子种苗|园林花卉</td>
										</tr>
										<tr>
											<td>豆类|可可</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="<%=request.getContextPath()%>/theme/image/enterprise004.jpg"
								style="width: 150px;" alt="...">
							</a>
							<div class="media-body">
								<h4 class="media-heading">农林牧渔原料</h4>
								<table>
									<tbody>
										<tr>
											<td>新鲜水果|新鲜蔬菜|新鲜鸡蛋|鲜活水产品|鲜活牲畜|</td>
										</tr>
										<tr>
											<td>种子种苗|园林花卉</td>
										</tr>
										<tr>
											<td>豆类|可可</td>
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
				style="padding: 30px 10px 20px 10px; height: 100px; width: 50px; background: #99CC00;">
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
									
									
									<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
										<img src="images/1.jpg" alt="..." class="img-thumbnail">
									</div>
									
									
									
								</div>
								<div class="row row-padding">
									<!--第二行的企业-->
									
									
									<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
										<img src="images/2.jpg" alt="..." class="img-thumbnail">
									</div>
									


								</div>
							</div>
							<div class="item">
								<!--第一组图片-->
								<div class="row row-padding">
									
									
									
									<!--第一行的企业-->
									<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
										<img src="images/2.jpg" alt="..." class="img-thumbnail">
									</div>
									



								</div>
								<div class="row row-padding">
								
								
								
									<!--第二行的企业-->
									<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
										<img src="images/2.jpg" alt="..." class="img-thumbnail">
									</div>
									
									
								</div>
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
</body>
</html>