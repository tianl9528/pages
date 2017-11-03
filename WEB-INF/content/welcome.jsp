<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="sunit.util.grasp.InfoGraspUtil"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>首页</title>
<meta name="description" content="Creating Modal Window with Bootstrap">

<link href="<%=request.getContextPath()%>/theme/css/base/jquery.ui.all.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/theme/css/home.css" rel="stylesheet">
<!-- 
<link href="<%=request.getContextPath()%>/theme/css/intere-dialog.css" rel="stylesheet">
 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/recommen/move.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/recommen/cookie.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/recommen/recommen.js"></script>

<style type="text/css">
img {
	border: 0;
}
</style>

<style>
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button {
	width: 100px;
	height: 30px;
}
.text {
	width: 200px;
}
</style>

<!--  
<script type="text/javascript">
	$(document).ready(function(){
	
		//对话框参数设置
		$("#intere-dialog").dialog({
			autoOpen:false,
			height:300,
			width:600,
			modal:true,
			buttons:{
				"添加":function(){					
					$.ajax({
						async:false,
						type:"post",
						url:"intere.action?aIntere="+aIntere,
						dataType:"json",
						success:function(data){
							alert(data);
						},
						error:function(XmlHttpRequest,textStatus, errorThrown){
							alert(XmlHttpRequest.responseText);
						}
					});
					
					$(this).dialog("close");
				},
				"取消":function(){
					$(this).dialog("close");
				}
			},
			close:function(){
			}
		});				
		
		var aIntere=new Array();
		
		$(".tab-item").each(function(){
			
			$(this).toggle(function(){
				$(this).css("background-color","#bdebb0");
				aIntere.push($(this).find("span").text());				
			}, function(){
				$(this).css("background-color","#f0ffea");
				aIntere.splice($.inArray($(this).find("span").text(),aIntere),1);
			});		
		});
						
		var orole = "${user_role}";
		
		if(orole == "游客"){
			//alert(orole);
			$("#intere-dialog").dialog("open");
		}
	});
</script>
-->

<script type="text/javascript">
function consult(thisobj){
	var expertid = $(thisobj).closest(".row").find(".expid").val();
	var role = "${user_role}";
	
	if(role == "游客"||role=="待审核用户"){
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			height: 180,
			width: 300,
			modal: true,
			buttons: {
				"登录": function() {							
					window.location.href="/gdzyzmm/login.action";
				},
				"取消": function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				
			}
		});
		
		$( "#dialog-form" ).dialog( "open" );
		
	}
	else{
		//alert(expertid);
		window.location.href="/gdzyzmm/infoExchange/consult.action?expertid="+expertid;	
	}
}
</script>
<script type="text/javascript">
function AutoScroll(obj){
		$(obj).animate({
			marginTop:"-39px"
		},1000,function(){
			$(this).css({marginTop:"0px"}).find("tr:first").appendTo(this);
			});
	}
	$(document).ready(function() {
				var myar = setInterval('AutoScroll("#announcement")', 1500)
							$("#announcement").hover(function() { clearInterval(myar); },
	function() { myar = setInterval('AutoScroll("#announcement")', 1500) });
			});

