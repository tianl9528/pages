<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>人力资源</title>
<style type="text/css">
.contentBox .page {
	background-image: none;
}

.line {
	border: 1px dashed #000;
}

.nav {
	background-color: #669999;
}

.nav-tabs {
	border-bottom: 1px solid #424242;
}

.nav-tabs>li.active>a,.nav-tabs>li.active>a:hover,.nav-tabs>li.active>a:focus
	{
	color: #FFF;
	background-color: #669999;
	border: 1px solid #424242;
	border-bottom-color: rgba(0, 0, 0, 0);
}

.joba a {
	color: #315aaa;
}

.joba a:visited {
	color: #660033;
}

.nav-tabs>li>a,.nav-tabs>li>a:hover,.nav-tabs>li>a:focus {
	border-color: rgba(0, 0, 0, 0);
	/* border-bottom: 1px solid #424242; */
	background-color: #669999;
}

.table>tbody>tr>th,.table>tbody>tr>td {
	border-top: 0px;
	border-bottom: 1px solid #BEEC94;
}

.btn-success {
	background-color: #90B82A;
}

.btn-success:hover,btn-success:focus {
	background-color: #86AA29;
}

.hr a,.hr a:hover {
	font-weight: bold;
}

#search {
	background-color: #6FC04F;
}

#tip {
	padding: 15px 30px;
	font-weight: 500;
	background-color: #6FC04F;
}

#result {
	
}

