<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String base_root = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息服务 >> 最新资讯</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/slider.js"></script>
<script>
	function AutoScroll(obj) {
		$(obj).animate({
			marginTop : "-39px"
		}, 2000, function() {
			$(this).css({
				marginTop : "0px"
			}).find("tr:first").appendTo(this);
		});
	}
	$(document).ready(function() {
		var myar = setInterval('AutoScroll("#announcement")', 4000)
		$("#announcement").hover(function() {
			clearInterval(myar);
		}, function() {
			myar = setInterval('AutoScroll("#announcement")', 4000)
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {

		new slider({
			id : 'slider'
		});

	})
</script>


<style type="text/css">

/*企业动态*/
.silder_out {
	height: 355px;
	position: relative;
	overflow: hidden;
	width: 640px;
}

.time {
	display: inline;
	float: right;
	text-align: right;
	color: #999;
}

.slider {
	position: absolute;
	width: 640px;
	height: inherit;
	overflow: hidden;
	margin-top: -2px;
}

.slider li {
	border-top: 1px solid #e4e4e4;
	min-height: 45px;
	_height: 45px;
	width: 640px;
	padding-top: 8px;
	padding-bottom: 3px;
}

.slider img {
	float: left;
	padding: 0px;
}

.panel-body>.table>tbody>tr>td {
	border-top: 0px;
	border-bottom: 1px solid #BEEC94;
}

.btn-success {
	background-color: #90B82A;
}

.btn-success:hover,btn-success:focus {
	background-color: #86AA29;
}

.panel a {
	color: #4e5b2c;
	font-weight: bold;
	cursor: pointer;
}

.panel li {
	list-style-type: none;
	margin-top: 7px;
}

#announcement>tbody>tr {
	height: 38px;
}

* {
	margin: 0;
	padding: 0;
	font-size: 12px;
}
/*body{background:none;}*/
input,button,select,textarea {
	outline: none;
}

ul,li,dl,ol {
	list-style: none;
}

a {
	color: #666;
	text-decoration: none;
}

.list_lh {
	height: 300px;
	overflow: hidden;
}

.list_lh li {
	padding: 3px;
}

.list_lh li.lieven {
	background: #F0F2F3;
}

.list_lh li p {
	height: 24px;
	line-height: 24px;
}

.list_lh li p a {
	float: left;
}

.list_lh li p em {
	width: 80px;
	font: normal 12px/24px Arial;
	color: #FF3300;
	float: right;
	display: inline-block;
}

.list_lh li p span {
	color: #999;
	float: right;
}

.list_lh li p a.btn_lh {
	background: #28BD19;
	height: 17px;
	line-height: 17px;
	color: #fff;
	padding: 0 5px;
	margin-top: 4px;
	display: inline-block;
	float: right;
}

.btn_lh:hover {
	color: #fff;
	text-decoration: none;
}
</style>

</head>
<body>
	<div style="max-width: 1007px; min-width: 820px; margin: 15px">
		<form
			action="<%=request.getContextPath()%>/infoservices/articleSearch.action"
			method="post" enctype="multipart/form-data">
			<div
				class="input-group col-lg-5 col-xs-5 col-lg-offset-7 col-xs-offset-7"
				style="margin-bottom: 15px">
				<input name="searchInput" type="searchInput" class="form-control">
				<span class="input-group-btn">
					<button type="submit" class="btn btn-success"
						style="width: 88px; margin-right: 5px">搜索</button>
				</span>
			</div>
		</form>
		<div class="col-lg-3 col-xs-3"
			style="padding-left: 0; padding-right: 5px;">
			<div class="panel panel-default"
				style="padding-bottom: 20px; margin-bottom: 2px;height: 970px">

				<!-- 
				<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
				 -->
				<div class="panel-heading"
					style=" height: 30px">
						<b class="col-lg-10 col-xs-10 myFont15"> 科技新闻 </b> <a
							href="<%=request.getContextPath()%>/train/tecttrain.action"
							target="_blank" class="col-lg-1 col-xs-1 lh30" style="color: #ffffff;line-height: 30px">>></a>
				</div>
				<div class="panel-body">
					<div
						style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">实用技术</div>
					<ul style="padding-left: 7px; margin-bottom: 15px;">
						<c:if test="${empty page_practicetech.result}">
							没有数据！！
						</c:if>
						<c:if test="${!empty page_practicetech.result}">
							<c:forEach items="${page_practicetech.result}" var="practice"
								varStatus="stat" begin="0" end="7">
								<li><a href="articlePage.action?articleID=${practice.id}"
									target="_blank">${practice.atitle }</a></li>
							</c:forEach>
						</c:if>
					</ul>
					<div
						style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">种植业技术</div>
					<ul style="padding-left: 7px; margin-bottom: 15px;">
						<c:if test="${empty page_planttech.result}">
							没有数据！！
						</c:if>
						<c:if test="${!empty page_planttech.result}">
							<c:forEach items="${page_planttech.result}" var="plant"
								varStatus="stat" begin="0" end="4">
								<li><a href="articlePage.action?articleID=${plant.id}"
									target="_blank">${plant.atitle }</a></li>
							</c:forEach>
						</c:if>
					</ul>
					<div
						style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">畜牧业技术</div>
					<ul style="padding-left: 7px; margin-bottom: 15px;">
						<c:if test="${empty page_animaltech.result}">
							没有数据！！
						</c:if>
						<c:if test="${!empty page_animaltech.result}">
							<c:forEach items="${page_animaltech.result}" var="animal"
								varStatus="stat"  begin="0" end="4">
								<li><a href="articlePage.action?articleID=${animal.id}"
									target="_blank">${animal.atitle }</a></li>
							</c:forEach>
						</c:if>
					</ul>
					<div
						style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">水产业技术</div>
					<ul style="padding-left: 7px; margin-bottom: 15px;">
						<c:if test="${empty page_aquatech.result}">
							没有数据！！
						</c:if>
						<c:if test="${!empty page_aquatech.result}">
							<c:forEach items="${page_aquatech.result}" var="aqua"
								varStatus="stat"  begin="0" end="4">
								<li><a href="articlePage.action?articleID=${aqua.id}"
									target="_blank">${aqua.atitle }</a></li>
							</c:forEach>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-9 col-xs-9" style="padding: 0;">
			<div class="col-lg-8 col-xs-8"
				style="padding-left: 0; padding-right: 5px;">
				<div class="panel panel-default" style="margin-bottom: 2px">
					<!-- 
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
				 -->
					<div class="panel-heading"
						style="height: 30px">
                        <b class="col-lg-11 col-xs-11 myFont15"> 农业要闻 </b> <a
                            href="<%=request.getContextPath()%>/infoservices/agrinews.action"
                            target="_blank" class="col-lg-1 col-xs-1"
                            style="color: #ffffff;line-height: 30px">>></a>
					</div>
					<div class="panel-body"
						style="height: 420px; padding: 0 15px; overflow: hidden">
						<table class="table table-hover" id="announcement">


							<c:if test="${!empty page_yaowen.result}">
								<c:forEach items="${page_yaowen.result}" var="yaowen"
									varStatus="stat">
									<tr>
										<td><a href="articlePage.action?articleID=${yaowen.id}"
											target="_blank">${yaowen.atitle }</a></td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-xs-4"
				style="padding-left: 0; padding-right: 5px;">
				<div class="panel panel-default"
					style="padding-bottom: 20px; margin-bottom: 2px;">
					<!-- 
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
					 -->
					<div class="panel-heading"
						style="color: white; height: 30px">
							<b class="col-lg-10 col-xs-10 myFont15"> 病虫害预报 </b> <a
								href="<%=request.getContextPath()%>/infoservices/forecast.action"
								target="_blank" class="col-lg-1 col-xs-1"
								style="color: #ffffff;line-height: 30px">>></a>
					</div>
					<div class="panel-body" style="padding-bottom: 12px;">
						<div
							style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">蔬菜</div>
						<ul style="padding-left: 7px; margin-bottom: 15px;">
							<c:if test="${!empty page_shucaibingchonghai.result}">
								<c:forEach items="${page_shucaibingchonghai.result}" var="veg"
									varStatus="stat" begin="0" end="2">
									<li><a href="articlePage.action?articleID=${veg.id}"
										target="_blank">${veg.atitle }</a></li>
								</c:forEach>
							</c:if>
						</ul>

						<div
							style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">水产</div>
						<ul style="padding-left: 7px; margin-bottom: 15px;">
							<c:if test="${!empty page_shuichanbingchonghai.result}">
								<c:forEach items="${page_shuichanbingchonghai.result}"
									var="aqua" varStatus="stat" begin="0" end="2">
									<li><a href="articlePage.action?articleID=${aqua.id}"
										target="_blank">${aqua.atitle }</a></li>
								</c:forEach>
							</c:if>
						</ul>

						<div
							style="border-bottom: 4px solid #BEEC94; color: #4e5b2c; font-weight: bold; padding: 0 0 5px 5px">水果</div>
						<ul style="padding-left: 7px; margin-bottom: 15px;">
							<c:if test="${!empty page_shuiguobingchonghai.result}">
								<c:forEach items="${page_shuiguobingchonghai.result}"
									var="fruit" varStatus="stat" begin="0" end="2">
									<li><a href="articlePage.action?articleID=${fruit.id}"
										target="_blank">${fruit.atitle }</a></li>
								</c:forEach>
							</c:if>
						</ul>

					</div>
				</div>
			</div>

			<div class="col-lg-12 col-xs-12"
				style="padding-left: 0; padding-right: 5px">
				<div class="panel panel-default" style="margin-bottom: 2px">
					<!-- 
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
					 -->
					<div class="panel-heading"
						style="olor: white;height: 30px">
							<b class="col-lg-11 col-xs-11 myFont15"> 农业气象 </b> <a
								href="<%=request.getContextPath()%>/infoservices/agrimete.action"
								target="_blank" class="col-lg-1 col-xs-1"
								style="color: #ffffff;line-height: 30px">>></a>
					</div>
					<div class="panel-body" style="padding-bottom: 9px;">
						<table class="table table-hover">

							<c:if test="${!empty page_forecast.result}">
								<c:forEach items="${page_forecast.result}" var="forecast"
									varStatus="stat">
									<tr>
										<td>
											<div class="col-lg-10 col-xs-10">
												<a href="articlePage.action?articleID=${forecast.id}"
													target="_blank">${forecast.atitle }</a>
											</div>
											<div class="col-lg-2 col-xs-2 pull-right">
												<span class="text-muted">${forecast.adate }</span>
											</div>
											<div class="col-lg-10 col-xs-10">
												<span>${forecast.aother }</span>
											</div>
											<div class="col-lg-2 col-xs-2 pull-right">
												<span>&nbsp;</span>
											</div>

											<div class="col-lg-10 col-xs-10">
												<span class="text-muted">来源：${forecast.asource }</span>
											</div>
											<div class="col-lg-2 col-xs-2 pull-right">&nbsp;</div>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-12 col-xs-12"
			style="padding-left: 0; padding-right: 5px;">
			<div class="panel panel-default" style="margin-bottom: 2px">
				<!-- 
					<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;height:45px">
					 -->
				<div class="panel-heading"
					style="color: white;height: 30px">
                    <b class="col-lg-11 col-xs-11 myFont15"> 企业快讯 </b>
				</div>

				<div class="panel-body">

					<div class="silder_out" style="width: 100%">
						<div class="slider_cover" style="width: 100%"></div>
						<ul id="slider" class="slider" style="width: 100%">

							<!-- 企业快讯 -->
							<c:if test="${!empty companynewsList}">
								<c:forEach var="cnl" items="${companynewsList}">
									<li style="width: 100%; margin-bottom: 1px;"><a
										href="javascript:void(0)"> <img
											src="<%=base_root%>${cnl.user.images_url}"
											onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'"
											style="width: 45px; height: 45px; margin: 0 15px 0 0">
									</a> <span class="time"> <fmt:formatDate
												value='${cnl.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>
									</span> <span style="font: 14px 'microsoft yahei', 'simhei';">&nbsp;${cnl.user.company.companyname}
									</span> <span class="content"
										style="display: block; height: 25px; line-height: 14px; width: 800px; margin: 0px 3px 3px 40px; word-break: keep-all; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
											<a href="enterpriseNews.action?articleID=${cnl.id}"
											target="_blank">发布快讯：${cnl.tittle} </a>
									</span></li>
								</c:forEach>
							</c:if>

						</ul>
					</div>
				</div>

			</div>





		</div>

	</div>
	</div>

	</div>
</body>
</html>