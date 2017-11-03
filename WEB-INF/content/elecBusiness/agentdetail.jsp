<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>
<title>招商代理>>招商代理详细信息</title>
<style>
	.pageNew {
		float:right;
		width:400px;		
	}
	.reply{
		clear:right;
	}
	.btn-success{
		margin-top:10px;		
		width:60px;
	}
	.btn-default{
		margin-top:10px;
		margin-left:30px;
		width:60px;
		background-color:#CCC;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("a.curPage").mouseover(function(){
			$("a.curPage").css("background-color","#C1E858");
		});
		$("a.curPage").mouseout(function(){
			$("a.curPage").css("background-color","#FFF");
		});
	});
</script>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default">
			<div class="panel-heading"
				style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">				
			</div>
			<div class="panel-body" style="padding: 10px;">
				<div class="col-xs-8 col-lg-8">
					<div class="row"  style="height:220px;">
						<div class="col-xs-6 col-lg-6" style="padding: 0 10px 0 0;">
							<img src="<%=request.getContextPath()%>${invest.inPhotos}"
								alt="..." class="img-thumbnail img-box" onerror="this.src='<%=request.getContextPath()%>/theme/image/default/default.png'">
						</div>
						<div class="col-xs-6 col-lg-6" style="padding: 0 10px 0 0;">
							<table class="table">
								<tbody>
									<tr>
										<td>产品名称</td><td>${invest.inName}</td>
									</tr>
									<tr>
										<td>产品价格</td><td>￥${invest.inPrice}</td>
									</tr>
									<tr>
										<td>产品储量</td><td>${invest.inNum}</td>
									</tr>
									<tr>
										<td>认证信息</td><td>${invest.inCertify}</td>
									</tr>
									<tr>
										<td>质量信息</td><td>${invest.inQuality}</td>
									</tr>
									<tr>
										<td>截止时间</td><td><fmt:formatDate value="${invest.inExpDate}"></fmt:formatDate></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row" style="padding:10px;">
						<table class="table">
							<tbody>
								<tr>
									<td width="30%">生产厂家</td><td width="70%">${invest.inFactory}</td>
								</tr>
								<tr>
									<td>产品描述</td><td>${invest.inContent}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-xs-4 col-lg-4" style="padding: 0;">
					<div class="panel panel-default">
						<c:if test="${invester_role=='个人用户' }">
							<div class="panel-heading">基本信息</div>
							<div class="panel-body" style="padding: 10px;">
								<table class="table table-striped">
									<tbody>
										<tr>
											<th colspan="2">【个人档案】</th>
										</tr>
										<tr>
											<td class="td-width">联系人</td>
											<td>${invest.user.user_name}</td>
										</tr>
										<tr>
											<td>职业</td>
											<td>${invest.user.person.occupation}</td>
										</tr>
										<tr>
											<td>邮箱</td>
											<td>${invest.user.person.email}</td>
										</tr>
										<tr>
											<td>手机</td>
											<td>${invest.user.person.mobile}</td>
										</tr>
										<tr>
											<td>工作地</td>
											<td>${invest.user.person.workplace}</td>
										</tr>
										<tr>
											<td>地址</td>
											<td>${invest.user.person.address}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</c:if>
						<c:if test="${invester_role=='企业用户' }">
							<div class="panel-heading">基本信息</div>
							<div class="panel-body" style="padding: 10px;">
								<table class="table table-striped">
									<tbody>
										<tr>
											<th colspan="2">【企业诚信档案】</th>
										</tr>
										<tr>
											<td>联系人</td>
											<td>${invest.user.user_name }</td>
										</tr>
										<tr>
											<td>邮箱</td>
											<td>${invest.user.company.email }</td>
										</tr>
										<tr>
											<td>电话</td>
											<td>${invest.user.company.phone }</td>
										</tr>
										<tr>
											<td>手机</td>
											<td>${invest.user.company.mobile }</td>
										</tr>
										<tr>
											<td>地区</td>
											<td>${invest.user.company.location }</td>
										</tr>
										<tr>
											<td>地址</td>
											<td>${invest.user.company.address }</td>
										</tr>
									</tbody>
								</table>
								<div class="col-xs-6 col-lg-6"></div>
								<c:if test="${!empty invester.company.companysite }">
									<button type="button" class="btn btn-info">
										<a href="#">进入公司网站</a>
									</button>
								</c:if>
							</div>
						</c:if>								
					</div>
				</div>
			</div>
		</div><!--panel panel-default-->
	</div>	
</body>
</html>