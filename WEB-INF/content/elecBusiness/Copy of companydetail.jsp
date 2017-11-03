<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>名优企业>>名优企业介绍</title>
<link href="<%=request.getContextPath()%>/theme/css/cityinfo.css"
	rel="stylesheet">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/appjs/gmap3/gmap3.js"></script>
<style>
/*
body {
	text-align: center;
}
*/
.gmap3 {
	margin: 20px auto;
	border: 1px dashed #C0C0C0;
	width: 315px;
	height: 315px;
}
</style>
<style type="text/css">
body,html,#allmap {
	width: 100%;
	height: 100%;
	overflow: hidden;
	margin: 0;
	font-family: "微软雅黑";
}
</style>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=1.5&ak=67yNFIA4UFag8bMGHR4ynWit"></script>


<script type="text/javascript">
	$(function() {
		var lat = $('#lat').val();
		var lon = $('#lon').val();
		$("#test")
				.gmap3(
						{
							marker : {
								latLng : [ lat, lon ],
								options : {
									draggable : true
								},
								events : {
									dragend : function(marker) {
										$(this)
												.gmap3(
														{
															getaddress : {
																latLng : marker
																		.getPosition(),
																callback : function(
																		results) {
																	var map = $(
																			this)
																			.gmap3(
																					"get"), infowindow = $(
																			this)
																			.gmap3(
																					{
																						get : "infowindow"
																					}), content = results
																			&& results[1] ? results
																			&& results[1].formatted_address
																			: "no address";
																	if (infowindow) {
																		infowindow
																				.open(
																						map,
																						marker);
																		infowindow
																				.setContent(content);
																	} else {
																		$(this)
																				.gmap3(
																						{
																							infowindow : {
																								anchor : marker,
																								options : {
																									content : content
																								}
																							}
																						});
																	}
																}
															}
														});
									}
								}
							},
							map : {
								options : {
									zoom : 10
								}
							}
						});
	});
</script>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row">
			<div class="col-xs-3 col-lg-3 col-padding">
				<div class="row">
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading">
								<b>公司介绍</b>
							</div>
							<div class="panel-body">
								<ul class="list-unstyled mar-ul">
									<li>诚信档案</li>
									<li>联系方式</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading">
								<b>检测服务</b>
							</div>
							<div class="panel-body">
								<ul class="list-unstyled mar-ul">
									<li><b>联系人：</b>王宁</li>
									<li><b>电话：</b>020-12345678</li>
									<li><b>手机：</b>159112345678</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading">
								<b>荣誉资质</b>
							</div>
							<div class="panel-body">
								<ul class="list-unstyled mar-ul">
									<li><b>县一级企业</b></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading">
								<b>友情链接</b>
							</div>
							<div class="panel-body">
								<ul class="list-unstyled mar-ul">
									<li><a href="#">茂名市农业局</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-9 col-lg-9">
				<div class="row">
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading">
								<b>公司介绍</b>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-6 col-lg-6 " style="text-align: left;">${company.introduction}</div>
									<div class="col-xs-6 col-lg-6">
										<div class="row">
											<a href="#" class="thumbnail"> <img
												data-src="holder.js/100%x180"
												src="<%=request.getContextPath() %>${company.companyimage}"
												alt="产品图片">
											</a>
										</div>
										<!--  <div id="test" class="gmap3"></div>-->
										<div id="allmap" class="row" style="height: 200px;width: 300px"></div>
										<script type="text/javascript">
											// 百度地图API功能
											var map = new BMap.Map("allmap"); // 创建Map实例
											var lon="${company.lon}";
											var lat="${company.lat}";
											alert(lon+lat);
											map.centerAndZoom(new BMap.Point(
													116.404, 39.915), 11); // 初始化地图,设置中心点坐标和地图级别
											map
													.addControl(new BMap.MapTypeControl()); //添加地图类型控件
											map.setCurrentCity("北京"); // 设置地图显示的城市 此项是必须设置的
										</script>
										<!--地图 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading">
								<b>公司档案</b>
							</div>
							<div class="panel-body">
								<table class="table mytable">
									<tbody>
										<tr>
											<td class="td-width"><b>公司名称：</b></td>
											<td>${company.companyname}</td>
											<td class="td-width"><b>公司类型：</b></td>
											<td>${company.assortment}</td>
										</tr>
										<tr>
											<td><b>所在地：</b></td>
											<td>${company.dataLoc.fullname}</td>
											<td><b>所属专业镇：</b></td>
											<td>${company.location}</td>
										</tr>
										<tr>
											<td><b>注册资本：</b></td>
											<td>${company.registercapital}</td>
											<td><b>公司网址：</b></td>
											<td><a href="${company.companysite}"> 访问该企业网站</a></td>
										</tr>
										<tr>
											<td><b>公司地址：</b></td>
											<td>${company.address}</td>

											<input type="hidden" id="lat" value='${company.lat}' />
											<input type="hidden" id="lon" value='${company.lon}' />
										</tr>



										<tr>
											<td><b>经营模式：</b></td>
											<td>${company.nature}</td>
											<td><b>经营范围：</b></td>
											<td>${company.scope}</td>
										</tr>
										<tr>
											<td><b>企业分类：</b></td>
											<td><b>${company.assortment}</b></td>
											<td><a
												href="<%=request.getContextPath()%>/elecBusiness/featuredproduct.action?cid=${company.id}">企业特色产品</a>
											</td>
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
</body>
</html>





