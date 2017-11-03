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

<title>发布信息管理>>培训信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#start_time" ).datepicker();
		$( "#end_time" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑培训信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" id="techsuppform" action="tnupdate.action?id=${train.id}" method="post">
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="training_institution" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训机构</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="training_institution" value="${train.orgname }" placeholder="培训机构名称" name="train.orgname">
						</div>												
					</div>
				</div>	
				<div class="row" style="margin:0;">
					<div class="form-group" id="show1">
						<label for="type" class="col-lg-2 col-xs-2 control-label">技术类型</label>
						<label for="type" style="margin-left:15px;margin-top:7px;">${train.istypeid.teInFiType.teInFirTypeName}->${train.istypeid.teInSeTypeName}</label>
						<button type="button"  style="margin-top:-2px;" class="btn btn-link" id="bt1">修改</button>
					</div>
					<div class="form-group" id="show2" style="display:none;">
						<label for="type" class="col-lg-2 col-xs-2 control-label">技术类型</label>
						<div class="col-lg-2 col-xs-2" style="width:100px">
							<select id="ft" name="ft"  class="form-control rightleg">
								
							</select>
						</div>
						<div class="col-lg-2 col-xs-2" style="width:100px">
							<select id="st" name="techinfoid"  class="form-control rightleg">
								
							</select>
						</div>
						<button type="button" style="margin-left:0px;margin-top:2px;" class="btn btn-link" id="bt2">取消</button>
					</div>					
				</div>
				
				<div class="row" style="margin:0">
					<div class="form-group">	
						<label for="aim_of_training" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训目的</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="aim_of_training" placeholder="培训目的" name="train.target" value="${train.target}">
						</div>
						<label for="method_of_training" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训方式</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="method_of_training" placeholder="培训方式" value="${train.ttype}" name="train.ttype">
						</div>
					</div>
				</div>
				
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="start_time" class="col-lg-2 col-xs-2 control-label" style="text-align:right">开始时间</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="start_time" name="train.tbegin" value="<fmt:formatDate value='${train.tbegin}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="培训开始时间">
						</div>
						<label for="end_time" class="col-lg-2 col-xs-2 control-label" style="text-align:right">结束时间</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="end_time" name="train.tend" value="<fmt:formatDate value='${train.tend}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="培训结束时间">
						</div>
					</div>
				</div>
				
				<div class="form-group" >
					<label for="training_content" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训内容</label>
					<div class="col-lg-8 col-xs-8">
						<textarea class="form-control" rows="9" id="training_content" name="train.tcontent" placeholder="培训内容" style="height:150px">${train.tcontent}</textarea>
					</div>
				</div>
				
				<div class="row" style="margin:0">
				<div class="form-group">
					<label for="address" class="col-lg-2 col-xs-2 control-label" style="text-align:right">培训费用</label>
					<div class="col-lg-4 col-xs-4">
						<input type="text" class="form-control" id="address" name="train.tfee" value="${train.tfee}" placeholder="培训费用">
					</div>
					<label for="pid" class="col-lg-2 col-xs-2 control-label"  style="text-align:right">农产品类型</label>
					<div class="col-lg-4 col-xs-4">
					<input type="text" class="form-control" id="pid" name="train.pid" value="${train.pid}" placeholder="农产品类型">
					</div>
				</div>
				</div>
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="linkman" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="linkman" name="train.tcontact" value="${train.tcontact}" placeholder="产品的联系方式">
						</div>
						<label for="linkphone" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系电话</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="linkphone" name="train.tphone" value="${train.tphone}" placeholder="联系电话">
						</div>
					</div>
				</div>
				
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="linkaddress" class="col-lg-2 col-xs-2 control-label" style="text-align:right" >联系地址</label>
						<div class="col-lg-4 col-xs-4" >
							<input type="text" class="form-control" id="linkaddress" name="train.taddress" value="${train.taddress}" placeholder="联系地址">
						</div>
						<label for="postcode" class="col-lg-2 col-xs-2 control-label" style="text-align:right">邮编</label>
						<div class="col-lg-4 col-xs-4" >
							<input type="text" class="form-control" id="postcode" name="train.tpostcode" value="${train.tpostcode}" placeholder="联系地址对应的邮编">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label for="linkmail" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人邮箱</label>
					<div class="col-lg-4 col-xs-4">
						<input type="text" class="form-control" id="linkmail" name="train.temail" value="${train.temail}" placeholder="联系人邮箱">
					</div>
				</div>				
				
				<div class="form-group ">
					<div class="col-lg-8 col-lg-offset-4 col-xs-8 col-xs-offset-4">
						<button type="submit" class="btn btn-success col-lg-3 col-xs-3">修改</button>
						<button type="reset" onclick="goback();" class="btn btn-danger col-lg-3 col-lg-offset-1 col-xs-3 col-xs-offset-1">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>