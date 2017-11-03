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
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/edit/techsupp.js"></script>

<title>技术供应信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#tecsupend" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑技术供应信息</div>
		<div class="panel-body">
			<form class="form-horizontal" id=techsuppform role="form" action="techsupp-update.action?id=${techsupp.id}" method="post">
				<div class="form-group" id="show1">
					<label for="type" class="col-sm-2 control-label">技术类型</label>
					<label for="type" style="margin-left:12px;margin-top:7px;">${techsupp.tist.teInFiType.teInFirTypeName}->${techsupp.tist.teInSeTypeName}</label>
					<button type="button" style="margin-top:-2px;" class="btn btn-link" id="bt1">修改</button>
				</div>
				<div class="form-group" id="show2" style="display:none;">
					<label for="type" class="col-sm-2 control-label">技术类型</label>
					<div class="col-sm-4" style="width:100px">
						<select id="ft" name="ft"  class="form-control rightleg">
							
						</select>
					</div>
					<div class="col-sm-4" style="width:100px">
						<select id="st" name="techinfoid"  class="form-control rightleg">
							
						</select>
					</div>
					<button type="button" style="margin-left:0px;margin-top:2px;" class="btn btn-link" id="bt2">取消</button>
				</div>
				<div class="form-group">
					<label for="tecname" class="col-sm-2 control-label">技术名称</label>
					<div class="col-sm-6" style="width:200px">
						<input type="text" class="form-control" id="tecname" name="techsupp.tsName" value="${techsupp.tsName}" placeholder="输入技术名称">
					</div>										
				</div>
				<div class="form-group">
					<label for="tecinfo" class="col-sm-2 control-label">技术信息描述</label>
					<div class="col-sm-6" style="width:520px;">
						<textarea class="form-control" rows="9" id="tecinfo" name="techsupp.tsContent" placeholder="请输入技术的相关描述，如技术用途、用法，应用范围等" style="height:100px">${techsupp.tsContent}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="tecfield" class="col-sm-2 control-label">技术领域</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="tecfield" name="techsupp.tsArea" value="${techsupp.tsArea}" placeholder="输入技术领域">
					</div>
					<label for="tecsource" class="col-sm-2 control-label">技术来源</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="tecsource" name="techsupp.tsSource" value="${techsupp.tsSource}" placeholder="输入技术来源">
					</div>
				</div>
				<div class="form-group">
					<label for="goodstype" class="col-sm-2 control-label">农产品类型</label>
					<div class="col-sm-6" style="width:520px;">
						<input type="text" class="form-control" id="goodstype" name="techsupp.proType" value="${techsupp.proType}" placeholder="输入相关的农产品类型">
					</div>
				</div>
				<div class="form-group">
					<label for="tecgain" class="col-sm-2 control-label">技术获取渠道</label>
					<div class="col-sm-6" style="width:520px;">
						<select id="ObjectCategorytype1" name="techsupp.tsGetway" class="form-control rightleg">
							<option <c:if test="${techsupp.tsGetway == '合作'}">selected</c:if> value="合作">合作</option>
							<option <c:if test="${techsupp.tsGetway == '技术转让'}">selected</c:if> value="技术转让">技术转让</option>
							<option <c:if test="${techsupp.tsGetway == '培训'}">selected</c:if> value="培训">培训</option>
							<option <c:if test="${techsupp.tsGetway == '上门服务'}">selected</c:if> value="上门服务">上门服务</option>
							<option <c:if test="${techsupp.tsGetway == '其他'}">selected</c:if> value="其他">其他</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="tecrelate" class="col-sm-2 control-label">相关技术</label>
					<div class="col-sm-6" style="width:520px;">
						<input type="text" class="form-control" id="tecrelate" name="techsupp.tsRelated" value="${techsupp.tsRelated}" placeholder="输入相关技术">
					</div>
				</div>
				<div class="form-group">
					<label for="deadline" class="col-sm-2 control-label">供应截止时间</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="tecsupend" name="techsupp.tsExpDate" value="<fmt:formatDate value='${techsupp.tsExpDate}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="输入该技术供应截止时间">
					</div>
				</div>
				<div class="form-group">
					<label for="linkman" class="col-sm-2 control-label">联系人</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkman" name="techsupp.tsContact" value="${techsupp.tsContact}" placeholder="输入产品的联系方式">
					</div>
					<label for="linkphone" class="col-sm-2 control-label" style="width:100px;">联系电话</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="linkphone" name="techsupp.tsPhone" value="${techsupp.tsPhone}" placeholder="输入联系电话">
					</div>
				</div>
				<div class="form-group">
					<label for="linkaddress" class="col-sm-2 control-label" >联系地址</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkaddress" name="techsupp.tsAddress" value="${techsupp.tsAddress}" placeholder="输入联系地址">
					</div>
					<label for="postcode" class="col-sm-2 control-label" style="width:100px;">邮编</label>
					<div class="col-sm-6" style="width:220px;">
						<input type="text" class="form-control" id="postcode" name="techsupp.tsPostCode" value="${techsupp.tsPostCode}" placeholder="输入联系地址对应的邮编">
					</div>
					
				</div>
				<div class="form-group">
					<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
					<div class="col-sm-6" style="width:200px;">
						<input type="text" class="form-control" id="linkmail" name="techsupp.tsEmail" value="${techsupp.tsEmail}" placeholder="输入联系人邮箱">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">发布</button>
						<button type="reset" onclick="goback();"class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>