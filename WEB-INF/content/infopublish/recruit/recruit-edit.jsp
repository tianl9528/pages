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

<title>企业招聘信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$( "#emenddate" ).datepicker();
	});
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑企业招聘信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" action="recruit-update.action?id=${recruit.id}" method="post">
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="position_name" class="col-lg-2 col-xs-2 control-label"  style="text-align:right">职位名称</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="position_name" name="recruit.job" value="${recruit.job}" placeholder="职位名称">
						</div>												
						<label for="position_property" class="col-lg-2 col-xs-2 control-label" style="text-align:right">工作性质</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="position_property" name="recruit.properties" value="${recruit.properties}" placeholder="工作性质">
						</div>
					</div>
				</div>								
				<div class="row" style="margin:0">
					<div class="form-group">	
						<label for="hiring_number" class="col-lg-2 col-xs-2 control-label" style="text-align:right">招聘人数</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="position_property" name="recruit.num" value="${recruit.num}" placeholder="招聘人数">
						</div>
						<label for="position_treatment" class="col-lg-2 col-xs-2 control-label" style="text-align:right">工作待遇</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="position_treatment" name="recruit.treatment" value="${recruit.treatment}" placeholder="工作待遇">
						</div>
					</div>
				</div>								
				<div class="form-group" >
					<label for="position_description" class="col-lg-2 col-xs-2 control-label" style="text-align:right">工作描述</label>
					<div class="col-lg-8 col-xs-8">
						<textarea class="form-control" row="20" id="position_description" name="recruit.jobDetail" placeholder="工作描述" style="height:150px">${recruit.jobDetail}</textarea>
					</div>
				</div>								
				<div class="form-group" >
					<label for="position_requirement" class="col-lg-2 col-xs-2 control-label" style="text-align:right">职位要求</label>
					<div class="col-lg-8 col-xs-8">
						<textarea class="form-control" rows="20" id="position_requirement" name="recruit.jobRequire" placeholder="职位要求" style="height:150px">${recruit.jobRequire}</textarea>
					</div>
				</div>								
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="linkman" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="linkman" name="recruit.contact" value="${recruit.contact}" placeholder="联系人">
						</div>
						<label for="linkphone" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系电话</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="linkphone" name="recruit.phoneNumber" value="${recruit.phoneNumber}" placeholder="联系电话">
						</div>
					</div>
				</div>
				<div class="row" style="marin:0">
					<div class="form-group">
						<label for="resource" class="col-lg-2 col-xs-2 control-label" style="text-align:right">信息来源</label>
						<div class="col-lg-4 col-xs-4">
							<input type="text" class="form-control" id="resource" name="recruit.resource" value="${recruit.resource}" placeholder="信息来源">
						</div>
					</div>
				</div>								
				<div class="row" style="margin:0">
					<div class="form-group">
						<label for="linkaddress" class="col-lg-2 col-xs-2 control-label" style="text-align:right" >联系地址</label>
						<div class="col-lg-4 col-xs-4" >
							<input type="text" class="form-control" id="linkaddress" name="recruit.address" value="${recruit.address}" placeholder="联系地址">
						</div>
						<label for="postcode" class="col-lg-2 col-xs-2 control-label" style="text-align:right">邮编</label>
						<div class="col-lg-4 col-xs-4" >
							<input type="text" class="form-control" id="postcode" name="recruit.postcode" value="${recruit.postcode}" placeholder="联系地址对应的邮编">
						</div>
					</div>
				</div>								
				<div class="form-group">
					<label for="linkmail" class="col-lg-2 col-xs-2 control-label" style="text-align:right">联系人邮箱</label>
					<div class="col-lg-4 col-xs-4">
						<input type="text" class="form-control" id="linkmail" name="recruit.email" value="${recruit.email}" placeholder="联系人邮箱">
					</div>
					<label for="date" class="col-lg-2 col-xs-2 control-label" style="text-align:right">截止日期</label>
					<div class="col-lg-4 col-xs-4">
						<input type="text" class="form-control" id="emenddate" name="recruit.enddate" value="<fmt:formatDate value='${recruit.enddate}' pattern='yyyy-MM-dd'></fmt:formatDate>" placeholder="截止日期">
					</div>
				</div>								
				<div class="form-group" >
					<label for="remarks" class="col-lg-2 col-xs-2 control-label" style="text-align:right">备注</label>
					<div class="col-lg-8 col-xs-8">
						<textarea class="form-control" rows="20" id="remarks" name="recruit.remark" placeholder="备注" style="height:150px">${recruit.remark}</textarea>
					</div>
				</div>																
				<div class="form-group ">
					<div class="col-lg-8 col-lg-offset-4 col-xs-8 col-xs-offset-4">
						<button type="submit" class="btn btn-success col-lg-3 col-xs-3">发布</button>
						<button type="reset" onclick="goback();" class="btn btn-danger col-lg-3 col-lg-offset-1 col-xs-3 col-xs-offset-1">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>