h3 {
	margin-top: 0px;
	font-family: "微软雅黑";
	font-size: 16px;
	font-weight: bold;
	color: #0053a8;
}
</style>
</head>
<body style="background-color: white">
	<div style="max-width: 990px; margin: 15px" class="hr">
		<div class="panel panel-default col-lg-12 col-xs-12" id="tab1"
			style="padding: 0">
			<!-- 
			<div class="panel-heading" style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);color:white;padding:5px 0;">
		 -->
			<div class="panel panel-heading myFont15">
                招聘与求职
			</div>
			<div class="panel-body listBox">

				<!-- 招聘 -->
				<h3>招聘信息：</h3>
				<div id="search">
					<form class="form-horizontal" role="form" method="post">

						<div class="input-group col-lg-5 col-xs-5"
							style="padding: 15px 15px 15px 30px;">
							<span class="input-group-addon "
								style="background:url(<%=base_root%>/theme/images/infoservices/book.png) no-repeat center;background-color:#fff;width:30px"></span>

							<s:select name="rworktype" cssClass="form-control"
								cssStyle="border-left: 0;"
								list="{'售货员','文员','技工','仓库管理员','基地生产主管','种植销售工程师','其他'}"
								theme="simple" headerKey="" headerValue="选择岗位"></s:select>
						</div>
						<div class="form-group  col-lg-7 col-xs-7"
							style="padding: 15px; margin-top: -64px; margin-left: 400px">
							<div class="col-lg-9 col-xs-9">
								<input type="text" name="searchInput1" class="form-control"
									placeholder="输入关键字">
							</div>
							<div class="col-lg-3 col-xs-3">
								<button type="sumbit" class="btn col-lg-3 col-xs-3"
									style="width: 88px; font-weight: bold; box-shadow: 0 5px 10px rgba(0, 0, 0, 0.7);">搜索</button>
							</div>
						</div>
					</form>
				</div>
				<div id="result">
					<!-- 
					<div id="tip">
						<span>共找到</span><span id="number">1000</span><span>个职位&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<span>地区</span><span id="address">广东广州</span>
					</div>
					 -->
					<table class="table " style="padding-top: 15px">
						<tr>
							<th>职位名称</th>
							<th>公司名称</th>
							<th>招聘人数</th>
							<th>待遇</th>
							<th>联系人</th>
							<th>联系电话</th>
							<th>发布时间</th>
						</tr>

						<c:if test="${!empty page1.result}">
							<c:forEach items="${page1.result}" var="rcl" varStatus="stat">
								<tr
									class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">

									<td width="150" class="joba"><a
										href="recruitDetail.action?recruitid=${rcl.id}"
										target="_blank">${rcl.job}</a></td>
									<td width="250">${rcl.user.company.companyname}</td>

									<td width="100">${rcl.num}</td>

									<td width="100">${rcl.treatment}</td>
									<td width="170">${rcl.contact}</td>
									<td width="170">${rcl.phoneNumber}</td>
									<td width="170"><fmt:formatDate value='${rcl.pubdate }'
											pattern='yyyy-MM-dd'></fmt:formatDate></td>

								</tr>
							</c:forEach>
						</c:if>

					</table>
					<c:if test="${empty page1.result}">
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							class="tTitle">
							<tr>
								<td>没有数据！！！</td>
							</tr>
						</table>
					</c:if>
				</div>
				<!--分页-->
				<div class="page">
					<div class="pageBox">
						<table border="0" cellpadding="0" cellspacing="0"
							style="margin-left: auto; margin-right: auto">
							<tr>
								<td><c:if test="${!empty page1.result}">${controlTable1}</c:if></td>
							</tr>
						</table>
					</div>
				</div>
				<p class="line"></p>
				<!-- 求职 -->
				<h3>求职信息：</h3>
				<div id="search">
					<form class="form-horizontal" role="form" method="post">
						<div class="input-group col-lg-5 col-xs-5"
							style="padding: 15px 15px 15px 30px;">
							<span class="input-group-addon "
								style="background:url(<%=base_root%>/theme/images/infoservices/book.png) no-repeat center;background-color:#fff;width:30px"></span>
							<s:select name="sworktype" cssClass="form-control"
								cssStyle="border-left: 0;"
								list="{'售货员','文员','技工','仓库管理员','基地生产主管','种植销售工程师','其他'}"
								theme="simple" headerKey="" headerValue="选择岗位"></s:select>

						</div>

						<div class="form-group col-lg-7 col-xs-7"
							style="padding: 15px; margin-top: -64px; margin-left: 400px">
							<div class="col-lg-9 col-xs-9">
								<input name="searchInput" type="text" class="form-control"
									placeholder="输入关键字">
							</div>
							<div class="col-lg-3 col-xs-3">
								<button type="sumbit" class="btn col-lg-3 col-xs-3"
									style="width: 88px; font-weight: bold; box-shadow: 0 5px 10px rgba(0, 0, 0, 0.7);">搜索</button>
							</div>
						</div>
					</form>
				</div>
				<div id="result">
					<!--  
					<div id="tip">
						<span>共找到</span><span id="number">1000</span><span>个职位&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<span>地区</span><span id="address">广东广州</span>
					</div>
					-->
					<div class="listBox">

						<div style="width: 957px;">
							<table class="table table-hover" style="padding-top: 15px">
								<tr>
									<th width="150">求职职位</th>
									<th width="80">姓名</th>
									<th width="50">性别</th>
									<th width="100">学历</th>
									<th width="170">期望月薪</th>
									<th width="170">更新时间</th>
									<th width="170">联系电话</th>
								</tr>
								<c:if test="${!empty page.result}">
									<c:forEach items="${page.result}" var="sjl" varStatus="stat">
										<tr
											class="<c:if test="${stat.count%2==1}">colorGrey</c:if><c:if test="${stat.count%2==0}">colorwhite</c:if>">
											<td width="150" class="joba"><a
												href="jobseekDetail.action?pubid=${sjl.user.user_id}">${sjl.expjob}</a></td>
											<td width="80">${sjl.user.user_name}</td>
											<td width="50">${sjl.user.sex}</td>
											<td width="170">${sjl.appdegree}</td>
											<td width="170">${sjl.expsalary}</td>
											<td width="170"><fmt:formatDate
													value='${sjl.apppubdate }' pattern='yyyy-MM-dd'></fmt:formatDate></td>
											<td width="170">${sjl.appmobile}</td>
										</tr>
									</c:forEach>
								</c:if>
							</table>
							<c:if test="${empty page.result}">
								<table width="100%" border="0" cellpadding="0" cellspacing="0"
									class="tTitle">
									<tr>
										<td>没有数据！！！</td>
									</tr>
								</table>
							</c:if>
						</div>
						<!--分页-->
						<div class="page">
							<div class="pageBox">
								<table border="0" cellpadding="0" cellspacing="0"
									style="margin-left: auto; margin-right: auto">
									<tr>
										<td><c:if test="${!empty page.result}">${controlTable}</c:if></td>
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