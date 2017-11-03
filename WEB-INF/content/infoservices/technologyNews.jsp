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
<title>信息服务 >> 科技信息</title>
<script>
	$(document).ready(function() {
		$('.tect li >a ').click(function(e) {
			e.preventDefault();
			var lis = $('.tect li');
			lis.removeClass('active');
		});

		/*$('.panel-title > a ').click(function(e)
		 {
		 e.preventDefault();
		 var submenu=$(this).parent().parent().next();
		 var panel=submenu.parent();
		 var panels=$('#sidebar div.panel-body');
		 var panels_parents=$('#sidebar div.panel');
		
		 if(submenu.parent().hasClass('open'))
		 {
		 submenu.slideUp();
		 panel.removeClass('open');
		 }
		 else
		 {
		 panels.slideUp();
		 submenu.slideDown();
		 panels_parents.removeClass('open');
		 panel.addClass('open');
		 }
		
		 })*/
	});
</script>

<style type="text/css">
.nav-pills>li>a {
	border-radius: 0;
	text-align: left;
	width: 200px;
}

.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus
	{
	color: #ffffff;
	background-color: #A7DA27;
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

.tab-content .panel-body {
	height: 437px;
}

.panel a {
	color: #4e5b2c;
	font-weight: bold;
	cursor: pointer;
}

.panel li {
	list-style-type: none;
}
</style>

</head>
<body>
	<div style="max-width: 1007px; min-width: 820px; margin: 15px 7px">

		<form
			action="<%=request.getContextPath()%>/infoservices/techNewsSearch.action"
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

		<div class="col-lg-4 col-xs-4" style="padding-left: 0">
			<div id="sidebar" class="tect">
				<div class="panel panel-default  open" style="margin-bottom: 2px">
					<div class="panel-heading myFont15">
							使用技术
					</div>
					<div class="panel-body" style="padding: 7px">
						<div style="margin-bottom: 7px; float: left">
							<div class="col-lg-6 col-xs-6" style="padding: 7px;">
								<img src="<%=base_root%>/theme/images/infoservices/1.jpg"
									style="width: 150px; box-shadow: 0 1px 10px rgba(0, 0, 0, 0.7);" />
							</div>
							<div class="col-lg-6 col-xs-6" style="padding-left: 30px;">
								<h5 style="font-weight: bold;">水果技术</h5>
								<ul style="padding: 0;">
									<li class="active"><a href="#tab1" data-toggle="tab">存储技术</a></li>
									<li><a href="#tab2" data-toggle="tab">病害控制技术</a></li>
									<li><a href="#tab3" data-toggle="tab">种植技术</a></li>
								</ul>
							</div>
						</div>


						<div style="margin-bottom: 7px; float: left">
							<div class="col-lg-6 col-xs-6" style="padding: 7px;">
								<img src="<%=base_root%>/theme/images/infoservices/2.jpg"
									style="width: 150px; box-shadow: 0 1px 10px rgba(0, 0, 0, 0.7);" />
							</div>
							<div class="col-lg-6 col-xs-6" style="padding-left: 30px;">
								<h5 style="font-weight: bold;">蔬菜技术</h5>
								<ul style="padding: 0;">
									<li><a href="#tab4" data-toggle="tab">优良种源信息</a></li>
									<li><a href="#tab5" data-toggle="tab">病害控制技术</a></li>
									<li><a href="#tab6" data-toggle="tab">种植技术</a></li>
								</ul>
							</div>
						</div>

						<div style="margin-bottom: 7px; float: left">
							<div class="col-lg-6 col-xs-6" style="padding: 7px;">
								<img src="<%=base_root%>/theme/images/infoservices/3.jpg"
									style="width: 150px; box-shadow: 0 1px 10px rgba(0, 0, 0, 0.7);" />
							</div>
							<div class="col-lg-6 col-xs-6" style="padding-left: 30px;">
								<h5 style="font-weight: bold;">水产产业</h5>
								<ul style="padding-left: 0; width: 140px">
									<li><a href="#tab7" data-toggle="tab">加工技术</a></li>
									<li><a href="#tab8" data-toggle="tab">种植培育技术</a></li>
									<li><a href="#tab9" data-toggle="tab">水产饲料技术</a></li>
									<li><a href="#tab10" data-toggle="tab">水产运输技术</a></li>
									<li><a href="#tab11" data-toggle="tab">水产存储技术</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-8 col-xs-8" style="padding: 0">
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<!--存储技术-->
					<div class="panel panel-default">
						<!-- 
						<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
						 -->
						<div class="panel-heading myFont15"
							style="color: white;height: 30px">
							存储技术
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty sgList}">
									<c:forEach var="sgl" items="${sgList}">
										<c:if test="${sgl.istypeid eq 8}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${sgl.iid}"
													target="_blank" target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${sgl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${sgl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${empty sgList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab1-->
				<div class="tab-pane" id="tab2">
					<!--病害控制技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">病害控制技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty sgList}">
									<c:forEach var="sgl" items="${sgList}">
										<c:if test="${sgl.istypeid eq 3}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${sgl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${sgl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${sgl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${empty sgList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab2-->
				<div class="tab-pane" id="tab3">
					<!--种植技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">种植技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty sgList}">
									<c:forEach var="sgl" items="${sgList}">
										<c:if test="${sgl.istypeid eq 4}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${sgl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${sgl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${sgl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${empty sgList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab3-->
				<div class="tab-pane" id="tab4">
					<!--优良种源信息-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">优良种源信息</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scList}">
									<c:forEach var="scl" items="${scList}">
										<c:if test="${scl.istypeid eq 1}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${empty scList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab4-->
				<div class="tab-pane" id="tab5">
					<!--病害控制技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">病害控制技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scList}">
									<c:forEach var="scl" items="${scList}">
										<c:if test="${scl.istypeid eq 3}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab5-->

				<div class="tab-pane" id="tab6">
					<!--种植技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">种植技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scList}">
									<c:forEach var="scl" items="${scList}">
										<c:if test="${scl.istypeid eq 4}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab6-->

				<div class="tab-pane" id="tab7">
					<!--加工技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">加工技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scpList}">
									<c:forEach var="scpl" items="${scpList}">
										<c:if test="${scpl.istypeid eq 7}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scpl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scpl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scpl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scpList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab7-->

				<div class="tab-pane" id="tab8">
					<!--种植培育技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">种植培育技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">

								<c:if test="${!empty scpList}">
									<c:forEach var="scpl" items="${scpList}">
										<c:if test="${scpl.istypeid eq 2}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scpl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scpl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scpl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scpList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab8-->

				<div class="tab-pane" id="tab9">
					<!--水产饲料-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">水产饲料</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scpList}">
									<c:forEach var="scpl" items="${scpList}">
										<c:if test="${scpl.istypeid eq 5}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scpl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scpl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scpl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scpList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab9-->

				<div class="tab-pane" id="tab10">
					<!--水产运输技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">水产运输技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scpList}">
									<c:forEach var="scpl" items="${scpList}">
										<c:if test="${scpl.istypeid eq 9}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scpl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scpl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scpl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scpList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab10-->

				<div class="tab-pane" id="tab11">
					<!--水产存储技术-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="color: white;height: 30px">
							<h4 class="panel-title col-lg-10 col-xs-10 myFont15"
								style="font-weight: bold">水产存储技术</h4>
						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${!empty scpList}">
									<c:forEach var="scpl" items="${scpList}">
										<c:if test="${scpl.istypeid eq 8}">
											<tr>
												<td class="col-lg-10 col-xs-10"><a
													href="techinfodetail.action?techNewsID=${scpl.iid}"
													target="_blank"
													style="cursor: pointer; text-decoration: none">
														<p>${scpl.ititle}</p>
												</a></td>
												<td class="col-lg-2 col-xs-2">
													<div>
														<p class="text-muted pull-right">
															<fmt:formatDate value='${scpl.idate }'
																pattern='yyyy-MM-dd'></fmt:formatDate>
														</p>
													</div>
												</td>
											</tr>
										</c:if>

									</c:forEach>
								</c:if>
								<c:if test="${empty scpList}">
									<table width="100%" border="0" cellpadding="0" cellspacing="0"
										class="tTitle">
										<tr>
											<td>没有数据！！！</td>
										</tr>
									</table>
								</c:if>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab11-->

			</div>

		</div>
	</div>
</body>
</html>