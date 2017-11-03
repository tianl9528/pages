<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检测检验 >> 认证与鉴定</title>
<%
	String base_root = request.getContextPath();
%>
<style type="text/css">
.panel-body>div>.table>tbody>tr>td {
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
}
</style>
</head>
<body>
	<div class="row"
		style="max-width: 1007px; min-width: 970px; margin: 15px 3px 0px 5px;">

		<div class="panel panel-default col-lg-12 col-xs-12"
			style="padding: 0;">

			<div class="panel-heading">
				<table class="table" style="margin: 0;">
					<tr>
						<td class="col-xs-11 col-lg-11" style="border-top: 0;">
							<div class="myFont15" style="padding-left: 15px;">
								计量机构
							</div>
						</td>
						<td class="col-xs-1 col-lg-1" style="border-top: 0;"><a
							href="calculate.action"><small>更多>></small></a></td>
					</tr>
				</table>
			</div>
			<div class="panel-body" style="padding: 5px 15px">
				<div class="col-lg-4 col-xs-4">
					<img src="<%=base_root%>/theme/images/detectimg/metering.jpg" />
				</div>
				<div class="col-lg-8 col-xs-8">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${empty page_jiliang.result }">没有数据！！！</c:if>
						<c:if test="${!empty page_jiliang.result }">
							<c:forEach items="${page_jiliang.result }" var="jiliang"
								varStatus="stat" begin="0" end="4">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="instdetail.action?id=${jiliang.id }"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${jiliang.dname }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">${jiliang.dkeyword}</p>
										</div>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
		</div>
		<div class="panel panel-default col-lg-12 col-xs-12"
			style="padding: 0;">
			<div class="panel-heading">
				<table class="table" style="margin: 0;">
					<tr>
						<td class="col-xs-11 col-lg-11" style="border-top: 0;">
							<div class="myFont15" style="padding-left: 15px;">
								认证机构
							</div>
						</td>
						<td class="col-xs-1 col-lg-1" style="border-top: 0;"><a
							href="attestation.action"><small>更多>></small></a></td>
					</tr>
				</table>
			</div>
			<div class="panel-body" style="padding: 5px 15px">
				<div class="col-lg-4 col-xs-4">
					<img src="<%=base_root%>/theme/images/detectimg/certification.jpg" />
				</div>
				<div class="col-lg-8 col-xs-8">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${empty page_renzheng.result }">没有数据！！！</c:if>
						<c:if test="${!empty page_renzheng.result }">
							<c:forEach items="${page_renzheng.result }" var="renzheng"
								varStatus="stat" begin="0" end="4">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="instdetail.action?id=${renzheng.id }"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${renzheng.dname }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">${jiliang.dkeyword}</p>
										</div>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
		</div>
		<div class="panel panel-default col-lg-12 col-xs-12"
			style="padding: 0;">
			<div class="panel-heading">
				<table class="table" style="margin: 0;">
					<tr>
						<td class="col-xs-11 col-lg-11" style="border-top: 0;">
							<div class="myFont15" style="padding-left: 15px;">
								鉴定机构
							</div>
						</td>
						<td class="col-xs-1 col-lg-1" style="border-top: 0;"><a
							href="identify.action"><small>更多>></small></a></td>
					</tr>
				</table>
			</div>
			<div class="panel-body" style="padding: 5px 15px">
				<div class="col-lg-4 col-xs-4">
					<img src="<%=base_root%>/theme/images/detectimg/authentication.jpg" />
				</div>
				<div class="col-lg-8 col-xs-8">
					<table class="table table-hover " style="margin: 0">
						<c:if test="${empty page_jianding.result }">没有数据！！！</c:if>
						<c:if test="${!empty page_jianding.result }">
							<c:forEach items="${page_jianding.result }" var="jianding"
								varStatus="stat" begin="0" end="4">
								<tr>
									<td class="col-lg-10 col-xs-10"><a
										href="instdetail.action?id=${jianding.id }"
										target="_blank" style="cursor: pointer; text-decoration: none">
											<p>${jianding.dname }</p>
									</a></td>
									<td class="col-lg-2 col-xs-2">
										<div>
											<p class="text-muted pull-right">${jiliang.dkeyword}</p>
										</div>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-xs-6"
				style="padding-right: 5px; padding-left: 10px;">
				<center style="margin-bottom: 15px;">
					<a href="http://www.aqsc.gov.cn" target="_blank"><img
						src="<%=base_root%>/theme/images/detectimg/01.jpg"
						style="width: 100%; height: 100px" /></a>
				</center>
			</div>
			<div class="col-lg-6 col-xs-6"
				style="padding-right: 10px; padding-left: 0px;">
				<center style="margin-bottom: 15px;">
					<a href="http://www.greenfood.org.cn/sites/MainSite/"
						target="_blank"><img
						src="<%=base_root%>/theme/images/detectimg/02.jpg"
						style="width: 100%; height: 100px" "/></a>
				</center>
			</div>
		</div>
	</div>
</body>
</html>