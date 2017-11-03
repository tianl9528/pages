<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<title>鉴定机构信息录入</title>

<style type="text/css">
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$( "#servdate" ).datepicker();
	});
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$( "#date" ).datepicker();
	});
</script>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>
<script type="text/javascript">
KindEditor.ready(function(K) { 
	var editor1 = K.create('textarea[name="serv.sstream"]', {
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
	var editor2 = K.create('textarea[name="serv.scontent"]', {
		cssPath : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/plugins/code/prettify.css',
		uploadJson : '<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/jsp/upload_json.jsp',
		fileManagerJson : '<%=request.getContextPath()%>
	/scripts/kindeditor-4.1.7/jsp/file_manager_json.jsp',
									allowFileManager : true,
									items : [ 'source', '|', 'undo', 'redo',
											'|', 'preview', 'print',
											'template', 'code', 'cut', 'copy',
											'paste', 'plainpaste', 'wordpaste',
											'|', 'justifyleft',
											'justifycenter', 'justifyright',
											'justifyfull', 'insertorderedlist',
											'insertunorderedlist', 'indent',
											'outdent', 'subscript',
											'superscript', 'clearhtml',
											'quickformat', 'selectall', '|',
											'fullscreen', '/', 'formatblock',
											'fontname', 'fontsize', '|',
											'forecolor', 'hilitecolor', 'bold',
											'italic', 'underline',
											'strikethrough', 'lineheight',
											'removeformat', '|', 'image',
											'flash', 'media', 'insertfile',
											'table', 'hr', 'emoticons',
											'pagebreak', 'anchor', 'link',
											'unlink', 'about' ],
									afterCreate : function() {
										var self = this;
										K.ctrl(document, 13,
												function() {
													self.sync();
													document.forms['myAction']
															.submit();
												});
										K.ctrl(self.edit.doc, 13,
												function() {
													self.sync();
													document.forms['myAction']
															.submit();
												});
									},
									afterBlur : function() {
										this.sync();
									}
								});
				prettyPrint();
			});
</script>
</head>
<body style="background: none;">
	<div
		style="max-width: 790px; min-width: 720px; padding: 20px 0 0 0;">
		<div class="panel panel-default">
			<div class="panel-heading">信息录入</div>
			<div style="margin-top: 20px">
				<form class="form-horizontal" id="#" role="form"
					action="detectservsave.action" method="post"
					enctype="multipart/form-data">
					<table class="table FormTable" align="center" cellpadding="">
						<tbody>
							<tr>
								<th colspan="4" class="line">
									<h3 style="text-align: center; font-weight: bold">
										<span>服务</span>
									</h3>
								</th>
							</tr>
							<tr>
								<th width="15%">服务名称：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="服务名称" name="serv.sname" /></td>
							</tr>
							<tr>
								<th>单位名称：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="单位名称" name="serv.sinstname " /></td>
							</tr>
							<tr>
								<th>简介：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="简介" name="serv.sintro"
									value="${serv.sintro }" /></td>
							</tr>
							<tr>
								<th>服务类别：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="服务类别" name="serv.stype" /></td>
							</tr>

							<tr>
								<th style="padding: 0px 5px 0px 5px;">服务内容描述：</th>
								<td colspan="3"><textarea class="form-control" rows="9"
										id="tecinfo" placeholder="服务内容描述" name="serv.scontent"
										style="height: 100px"></textarea></td>
							</tr>
							<tr>
								<th style="padding: 0px 5px 0px 5px;">服务流程说明：</th>
								<td colspan="3"><textarea class="form-control" rows="9"
										id="tecinfo" placeholder="服务流程说明" name="serv.sstream"
										style="height: 100px"></textarea></td>
							</tr>
							<tr>
								<th>服务时间：</th>
								<td width="310"><input type="text" class="form-control"
									id="servdate" name="serv.sservdate"
									value="<fmt:formatDate value='${serv.sservdate}' pattern='yyyy-MM-dd'></fmt:formatDate>"
									placeholder="如：2014年6月1日"></td>
								<th>发布时间：</th>
								<td width="295"><input type="text" class="form-control"
									id="date" name="serv.sdate"
									value="<fmt:formatDate value='${serv.sdate }' pattern='yyyy-MM-dd'></fmt:formatDate>"
									placeholder="如：2014年6月1日"></td>
							</tr>
							<tr>
								<th>服务方式：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="服务方式" name="serv.smethod" /></td>
								<th>关键字：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="关键字" name="serv.skeyword" /></td>
							</tr>
							<tr>
								<th colspan="4"><h4>&nbsp;</h4></th>
							</tr>
							<tr>
								<th>联系人：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="联系人" name="serv.scontact " /></td>
								<th width="15%">联系电话：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="联系电话" name="serv.sphone" /></td>
							</tr>
							<tr>
								<th>手机：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="手机" name="serv.smobile" /></td>
								<th>电子邮箱：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="电子邮箱" name="serv.semail" /></td>
							</tr>
							<tr>
								<th>地址：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="地址" name="serv.saddress" /></td>
								<th>邮编：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="邮编" name="serv.spostcode" /></td>
							</tr>

							<tr>
								<th>传真：</th>
								<td><input type="text" class="form-control" id="tecfield"
									placeholder="传真" name="serv.sfax" " /></td>
								<th>附件：</th>
								<td>
									<div>
										<input type="text" class="form-control" id="tecfield"
											placeholder="附件" name="serv.sadd" />
									</div>
								</td>
							</tr>

							<tr>
								<td colspan="4" align="center">
									<div class="form-group ">
										<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
											<button type="submit"
												class="btn btn-success col-lg-2 col-xs-2">更新</button>
											<button type="reset" onclick="goback();"
												class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">重置</button>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
				<!--form-horizontal-->
			</div>
		</div>
		<!--panel panel-default-->
	</div>
</body>
</html>