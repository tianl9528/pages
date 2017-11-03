<%@page import="com.google.gxp.compiler.alerts.Alert"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<meta charset="utf-8">

	<title>专业镇风采>>专业镇介绍</title>
	<link href="<%=request.getContextPath()%>/theme/css/cityinfo.css"
		rel="stylesheet">
		<link rel="stylesheet"
			href="<%=request.getContextPath()%>/theme/css/zTree/zTreeStyle/zTreeStyle.css">
			<link rel="stylesheet"
				href="<%=request.getContextPath()%>/theme/fusionCharts/Contents/Style.css"
				type="text/css" />
			<script language="JavaScript"
				src="<%=request.getContextPath()%>/theme/fusionCharts/JSClass/FusionCharts.js"></script>
			<script src="<%=request.getContextPath()%>/theme/jsjs/jquery.js"></script>
			<script src="<%=request.getContextPath()%>/theme/jsjs/bootstrap.js"></script>
			<script
				src="<%=request.getContextPath()%>/theme/js/jquery.ztree.core-3.5.js"></script>
			<!-- smartMap JS start -->
			<script type="text/javascript"
				src="<%=request.getContextPath()%>/theme/js/swfobject.js"></script>

			<script type="text/javascript"
				src="http://api.map.baidu.com/api?v=1.5&ak=67yNFIA4UFag8bMGHR4ynWit"></script>
			<script type="text/javascript">

			swfobject.registerObject("smartmap", "9.0.0", "<%=request.getContextPath()%>/theme/smartmap/expressInstall.swf");
			swfobject.addLoadEvent(swfLoad_completed);
			var swf;
			var currentLyrID;
            var locationPointer;
            var tempTownName; 
            var chart = new FusionCharts("<%=request.getContextPath()%>/theme/fusionCharts/FCF_Column3D.swf", "ChartId", "700", "440");

			function swfLoad_completed(){
				//swf=swfobject.getObjectById("smartmap");
				//swf.setMapExtent(12207437.982922, 2298748.771610, 13058209.828298, 2939736.152297,102113);谷歌坐标范围，广东省
			}
			function init()
			{  //当smartmap目录下没有configure.xml文件的时候会自动调用本函数。
				var data = $("#townlist").val();
				swf=swfobject.getObjectById("smartmap");
				swf.setMapExtent(109.6,20.1,117.4,25,4326);  //经纬度范围
				currentLyrID=swf.addSWFMap('<%=request.getContextPath()%>/theme/smartmap/maps/440000.swf');
				swf.swfMapRandomRender(currentLyrID,'default');
				swf.createPictureSymble("http://static.yihaodou.com/icon_data/2012/09/10/1347254044504d771c075a1_128.png",15,15);
				locationPointer=swf.createPointLayer(data,"y","x");
				swf.showSWFMapShpInfo(1);
			} 
			 
			function showMessageOnMap(){
				//var swf = swfobject.getObjectById("smartmap");
				if (swf) {
					swf.showMessage("网页信息"); // e.g. an external interface call
				}else
				{
					alert("获取地图控件错误，或者网页还没加载完毕，请检查地图控件swf的id");
				}
			}

		<!-- smartMap JS end -->
		<!-- zTree start-->
		var setting = {
			data: {
				simpleData: {
					enable: true
				}
			}
		};
	
		$(document).ready(function(){
            var setting = {
                    data: {
                        simpleData: {
                            enable: true
                        }
                    },
                    callback:{
                        onClick:zTreeOnClick
                    }
                };
            function zTreeOnClick(event, treeId, treeNode){
                //alert(treeId + "," + treeNode.name);
                var tid = treeNode.id;
                var townName = treeNode.name;
                var parentNode = treeNode.getParentNode();
                var parentName = parentNode.name;
                var positionData;
                if(tid){
                    $.ajax({
                        url:'<%=request.getContextPath()%>'+'/town/towndetail.action?id='+treeNode.id,
                        type:'POST',
                        success:function(data){
                            $("#addContent").html(data);
                        }
                    });
                    $.ajax({
                        url:'<%=request.getContextPath()%>'+'/datalist.action?sqlStr=select * from town where id = '+treeNode.id,
                        type:'POST',
                        success:function(data){
                        	 if(parentName == "茂名市"){
                                 if(tempTownName!=parentName){
                                     tempTownName = parentName;
               
                                     swf.removeLayer(currentLyrID);
                                     swf.setMapExtent(113.00,22.25,113.38,25.0,4326);  //经纬度范围
                                     currentLyrID = swf.addSWFMap('<%=request.getContextPath()%>/theme/smartmap/maps/440900.swf');
                                     swf.swfMapRandomRender(currentLyrID,'default');
                                    // alert(positionData);
                                 } 
                                 swf.zoomToPoint(treeNode.lon,treeNode.lat);
                             }else if(parentName == "河源市"){
                                 if(tempTownName!=parentName){
                                     tempTownName = parentName;
                                     swf.removeLayer(currentLyrID);
                                     swf.setMapExtent(113.62,22.74,118.42,23.14,4326);  //经纬度范围
                                     currentLyrID = swf.addSWFMap('<%=request.getContextPath()%>/theme/smartmap/maps/441600.swf');
                                     swf.swfMapRandomRender(currentLyrID,'default');
                                 } 
                                 swf.zoomToPoint(treeNode.lon,treeNode.lat);
                             }else if(tempTownName!="others"){
                                 tempTownName = "others";
                                 swf.removeLayer(currentLyrID);
                                 currentLyrID = swf.addSWFMap('<%=request.getContextPath()%>/theme/smartmap/maps/440000.swf');
                                 swf.swfMapRandomRender(currentLyrID,'default');
                                 swf.zoomToPoint(treeNode.lon,treeNode.lat);
                             }
                        	 //alert(data);
                        	 swf.removeLayer(locationPointer);
             				swf.createPictureSymble("http://static.yihaodou.com/icon_data/2012/09/10/1347254044504d771c075a1_128.png",15,15);
            				locationPointer=swf.createPointLayer(data,"LONGITUDE","LATITUDE");

             				//locationPointer=swf.createPointLayer("<item y='110.94' x='21.72'/>","y","x"); 
                        }
                    });
                    $("#chart").css("display","none"); 

                    //alert(treeNode.name);
                    //swf.removeLayer(p);
                    //swf.zoomToPoint(110.36,20.4);
                }else{
                	$("#chart").css("display",""); 
                	 $("#addContent").html("");
                	 chart.setDataXML($("#stt").val());
                     chart.render("chart"); 
                    var pNode = treeNode.getParentNode();
                }                  

            }
            $.fn.zTree.init($("#town"), setting, <%=request.getAttribute("temp")%>);
            ztree = $.fn.zTree.getZTreeObj("town");
            var tId = "town_170";
            nodes = ztree.getNodeByTId(tId);
            ztree.expandNode(nodes, true, null, null, true);
          
        }); 
		</SCRIPT>
			<!-- zTree end -->
