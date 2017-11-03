<%@page import="com.google.gxp.compiler.alerts.Alert"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>

<title>名优产品</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/theme/css/cityinfo.css"
	rel="stylesheet" />
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
			<div class="col-xs-3 col-lg-3" style="padding: 0 5px 0 0;">
				<div class="panel panel-default panel-my">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-8 col-lg-8 text-left color_withe">
								<b class="fs15 lh30">专业镇</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right color_withe">
								<a class="fs10 lh30 pr10"
									href="<%=request.getContextPath()%>/town/featureproduct.action">更多</a>
							</div>
						</div>
					</div>
					<div class="panel-body my-panel-body" style="height: 410px;overflow: scroll;overflow-x:hidden;">
						<div class="list-group mylist">

							<c:if test="${empty townlist}">无数据</c:if>
							<c:if test="${!empty townlist}">
								<c:forEach items="${townlist }" var="town" varStatus="stat">
									<!-- 选择城市 -->
									<tr>
										<td><a
											href="<%=request.getContextPath()%>/town/featureproduct.action?tid=${town.id}"
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
			<div class="col-xs-9 col-lg-9">
				<div class="panel panel-default">
					<div class="panel-body panel-pad listBox"
						style="height: 426px; width: 600px">
						<div class="row">
							<c:if test="${!empty page_hprod.result}">
								<c:forEach items="${page_hprod.result}" var="hprod"
									varStatus="stat">
									<div class="col-xs-4 col-lg-4 col-rightpad"
										style="width: 142px; height: 180px; padding: 5px 5px 5px 15px">
										<div class="thumbnail mythum">
											<a
												href="<%=request.getContextPath()%>/town/classfy.action?id=${hprod.id}&type=${hprod.type}&pid=${hprod.pid}">
												<img src="<%=request.getContextPath()%>${hprod.image}"
												alt="名优产品" style="width: 132px; height: 100px;"></img>
											</a>
											<div class="caption">
												<p class="p-pad">${hprod.pname}</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
						<div class="page">
							<div class="pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page_hprod.result}">${hprod_controltabel}</c:if></td>
									</tr>
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