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

<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>

<title>已发布>>企业快讯>>编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

<script>
	KindEditor.ready(function(K) { 
		var editor1 = K.create('textarea[name="companyNews.content"]', {
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

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">编辑企业快讯信息</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" action="companyNews-update.action?id=${companyNews.id}" method="post">								
				<div class="form-group">
					<label for="news_title" class="col-lg-2 col-xs-2 control-label" style="text-align:right">标题</label>
					<div class="col-lg-9 col-xs-9">
						<input type="text" class="form-control" id="news_title" name="companyNews.tittle" value="${companyNews.tittle}" placeholder="新闻标题">
					</div>												
				</div>								
				<div class="form-group" >
					<label for="news_content" class="col-lg-2 col-xs-2 control-label" style="text-align:right">内容</label>
					<div class="col-lg-9 col-xs-9">
						<textarea class="form-control" rows="20" id="news_content" name="companyNews.content">${companyNews.content}</textarea>
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