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
			<div class="col-xs-4 col-lg-4" style="padding: 0 5px 0 0;">
				<div class="panel panel-default panel-my">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-8 col-lg-8 text-left">
								<b>专业镇企业</b>
							</div>
							<div class="col-xs-4 col-lg-4 text-right">
								<a
									href="<%=request.getContextPath()%>/town/featurecompany.action">更多企业>></a>
							</div>
						</div>
					</div>
					<div class="panel-body my-panel-body" style="height: 410px">
						<div class="list-group mylist">
							<c:if test="${!empty page.result}">
								<c:forEach items="${page.result}" var="company" varStatus="stat"begin="0" end="6"> 
								<div style="padding: 0 0 0 10px"><a href="<%=request.getContextPath()%>/elecBusiness/featuredproduct.action?cid=${company.id}">${company.companyname }</a>
								</div>
								<hr>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-8 col-lg-8">
				<div class="panel panel-default">
					<div class="panel-body panel-pad listBox"
						style="height: 426px; width: 600px">
						<div class="row">
							<c:if test="${!empty page_fprod.result}">
								<c:forEach items="${page_fprod.result}" var="fprod"
									varStatus="stat">
									<div class="col-xs-4 col-lg-4 col-rightpad"
										style="width: 142px; height: 180px; padding: 5px 5px 5px 15px">
										<div class="thumbnail mythum">
											<a
												href="<%=request.getContextPath()%>/elecBusiness/fproddetails.action?fid=${fprod.id}">
												<img src="<%=request.getContextPath()%>${fprod.photosUrl}"
												alt="名优产品" style="width: 132px; height: 100px;"></img>
												<div class="caption">
													<p class="p-pad">${fprod.prodname}</p>
												</div>
											</a>
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
										<td><c:if test="${!empty page_fprod.result}">${controlTable_fprod}</c:if></td>
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