</script>
<%-- <script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/swfobject.js"></script>
<script type="text/javascript">

			swfobject.registerObject("smartmap", "9.0.0", "<%=request.getContextPath()%>/theme/smartmap/expressInstall.swf");
			swfobject.addLoadEvent(swfLoad_completed);
			var swf;
			var currentLyrID;	
			function swfLoad_completed(){
				//swf=swfobject.getObjectById("smartmap");
				//swf.setMapExtent(12207437.982922, 2298748.771610, 13058209.828298, 2939736.152297,102113);谷歌坐标范围，广东省
			}
			function init()
			{  //当smartmap目录下没有configure.xml文件的时候会自动调用本函数。
				var data = $("#townlist").val();
				swf=swfobject.getObjectById("smartmap");
				swf.setMapExtent(110.6,20.1,123.4,24,4326);  //经纬度范围
				currentLyrID=swf.addSWFMap('<%=request.getContextPath()%>
	/theme/smartmap/maps/440000.swf');
		swf.swfMapRandomRender(currentLyrID, 'default');
		swf
				.createPictureSymble(
						"http://static.yihaodou.com/icon_data/2012/09/10/1347254044504d771c075a1_128.png",
						15, 15);
		swf.createPointLayer(data, "y", "x");
		swf.showSWFMapShpInfo(1);
	}

	function showMessageOnMap() {
		//var swf = swfobject.getObjectById("smartmap");
		if (swf) {
			swf.showMessage("网页信息"); // e.g. an external interface call
		} else {
			alert("获取地图控件错误，或者网页还没加载完毕，请检查地图控件swf的id");
		}
	}
</script> --%>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row">
			<!--第一行-->
			<div class="col-xs-3 col-lg-3" style="padding: 0 5px 0 5px">
				<div class="panel mypanel" style="height: 515px;overflow:scroll;">
					<div class="panel-heading panel-heading1">
						<ul class="nav nav-tabs nav-justified my-nav-tabs-1">
							<li class="active"><a href="#city" data-toggle="tab"><b class="fs15">专业镇</b></a></li>
							<li><a href="#company" data-toggle="tab"><b class="fs15">名优企业</b></a></li>
						</ul>
					</div>
					<div class="panel-body">
						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="city">
								<!--专业镇-->
								<table class="table1" style="width: 186px">
									<tbody>
										<c:if test="${empty townlist}">无数据</c:if>
										<c:if test="${!empty townlist}">
											<c:forEach items="${townlist }" var="town" varStatus="stat">
											<!-- 选择城市 -->
												<tr>
													<td><a
														href="<%=request.getContextPath()%>/town/townintro.action?id=${town.id}"
														class="list-group-item mytitem">${town.tname }</a></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
							<!--专业镇-->
							<div class="tab-pane" id="company">
								<!--名优企业-->
								<table class="table1">
									<tbody>
										<c:forEach items="${companylist}" var="company" begin="0"
											end="7">
											<tr>
												<td><a
													href="<%=request.getContextPath()%>/elecBusiness/companydetail.action?id=${company.id}"
													class="list-group-item mytitem">${company.companyname }</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!--名优企业-->
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-9 col-lg-9" style="padding: 5px 5px 5px 5px">
				<div style="padding: 10px 10px 10px 10px">
					<div id="picplayer"
						style="position: relative; overflow: hidden; width: 700px; height: 260px; clear: none; border: solid 1px #ccc;">
						there is a pic-player</div>
				</div>
				<script> 
		            var p = $('#picplayer'); 
		            var pics1 = [{url:'<%=request.getContextPath()%>/theme/image/homepage/bohezhen.png',link:'<%=request.getContextPath()%>/town/townintro.action?id=221',time:5000},{url:'<%=request.getContextPath()%>/theme/image/homepage/dianbaizhen.png',link:'<%=request.getContextPath()%>/town/townintro.action?id=218',time:4000},{url:'<%=request.getContextPath()%>/theme/image/homepage/genzizhen.png',link:'<%=request.getContextPath()%>/town/townintro.action?id=224',time:6000},{url:'<%=request.getContextPath()%>/theme/image/homepage/gongguanzhen.png',link:'<%=request.getContextPath()%>/town/townintro.action?id=220',time:6000},{url:'<%=request.getContextPath()%>/theme/image/homepage/sishuizhen.png',link:'<%=request.getContextPath()%>/town/townintro.action?id=222',time:6000},{url:'<%=request.getContextPath()%>/theme/image/homepage/xiejizhen.png',link:'<%=request.getContextPath()%>/town/townintro.action?id=223',time:6000}]; 
		            initPicPlayer(pics1,p.css('width').split('px')[0],p.css('height').split('px')[0]); 
		            function initPicPlayer(pics,w,h) 
		            { 
		                //选中的图片 
		                var selectedItem; 
		                //选中的按钮 
		                var selectedBtn; 
		                //自动播放的id 
		                var playID; 
		                //选中图片的索引 
		                var selectedIndex; 
		                //容器 
		                var p = $('#picplayer'); 
		                p.text(''); 
		                p.append('<div id="piccontent"></div>'); 
		                var c = $('#piccontent'); 
		                for(var i=0;i<pics.length;i++) 
		                { 
		                    //添加图片到容器中 
		                    c.append('<a href="'+pics[i].link+'" target="_blank"><img id="picitem'+i+'" style="display: none;z-index:'+i+'" src="'+pics[i].url+'" /></a>'); 
		                } 
		                //按钮容器，绝对定位在右下角 
		                p.append('<div id="picbtnHolder" style="position:absolute;top:'+(h-25)+'px;width:'+w+'px;height:20px;z-index:10000;"></div>'); 
		                // 
		                var btnHolder = $('#picbtnHolder'); 
		                btnHolder.append('<div id="picbtns" style="float:right; padding-right:1px;"></div>'); 
		                var btns = $('#picbtns'); 
		                // 
		                for(var i=0;i<pics.length;i++) 
		                { 
		                    //增加图片对应的按钮 
		                    btns.append('<span id="picbtn'+i+'" style="cursor:pointer; border:solid 1px #ccc;background-color:#eee; display:inline-block;"> '+(i+1)+' </span> '); 
		                    $('#picbtn'+i).data('index',i); 
		                    $('#picbtn'+i).click( 
		                        function(event) 
		                        { 
		                            if(selectedItem.attr('src') == $('#picitem'+$(this).data('index')).attr('src')) 
		                            { 
		                                return; 
		                            } 
		                            setSelectedItem($(this).data('index')); 
		                        } 
		                    ); 
		                } 
		                btns.append(' '); 
		                /// 
		                setSelectedItem(0); 
		                //显示指定的图片index 
		                function setSelectedItem(index) 
		                { 
		                    selectedIndex = index; 
		                    clearInterval(playID); 
		                    //alert(index); 
		                    if(selectedItem)selectedItem.fadeOut('fast'); 
		                    selectedItem = $('#picitem'+index); 
		                    selectedItem.fadeIn('slow'); 
		                    // 
		                    if(selectedBtn) 
		                    { 
		                        selectedBtn.css('backgroundColor','#eee'); 
		                        selectedBtn.css('color','#000'); 
		                    } 
		                    selectedBtn = $('#picbtn'+index); 
		                    selectedBtn.css('backgroundColor','#000'); 
		                    selectedBtn.css('color','#fff'); 
		                    //自动播放 
		                    playID = setInterval(function() 
		                    { 
		                        var index = selectedIndex+1; 
		                        if(index > pics.length-1)index=0; 
		                        setSelectedItem(index); 
		                    },pics[index].time); 
		                } 
		            } 
        		</script>
				<div>
					<div class="col-xs-6 col-lg-6" style="padding: 0 20px 0 20px">
						<div class="row">
							<div class="panel mypanel"
								style="margin-bottom: 2px; height: 230px">
								<!-- 
								<div class="panel-heading"
									style="background:url(<%=request.getContextPath()%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
									 -->
								<div class="panel-heading color_withe bgDeepBlue"
									style=" padding: 2px 0; height: 30px">
									<P class="col-lg-10 col-xs-10 color_withe  fs15 lh30 myFont15" style="text-align: left;">
										最新资讯</P>
									<a href="<%=request.getContextPath()%>/push/list/nyywlist.action"
										class="col-lg-2 col-xs-2 lh30 fs10">更多</a>
								</div>
                                <div class="clear"></div>
								<div class="panel-body"
									style="height: 177px; padding: 0 15px; overflow: hidden">
									<table class="table table-hover" id="announcement">
										<c:if test="${!empty page_nyyw.result}">
											<c:forEach items="${page_nyyw.result}" var="yaowen"
												varStatus="stat">
												<tr>
													<td><a
														href="<%=request.getContextPath() %>/push/aidetail.action?id=${yaowen.id}"
														target="_blank">${yaowen.aititle}</a></td>
												</tr>
											</c:forEach>
										</c:if>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-lg-6" style="padding: 0 20px 0 20px">
						<div class="row">
							<div class="panel mypanel" style="height: 230px">
								<div class="panel-heading panel-heading4">
									<div class="row">
										<div class="col-xs-6 col-lg-6 padding-right  divide1">
											<div class="col-xs-7 col-lg-7 text-left color_withe  fs15 lh30 myFont15">求购</div>
											<div class="col-xs-5 col-lg-5 text-right color_withe fs10">
												<a class="lh30" href="<%=request.getContextPath()%>/elecBusiness/buyInfo.action?pageid=1">更多</a>
											</div>
										</div>
										<div class="col-xs-6 col-lg-6 padding-left">
											<div class="col-xs-7 col-lg-7 text-left color_withe  fs15 lh30 myFont15">供应</div>
											<div class="col-xs-5 col-lg-5 text-right color_withe fs10">
												<a class="lh30" href="<%=request.getContextPath()%>/elecBusiness/supplyInfo.action?pageid=1">更多</a>
											</div>
										</div>
									</div>
								</div>
								<div class="panel-body panel-body-2">
									<div class="row">
										<div class="col-xs-6 col-lg-6 padding-right divide2">
											<ul class="my-ul">
												<c:forEach items="${buylist}" var="prodbuy" varStatus="stat"
													begin="0" end="7">
													<a
														href="<%=request.getContextPath()%>/infoExchange/buydetail.action?id=${prodbuy.id}&buyerid=${prodbuy.user.user_id}">
														<li>[求购]${prodbuy.pbName}</li>
													</a>
												</c:forEach>
											</ul>
										</div>
										<div class="col-xs-6 col-lg-6 padding-left">
											<ul class="my-ul">
												<c:forEach items="${supplylist}" var="prosupp"
													varStatus="stat" begin="0" end="7">
													<a
														href="<%=request.getContextPath()%>/infoExchange/supplydetail.action?id=${prosupp.id}&supplyerid=${prosupp.user.user_id}">
														<li>[供应]${prosupp.spName}</li>
													</a>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--第一行-->
		<div class="row">
			<!--第二行-->
			<div class="col-xs-5 col-lg-5" style="padding: 0 5px 0 5px">
				<div class="panel mypanel " style="height: 350px">
                    <div class="wp100" style="height: 40px;">
                        <div class="yellowBar1 fl  textCenter color_withe">
                            <a class="fs15  lh30 myFont15" href="<%=request.getContextPath()%>/infoExchange/expertConsult.action">专家服务</a>
                        </div>
                        <div class="yellowBar2 w293 fl"></div>
                        <div class="yellowBar3 fl"></div>
                    </div>
					<div class="panel-body panel-body-2">
						<div id="dialog-form" title="提示" style="display: none;">
							<p>您当前的身份是${user_role }，权限不足</p>
						</div>
						<!-- 
						<div id="intere-dialog" title="你感兴趣的" style="display: none;">
							<a href="#" class="tab-item"><span>蔬菜</span></a>
							<a href="#" class="tab-item"><span>水果</span></a>
							<a href="#" class="tab-item"><span>水产</span></a>							
						</div>
						 -->
						<c:if test="${!empty expertlist}">
							<c:forEach items="${expertlist}" var="expert" varStatus="stat"
								begin="0" end="1">
								<div class="row">
									<div class="col-xs-3 col-lg-3 padding-right">
										<!--专家头像-->
										<div class="row">
											<div class="col-xs-12 col-lg-12">
												<img src="<%=request.getContextPath()%>${expert.images_url}"
													onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
													class="img-rounded img-box my-thumbnail" />
											</div>
										</div>
										<div class="row">
											<div class="col-xs-12 col-lg-12 text-center">
												<center>
													<input type="hidden" class="expid"
														value="${expert.user_id }" />
													<button type="submit" class="btn btn-primary a-consult"
														onclick="consult(this);">我要咨询</button>
													<center>
											</div>
										</div>
									</div>
									<div class="col-xs-9 col-lg-9 padding-left">
										<table>
											<tbody>
												<tr>
													<td colspan="2" class="td-name"><b>${expert.user_name}</b></td>
												</tr>
												<tr>
													<td class="td-content"><b>专业领域：</b></td>
													<td>${expert.professor.research_one}</td>
												</tr>
												<tr>
													<td><b>工作单位：</b></td>
													<td>${expert.professor.workplace}</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<hr>
							</c:forEach>
						</c:if>
						<c:if test="${empty expertlist}">没有数据
                		</c:if>
					</div>
				</div>
			</div>
			<div class="col-xs-7 col-lg-7" style="padding: 0 5px 0 5px">
				<div class="panel mypanel">
                    <div class="wp100" style="height: 40px;">
                        <div class="yellowBar1 fl  textCenter color_withe">
                            <a class="fs15  lh30 myFont15" href="<%=request.getContextPath()%>/infoservices/article.action?searchInput=tongzhitongbao">通知通报</a>
                        </div>
                        <div class="yellowBar2 w455 fl"></div>
                        <div class="yellowBar3 fl"></div>
                    </div>
					<div class="panel-body panel-body-2" style="height: 308px">
						<table style="width: 570px;">
							<tbody>
								<c:if test="${!empty page_notice.result}">
									<c:forEach items="${page_notice.result}" var="notice"
										varStatus="stat">
										<tr class="td-message2">
											<td style="margin: 10px 0 10px 0"><a
												href="<%=request.getContextPath() %>/infoservices/articlePage.action?articleID=${notice.id}"
												target="_blank">${fn:substring(notice.atitle,0,30) }...</a></td>
											<td><fmt:formatDate value="${notice.adate }"></fmt:formatDate></td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--第四行-->
		<div class="row">
			<!--第五行、名优产品-->
			<div class="col-xs-12 col-lg-12" style="padding: 0 5px 0 5px">
				<div class="panel mypanel">
                    <div class="wp100" style="height: 40px;">
                        <div class="blueBar1 fl lh30 fs15  textCenter color_withe myFont15">
                            名优产品
                        </div>
                        <div class="blueBar2 w861 fl"></div>
                        <div class="blueBar3 fl"></div>
                    </div>
					<div class="panel-body panel-body-10">
						<div class="row">
							<div class="col-xs-12 col-lg-12">
								<div id="carousel-example-captions" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<!--第一组图片-->
											<div class="row" style="padding: 0 15px 0 20px;">
												<!-- 添加了名优产品的显示，以下 -->
												<c:if test="${!empty hproductlist}">
													<c:forEach items="${hproductlist}" var="hprod"
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
												<c:if test="${!empty hproductlist}">
													<c:forEach items="${hproductlist}" var="hprod"
														varStatus="stat" begin="6" end="11">
														<!--第一张图片-->
														<div class="col-xs-2 col-lg-2" style="padding: 0 5px 0 0;">
															<div class="panel"
																style="padding: 0; margin: 5px 0 5px 0;">
																<div class="subfeature">
																	<div class="thumbnail" style="margin: 0;">
																		<a
																			href="<%=request.getContextPath()%>/town/classfy.action?id=${hprod.pid}&type=${hprod.type}">
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
		<!--第五行-->
		<div class="row">
			<!--第六行、推荐网站-->
			<div class="panel">
				<div class="panel-heading panel-heading5">
					<div class="market">
						<b class="fs15">推荐网站</b>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-3 col-lg-3" style="padding-left: 0">
							<a href="http://www.agri.gov.cn/ " target="_blank"><img
								style="width: 230px; height: 100px"
								src="<%=request.getContextPath()%>/theme/image/homepage/nyxxw.jpg"
								class="img-box"></a>
						</div>
						<div class="col-xs-3 col-lg-3" style="padding-left: 5px;">
							<a href="http://www.potic.org.cn/" target="_blank"><img
								style="width: 230px; height: 100px"
								src="<%=request.getContextPath()%>/theme/image/homepage/mxcplogo.png"
								class="img-box"></a>
						</div>
						<div class="col-xs-3 col-lg-3" style="padding-left: 5px;">
							<a href="http://www.icgd.cn/" target="_blank"><img
								style="width: 230px; height: 100px"
								src="<%=request.getContextPath()%>/theme/image/homepage/mxcplogo.jpg"
								class="img-box"></a>
						</div>
						<div class="col-xs-3 col-lg-3" style="padding-left: 5px;">
							<a href="http://www.gdagri.gov.cn/" target="_blank"><img
								style="width: 230px; height: 100px"
								src="<%=request.getContextPath()%>/theme/image/homepage/gdnyt.jpg"
								class="img-box"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--第六行-->
	</div>
	
	<!-- 推荐 -->
	<div class="float_layer" id="miaov_float_layer" style="z-index:10001;">
		<h2>
			<b>今日推荐</b>
			<a id="btn_min" href="javascript:;" class="min"></a>
			<a id="btn_close" href="javascript:;" class="close"></a>
		</h2>
		<div class="content2">
			<div class="wrap2">
				<ul>									
					<c:if test="${!empty aiList}">
						<c:forEach items="${aiList}" var="ai" varStatus="stat" begin="0" end="5">
							<li>
								[${ai.aitype}]&nbsp;&nbsp;<a class="n1" href="<%=request.getContextPath()%>/push/aidetail.action?id=${ai.id}" target="_blank">${fn:substring(ai.aititle,0,20) }...</a>
							</li>
						</c:forEach>
					</c:if>
				</ul>
				<div style="float:right;font-size:12px;"><a href="<%=request.getContextPath()%>/push/airecomm.action" target="_blank">查看更多</a></div>
			</div>
		</div>
	</div>	
</body>
</html>