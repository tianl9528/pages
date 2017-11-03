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
KindEditor.ready(function(K) { 
	var editor1 = K.create('textarea[name="articleNews.acontent"]', {
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
<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>
</head>
<body style="background: none;">
	<div
		style="max-width: 790px; min-width: 720px; padding: 20px 0 0 0;">
		<div class="panel panel-default">
			<div class="panel-heading">信息录入</div>
			<div style="margin-top: 20px" >
				<form class="form-horizontal" id="#" role="form"
					action="detectinstupdate.action?id=${inst.id}" method="post" enctype="multipart/form-data">
					<table class="table Formtable">
						<tbody>
							<tr>
								<th colspan="4">
									<h3 style="text-align: center; font-weight: bold">
										<span>机构详情</span>
									</h3>
								</th>
							</tr>
							<tr>
								<th width="17%">机构名称：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="机构名称" name="inst.dname"
									value="${inst.dname }" /></td>
							</tr>
							<tr>
								<th>机构类型：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="机构类型" name="inst.dtype"
									value="${inst.dtype }" /></td>
							</tr>
							<tr>
								<th>机构简介：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="机构简介" name="inst.dintroduce"
									value="${inst.dintroduce }" /></td>
							</tr>
							<tr>
								<th>服务内容：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="服务内容" name="inst.dservice"
									value="${inst.dservice}" /></td>
							</tr>
							<tr>
								<th>产品或成果(介绍)：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="产品或成果(介绍)" name="inst.dproduct"
									value="${inst.dproduct}" /></td>
							</tr>
							<tr>
								<th>相关团队(介绍)：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="相关团队(介绍)" name="inst.dteam"
									value="${inst.dteam}" /></td>
							</tr>
							<tr>
								<th>特色资源(介绍) ：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="特色资源(介绍) " name="inst.dresource"
									value="${inst.dresource}" /></td>
							</tr>
							<tr>
								<th>项目或课题(描述)：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="项目或课题(描述)" name="inst.dproject"
									value="${inst.dproject }" /></td>
							</tr>
							<tr>
								<th>关键字：</th>
								<td colspan="3"><input type="text" class="form-control"
									id="tecfield" placeholder="关键字" name="inst.dkeyword"
									value="${inst.dkeyword }" /></td>
							</tr>
							<tr>
								<th colspan="4">
									<h4>&nbsp;</h4>
								</th>
							</tr>
							<tr>
								<th>联系人：</th>
								<td colspan="1" width="280"><input type="text"
									class="form-control" id="tecfield" placeholder="联系人"
									name="inst.dcontact" value="${inst.dcontact }" /></td>
								<th width="100">联系电话：</th>
								<td colspan="1" width="280"><input type="text"
									class="form-control" id="tecfield" placeholder="联系电话"
									name="inst.dphone" value="${inst.dphone }" /></td>
							</tr>
							<tr>
								<th>手机：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="手机" name="inst.dmobile"
									value="${inst.dmobile }" /></td>
								<th>电子邮箱：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="电子邮箱" name="inst.demail"
									value="${inst.demail }" /></td>
							</tr>
							<tr>
								<th>地址：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="地址" name="inst.daddress"
									value="${inst.daddress }" /></td>
								<th>邮编：</th>
								<td colspan="1"><input type="text" class="form-control"
									id="tecfield" placeholder="邮编" name="inst.dpostcode"
									value="${inst.dpostcode }" /></td>
							</tr>
							<tr>
								<th>机构图片或logo：</th>
								<td colspan="3">
							<tr class="greyColor">
								<td class="typeNameTd">相片</td>
								<td class="memberAddTd" align="left" colspan="3"><img
									class="img-thumbnail"
									src="<%=request.getContextPath()%>${inst.dlogo}"
									onerror="this.src='<%=base_root%>/theme/images/none.jpg'"
									style="width: 300px; height: 200px;" /> <label
									for="exampleInputFile" style="margin-left: 100px">
										上传产品图片 <input type="file" value="上传图片" name="reportFiles" />
								</label></td>
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