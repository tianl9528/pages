<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String townid = (String) request.getParameter("townid") == null
			? " "
			: (String) request.getParameter("townid");
%>
<html lang="en">
<head>
<meta charset="utf-8">
	<title>龙头企业</title>
	<meta name="description" content="Creating Modal Window with Bootstrap">
		<link href="css/bootstrap.css" rel="stylesheet">
			<link href="<%=request.getContextPath()%>/theme/css/cityinfo.css"
				rel="stylesheet">
				<script src="js/jquery.js"></script>
				<script src="js/bootstrap.js"></script>
				<style>
.contentBox .page {
	background-image: none;
}
</style>
</head>
<body>
	<div style="padding: 20px 20px 0 20px;">
		<div class="row">
			<!--第二行-->
			<div class="col-xs-4 col-lg-4" style="padding: 0 5px 0 0;">
				<div class="panel panel-default panel-my">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-8 col-lg-8 color_withe">
								<b class="fs15 lh30">专业镇介绍</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right color_withe">
								<a class="fs10 lh30 pr10"
									href="<%=request.getContextPath()%>/town/featurecompany.action">更多</a>
							</div>
						</div>
					</div>
					<div class="panel-body my-panel-body" style="height: 560px;overflow: scroll;">
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
			<div class="col-xs-8 col-lg-8">
				<div class="panel panel-default listBox" style="width: 620px">
					<div class="panel-body " style="height: 530px">
						<c:if test="${!empty page_company.result}">
							<c:forEach items="${page_company.result}" var="company"
								varStatus="stat">
								<div class="row row-mar">
									<div class="col-xs-12 col-lg-12">
										<div class="media">
											<a class="pull-left"
												href="<%=request.getContextPath()%>/elecBusiness/companydetail.action?id=${company.id}">
												<img class="media-object img-box"
												style="width: 90px; height: 70px;"
												src="<%=request.getContextPath()%>${company.companyimage}"
												alt="...">
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													<b>${company.companyname}</b>
												</h4>
												<div>
													<b>所属专业镇：</b>${company.location}
													
												</div>
												<div>
													<b>主要产品：</b>${company.nature}</div>
											</div>
										</div>
									</div>
								</div>
								<hr></hr>
							</c:forEach>
						</c:if>
						<div class="row row-mar">
							<div class="col-xs-12 col-lg-12">
								<p class="text-right"></p>
							</div>
						</div>
					</div>
					<div class="page">
						<div class="pageBox">
							<table border="0" cellpadding="0" cellspacing="0"
								style="margin-left: auto; margin-right: auto">
								<tr>
									<td><c:if test="${!empty page_company.result}">${controltable_company}</c:if></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>