</head>
<body>
	<input type="hidden" id="townlist" value="${townbuffer}" />
	<input type="hidden" id="stt" value="${stt}" />
	<div style="padding: 20px 20px 0 20px;">
		<div class="row">
			<!--第二行-->
			<div class="col-xs-3 col-lg-3" style="padding: 0 5px 0 0;">
				<div class="panel panel-default panel-my" style="height: 420px;overflow: scroll;overflow-x:hidden;">
					<div class="panel-heading bgDeepBlue">
						<div class="row">
							<div class="col-xs-8 col-lg-8 lh30 fs15 color_withe myFont15" >专业镇介绍
							</div>
						</div>
					</div>
					<div id="city">
						<!--专业镇-->
						<tbody>
							<c:if test="${empty townlist}">无数据</c:if>
							<c:if test="${!empty townlist}">
								<c:forEach items="${townlist }" var="town" varStatus="stat">
									<!-- 选择城市 -->
									<tr>
										<td><a
											href="<%=request.getContextPath()%>/town/townintro.action?id=${town.id}"
											class="list-group-item mytitem" id="${town.id}" style="font-size: 20px;">${town.tname }</a>
											</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</div>
				</div>
				<!-- <div class="panel-body my-panel-body">
					<div class="zTreeDemoBackground left">
						<ul id="town" class="ztree"></ul>
					</div>
				</div> -->
			</div>
			<div class="col-xs-9 col-lg-9">
				<div style="width: 700px; height: 400px; margin: 10px 10px 10px 0px"
					id="allmap"></div>
				<script type="text/javascript">
					    var map = new BMap.Map("allmap");    
					//    var point = new BMap.Point(116.384, 39.987);  // 需要标注的位置的经纬度  
					    var point = new BMap.Point(<%=request.getAttribute("longitude")%>, <%=request.getAttribute("latitude")%>);  // 需要标注的位置的经纬度
					    map.centerAndZoom(point, 15);  // 中心位置和缩放倍数
					    map.enableScrollWheelZoom();   // 添加滚动轴
					    map.addControl(new BMap.NavigationControl());   // 添加左上角的标尺工具
					    map.addControl(new BMap.ScaleControl());    
					    map.addControl(new BMap.OverviewMapControl());    
					    map.addControl(new BMap.MapTypeControl());    
					    map.setCurrentCity("<%=request.getAttribute("tcity")%>"); 
					    var opts = {    
					         width : 200,     // 信息窗口宽度    
					        height: 20,     // 信息窗口高度    
					         title : "<%=request.getAttribute("tname")%>"  // 信息窗口标题   
					    }    
					    var infoWindow = new BMap.InfoWindow("", opts);  // 创建信息窗口对象    
					    map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口 
					    var marker = new BMap.Marker(point);        // 创建标注,即地图上的小红点    
					    map.addOverlay(marker);                             
					</script>
			</div>
			<div id="addContent">
				<div class="col-xs-12 col-lg-12" style="float: right;">
					<div class="panel panel-default" style="height: 550px">
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6 col-lg-6">
									<dl>
										<dt>
											<h4>
												<b>基本概况</b>
											</h4>
										</dt>
										<dd>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<div style="overflow-y: auto; width: 345px; height: 290px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${town.intro }</div>
										</dd>
									</dl>
								</div>
								<div class="col-xs-6 col-lg-6">
									<img src="<%=request.getContextPath()%>/theme/${town.image}"
										alt="专业镇的图片" class="img-thumbnail cityimg">
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-lg-12">
									<dl style="margin-bottom: 10px;">
										<dt>
											<h4>
												<b>特色产业</b>
											</h4>
										</dt>
										<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											${town.featuredomain }</dd>
									</dl>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-2 col-lg-2">
									<a
										href="<%=request.getContextPath()%>/town/featureproduct.action"><span
										class="bottom-span"><b>名优产品</b></span></a>
								</div>
								<div class="col-xs-2 col-lg-2">
									<a
										href="<%=request.getContextPath()%>/town/featurecompany.action?townid=${town.id}"><span
										class="bottom-span"><b>龙头企业</b></span></a>
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