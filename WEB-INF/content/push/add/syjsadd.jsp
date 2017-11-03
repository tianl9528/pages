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

<title>实用技术-新增</title>
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<link href="<%=base_root%>/theme/default/default.css" rel="stylesheet">

<script type="text/javascript" src="<%=base_root%>/theme/js/kindeditor-min.js"></script>
<script type="text/javascript" src="<%=base_root%>/lang/zh_CN.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#aidate").datepicker();
	});
</script>
<script type="text/javascript">
	$(document).ready(function(){
		var editor;
		KindEditor.ready(function(K) {
			editor = K.create('textarea[name="syjs.aicontent"]', {
				resizeType : 1,
				allowPreviewEmoticons : false,
				allowImageUpload : false,
				items : [
					'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
					'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
					'insertunorderedlist', '|', 'emoticons', 'image', 'link']
			});
		});
	});
</script>
</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">实用技术-新增</div>
		<div class="panel-body">
			<form class="form-horizontal" id="rsssave" action="syjssave.action" method="post" enctype="multipart/form-data">			
				<div class="form-group">
					<label for="goods" class="col-sm-2 control-label">标题</label>
					<div class="col-sm-6" style="width:200px">
						<input type="text" class="form-control" id="aititle" name="syjs.aititle" placeholder="输入标题">
					</div>
				</div>
				<div class="form-group" >
					<label for="goodsinfo" class="col-sm-2 control-label">来源</label>
					<div class="col-sm-6 input_width1">
						<input type="text" class="form-control" id="airesource" name="syjs.airesource" placeholder="请输入来源">
					</div>
				</div>
				<div class="form-group" >
					<label for="goodsinfo" class="col-sm-2 control-label">日期</label>
					<div class="col-sm-6 input_width1">
						<input type="text" class="form-control" id="aidate" name="syjs.aidate" placeholder="请输入日期">
					</div>
				</div>
				<div class="form-group" >
					<label for="goodsinfo" class="col-sm-2 control-label">农产品</label>
					<div class="col-sm-6 input_width1">
						<input type="text" class="form-control" id="aidate" name="syjs.aiproduce" placeholder="请输入农产品">
					</div>
				</div>
				<div class="form-group">
					<label for="aichtype" class="col-sm-2 control-label">分类</label>
					<div class="col-sm-6" style="width:520px;">
						<select id="aichtype" name="syjs.aichtype" class="form-control rightleg">
							<option value="" selected="selected">请选择</option>
							<option value="种苗培育">种苗培育</option>
							<option value="种植养殖">种植养殖</option>
							<option value="病害防控">病害防控</option>
							<option value="加工储运">加工储运</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="aichtype" class="col-sm-2 control-label">行业</label>
					<div class="col-sm-6" style="width:520px;">
						<select id="aichtype" name="syjs.aiindustry" class="form-control rightleg">
							<option value="" selected="selected">请选择</option>
							<option value="种植业">种植业</option>
							<option value="畜牧业">畜牧业</option>
							<option value="水产业">水产业</option>
						</select>
					</div>
				</div>
				<div class="form-group" >
					<label for="goodsinfo" class="col-sm-2 control-label">内容</label>
					<div class="col-sm-6 input_width1">
						<textarea class="form-control" id="aicontent" name="syjs.aicontent" placeholder="请输入内容" style="width:700px;height:200px;visibility:hidden;"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">保存</button>
						<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>