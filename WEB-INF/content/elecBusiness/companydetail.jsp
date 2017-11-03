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
<script type="text/javascript" src="<%=request.getContextPath() %>/theme/appjs/gmap3/gmap3.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=1.5&ak=67yNFIA4UFag8bMGHR4ynWit"></script>
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
							<div class="panel-heading myFont15">
								公司介绍
							</div>
							<div class="panel-body">
                                <ul class="list-unstyled mar-ul">
                                    <li><b>公司名称：</b>${company.companyname}</li>
                                    <li><b>公司类型：</b>${company.assortment}</li>
                                    <li><b>所在地：</b>${company.dataLoc.fullname}</li>
                                    <li><b>所属专业镇：</b>${company.location}</li>
                                    <li><b>注册资本：</b>${company.registercapital}</li>
                                    <li><b>公司网址：</b><a href="${company.companysite}" >
                                        访问该企业网站</a></li>
                                    <li><b>公司地址：</b>${company.address}</li>
                                    <li><b>经营模式：</b>${company.nature}</li>
                                    <li><b>经营范围：</b>${company.scope}</li>
                                    <li><b>企业分类：</b>${company.assortment}</li>
                                    <li><b><a href="<%=request.getContextPath()%>/elecBusiness/featuredproduct.action?cid=${company.id}">企业特色产品</a></b></li>
                                </ul>
                                <input type="hidden" id="lat" value='${company.lat}' />
                                <input type="hidden" id="lon" value='${company.lon}' />
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-xs-9 col-lg-9">
				<div class="row">
					<div class="col-xs-12 col-lg-12">
						<div class="panel panel-default panel-my">
							<div class="panel-heading myFont15">
								公司介绍
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-6 col-lg-6 " style="text-align:left;">${company.introduction}</div>
									<div class="col-xs-6 col-lg-6">
										<a href="#" class="thumbnail"> <img
											data-src="holder.js/100%x180" src="<%=request.getContextPath() %>${company.companyimage}" alt="产品图片">
										</a>
										<!--<div id="test" class="gmap3"></div>地图 -->
										<div id="allmap" class="row" style="height: 230px;width: 335px;margin: 0 0 0 0"></div>
										<script type="text/javascript">
											// 百度地图API功能
											var map = new BMap.Map("allmap"); // 创建Map实例
											var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
											var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
											var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮
											var lon="${company.lon}";
											var lat="${company.lat}";
											var scale=14;
											if((!lon&&typeof(lon)!="undefined")||(!lat&&typeof(lat)!="undefined")){
												scale=10;
												map.centerAndZoom("茂名", scale);
											}
											else{
											map.centerAndZoom(new BMap.Point(
													lon, lat), scale); // 初始化地图,设置中心点坐标和地图级别
											map
													.addControl(new BMap.MapTypeControl()); //添加地图类型控件
											}
											map.addControl(top_left_control);        
											map.addControl(top_left_navigation);     
											map.addControl(top_right_navigation);    
										</script>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>





