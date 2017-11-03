<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%

	String base_root = request.getContextPath();
	
 
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>

<title>个人空间 >>企业信息修改与完善>>特色农产品编辑</title>
<style>

</style>

<script>
	KindEditor.ready(function(K) { 
		var editor2 = K.create('textarea[name="featuredprod.proddescri"]', {
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
	<div style="max-width:1007px;min-width:978px">
			<div class="tab-content col-lg-12 col-xs-12" style="padding:0px 0 0 10px;">				
					<div class="panel panel-default">
						<div class="panel-heading">企业特色产品信息编辑</div>
							<div class="panel-body">
								<form class="form-horizontal" role="form" method="post"  action="featuredprod-update.action?prodid=${featuredprod.id}" enctype="multipart/form-data">
										
									<div class="row" style="margin:0">
										<div class="form-group ">
											  <label for="featured_product_name" class="col-lg-2 col-xs-2 control-label">产品名称</label>
											  <div class="col-lg-8 col-xs-8">
												<input type="text" class="form-control " id="featured_product_name" name="featuredprod.prodname" value="${featuredprod.prodname}" placeholder="特色产品名称">
											  </div>
										 </div>	
									 </div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group ">
											  <label for="annual_output" class="col-lg-2 col-xs-2 control-label">年产量</label>
											  <div class="col-lg-8 col-xs-8">
												<input type="text" class="form-control " id="annual_output" name="featuredprod.annual" value="${featuredprod.annual}" placeholder="年产量">
											  </div>
										 </div>	
									 </div>
									 
									<div class="row" style="margin:0">
										<div class="form-group">
											<label for="product_description" class="col-lg-2 col-xs-2 control-label">产品描述</label>
											<div class="col-lg-8 col-xs-8">
												<textarea class="form-control" rows="8" id="product_description" style="width:99%" name="featuredprod.proddescri">${featuredprod.proddescri}</textarea>
											</div>
											
										</div>
									</div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group">											
											<label for="product_publicity_material" class="col-lg-2 col-xs-2 control-label" >
												产品图片
											</label>
											<img class ="img-thumbnail" src="<%=request.getContextPath()%>${featuredprod.photosUrl}" style="width:300px;height:250px;margin-left:18px;"/>
											<input type="file" name="fpFiles"  value="" style="margin-left:184px;padding-top:7px"/>
										</div>
									</div>
									 
									 <div class="row" style="margin:0">
										<div class="form-group">											
											<label for="product_publicity_material" class="col-lg-2 col-xs-2 control-label" >
												宣传资料
											</label>
											<input type="file" name="adfpFiles"  value="" style="margin-left:184px;padding-top:7px"/>
										</div>
									</div>
									 
									<div class="form-group ">
											<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
												<button type="submit" class="btn btn-success col-lg-2 col-xs-2">修改</button>
												<button type="reset" class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">取消</button>
											</div>
									</div>
											
								</form><!--form-horizontal-->																								
							</div>
						</div><!--panel panel-default-->										
			</div><!--tab-content col-md-12-->
  </div><!--row  yy_content-->
</body>





</html>