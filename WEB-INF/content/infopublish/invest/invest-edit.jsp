<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">

<title>招商代理信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#investend" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑招商代理信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" action="invest-update.action?id=${invest.id}" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4 firstcol">
						<div class="form-group">
							<label for="goods" class="col-sm-2 control-label">产品名称</label>
							<div class="col-sm-6" style="width:200px">
								<input type="text" class="form-control" id="goods" name="invest.inName" value="${invest.inName}" placeholder="输入产品名称">
							</div>
						</div>
						<div class="form-group" >
							<label for="goodsinfo" class="col-sm-2 control-label">产品描述</label>
							<div class="col-sm-6 input_width1">
								<textarea class="form-control" row="9" id="goodsinfo" name="invest.inContent" placeholder="请输入相关的产品描述，如外观、大小，颜色等" style="height:100px">${invest.inContent}</textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="goodsprice" class="col-sm-2 control-label">产品价格</label>
							<div class="col-sm-6 textsmall">
								<input type="text" class="form-control" id="goodsprice" name="invest.inPrice" value="${invest.inPrice}" placeholder="输入产品价格">
							</div>
							<label class="col-sm-2 control-label tip-text">元（RMB）</label>
						</div>
						<div class="form-group">
							<label for="goodsamount" class="col-sm-2 control-label">产品储量</label>
								<div class="col-sm-6 textsmall">
									<input type="text" class="form-control" id="goodsamount" name="invest.inNum" value="${fn:split( invest.inNum, ',')[0]}" placeholder="输入产品储量">
								</div>
								<select id="ObjectCategorytype1" name="invest.inNum" class="form-control rightleg" style="width:100px;">
									<option <c:if test="${fn:contains(invest.inNum, '吨/T')}">selected</c:if> value="吨/T">吨/T</option>
									<option <c:if test="${fn:contains(invest.inNum, '千克/KG')}">selected</c:if> value="千克/KG">千克/KG</option>
									<option <c:if test="${fn:contains(invest.inNum, '斤')}">selected</c:if> value="斤">斤</option>
									<option <c:if test="${fn:contains(invest.inNum, '件')}">selected</c:if> value="件">件</option>
							</select>
						</div>
						<div class="form-group">
							<label for="goodsapprove" class="col-sm-2 control-label">产品认证信息</label>
							<div class="col-sm-6 input_width1">
								<input type="text" class="form-control" id="goodsapprove" name="invest.inCertify" value="${invest.inCertify}" placeholder="输入相关的产品认证信息">
							</div>
						</div>
						<div class="form-group">
							<label for="goodsquality" class="col-sm-2 control-label">产品质量信息</label>
							<div class="col-sm-6 input_width1">
								<input type="text" class="form-control" id="goodsquality" name="invest.inQuality" value="${invest.inQuality}" placeholder="输入相关的产品质量信息">
							</div>
						</div>
					</div><!--firstcol，第一列--->
					<div class="col-md-4">
						<div class="form-group">
							<img class ="img-thumbnail" src="<%=request.getContextPath()%>${invest.inPhotos}" style="width:300px;height:200px;"/>
							<label for="exampleInputFile" style="margin-left:100px">
								上传产品图片
								<input type="file" value="上传图片" name="reportFiles" />
							</label>
						</div>
					</div><!--第二列-->
				</div>
				<div class="form-group">
					<label for="maker" class="col-sm-2 control-label">生产厂家</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="maker" name="invest.inFactory" value="${invest.inFactory}" placeholder="输入产品的生产厂家">
					</div>
				</div>
				<div class="form-group">
					<label for="deadline" class="col-sm-2 control-label">供应截止时间</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="investend" name="invest.inExpDate" value="<fmt:formatDate value='${invest.inExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="如：2014年6月1日">
					</div>
				</div>
				<div class="form-group">
					<label for="linkman" class="col-sm-2 control-label">联系人</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkman" name="invest.inContact" value="${invest.inContact}" placeholder="输入产品的联系方式">
					</div>
					<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="linkphone" name="invest.inPhone" value="${invest.inPhone}" placeholder="输入联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkaddress" name="invest.inAddress" value="${invest.inAddress}" placeholder="输入联系地址">
					</div>
					<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
					<div class="col-sm-6" style="width:300px;">
						<input type="text" class="form-control" id="postcode" name="invest.inPostCode" value="${invest.inPostCode}" placeholder="输入联系地址对应的邮编">
					</div>
				</div>
				<div class="form-group">
					<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkmail" name="invest.inEmail" value="${invest.inEmail}" placeholder="输入联系人邮箱">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
						<button type="reset" onclick="goback();" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>