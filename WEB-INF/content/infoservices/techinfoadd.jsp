<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%
	String base_root = request.getContextPath();
%>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8"
	src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8"
	src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8"
	src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>
<link href="<%=request.getContextPath()%>/theme/css/training.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/index.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<link href="<%=base_root%>/theme/css/mSelect.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="<%=base_root%>/theme/jquery-ui-1.8.20.custom.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="<%=base_root%>/theme/ui-lib/qtip/css/jquery.qtip.css"
	type="text/css" />
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-table-list_select.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery.ui.datepicker-zh-CN.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/jquery-ui-1.8.20.custom.min.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/ui-lib/qtip/js/jquery.qtip.js"></script>
<script type="text/javascript"
	src="<%=base_root%>/theme/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>科技信息录入</title>

<style type="text/css">
</style>

<script type="text/javascript">
KindEditor.ready(function(K) { 
	var editor1 = K.create('textarea[name="techNews.icontent"]', {
		cssPath : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css',
		uploadJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/upload_json.jsp',
		fileManagerJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/file_manager_json.jsp',
		allowFileManager : true,
		items : [
				'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
				'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
				'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
				'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
				'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
				'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image',
				'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'pagebreak',
				'anchor', 'link', 'unlink', 'about'
			    ],
		afterCreate : function() {
			var self = this;
			K.ctrl(document, 13, function() {
				self.sync();
				document.forms['myAction'].submit();
			});
			K.ctrl(self.edit.doc, 13, function() {
				self.sync();
				document.forms['myAction'].submit();
			});
		},
	    afterBlur: function(){this.sync();}
	});
	prettyPrint();
});
</script>
<script type="text/javascript">
	function goback() {
		window.location.href='<%=request.getContextPath()%>
	/infoservices/techinfolist.action';
	}
</script>
</head>
<body style="background: none;">
	<div style="max-width: 790px; min-width: 720px; padding: 20px 0 0 0;">
		<div class="panel panel-default">
			<div class="panel-heading">科技信息录入</div>
			<div style="margin-top: 20px">
				<form class="form-horizontal" id="#" role="form"
					action="techinfosave.action" method="post">
					<div class="row" style="margin: 0">
						<div class="form-group">
							<label for="tecfield" class="col-lg-2 col-xs-2 control-label"
								style="text-align: right">科技信息标题</label>
							<div class="col-lg-4 col-xs-4">
								<input type="text" class="form-control" id="tecfield"
									placeholder="科技信息标题" name="techNews.ititle">
							</div>
						</div>
					</div>
					<div class="row" style="margin: 0">
						<div class="form-group">
							<label for="tecsource" class="col-lg-2 col-xs-2 control-label"
								style="text-align: right">科技信息类型</label>
							<div class="col-lg-4 col-xs-4">
								<select id="tecfield" name="techNews.istypeid"
									class="form-control ">
									<option value="" selected="selected">请选择</option>
									<option value="1">种源信息</option>
									<option value="2">种苗培育</option>
									<option value="3">病害控制</option>
									<option value="4">种植技术</option>
									<option value="5">饲料信息</option>
									<option value="6">农机设备信息</option>
									<option value="7">加工技术</option>
									<option value="8">存储技术</option>
									<option value="9">运输技术</option>
									<option value="10">产品营销</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row" style="margin: 0">
						<div class="form-group">
							<label for="tecfield" class="col-lg-2 col-xs-2 control-label"
								style="text-align: right">农产品类别</label>
							<div class="col-lg-4 col-xs-4">
								<select id="tecfield" name="techNews.agftupeid"
									class="form-control ">
									<option value="${techNews.agftupeid}" selected="selected">请选择</option>
									<option value="蔬菜产业">蔬菜产业</option>
									<option value="水果产业">水果产业</option>
									<option value="水产产业">水产产业</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="tecinfo" class="col-lg-2 col-xs-2 control-label"
							style="text-align: right">科技信息描述</label>
						<div class="col-lg-6 col-xs-6">
							<textarea class="form-control" rows="9" id="tecinfo"
								placeholder="科技信息描述" name="techNews.icontent"
								style="height: 100px"></textarea>
						</div>
					</div>
					<div class="form-group ">
						<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
							<button type="submit" class="btn btn-success col-lg-2 col-xs-2">添加</button>
							<button type="reset" onclick="goback();"
								class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">重置</button>
						</div>
					</div>
				</form>
				<!--form-horizontal-->
			</div>
		</div>
		<!--panel panel-default-->
	</div>
</body>
</html>