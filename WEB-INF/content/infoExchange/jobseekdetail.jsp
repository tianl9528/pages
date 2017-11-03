<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=request.getContextPath()%>/theme/css/base/jquery.ui.all.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/kindeditor.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/scripts/kindeditor-4.1.7/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/scripts/kindeditor-4.1.7/plugins/code/prettify.js"></script>
<title>个人求职>>详细</title>
<style>
	.reply{
		clear:right;
	}
	.btn-success{
		margin-top:10px;		
		width:60px;
	}
	.btn-default{
		margin-top:10px;
		margin-left:30px;
		width:60px;
		background-color:#CCC;
	}
</style>

<script>
		KindEditor.ready(function(K) { 
			var editor1 = K.create('textarea[name="infore.reContent"]', {
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
<style>
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button{ width:100px; height:30px; }
.text{
	width:220px;
}	
</style>
<script type="text/javascript">
	function right(){			
		var role = "${user_role}";
		if(role == "游客"||role=="待审核用户"){
			$( "#tip" ).dialog({
				autoOpen: false,
				height: 180,
				width: 300,
				modal: true,
				buttons: {
					"登录": function() {							
						window.location.href="/gdzyzmm/login.action";
					},
					"取消": function() {
						$( this ).dialog( "close" );
					}
				},
				close: function() {
					
				}
			});			
			$( "#tip" ).dialog( "open" );
		}
		else{
			$("#myAction").submit();			
		}
	}
</script>
</head>
<body> 
	<div style="max-width:1007px;min-width:970px;margin:0 auto">
		<div id="tip" title="提示" style="display:none;">
			<p>您当前的身份是${user_role }，权限不足，请登录</p>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading"
				style="background: #99CC00; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">				
				<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						个人求职>>详细
					</div>
					<div class="col-xs-2 col-lg-2">
						<a href="jobseeklist.action">返回上一级</a>
					</div>
				</div>	
			</div>
			<div class="panel-body" style="padding: 10px;">
				<div class="col-xs-8 col-lg-8" style="margin-top:5px;">
					<table class="table">
						<tbody>
							<tr>
								<td>姓名</td><td>${jobseek.applyername}</td>				
							</tr>
							<tr>
								<td>学历</td><td>${jobseek.appdegree}</td>
							</tr>
							<tr>
								<td>专业</td><td>${jobseek.appmajor}</td>
							</tr>
							<tr>
								<td>毕业院校</td><td>${jobseek.appschool}</td>
							</tr>
							<tr>
								<td>求职岗位</td><td>${jobseek.expjob}</td>
							</tr>
							<tr>
								<td>期待的待遇</td><td>${jobseek.expsalary}</td>
							</tr>
							<tr>
								<td>现居地址</td><td>${jobseek.appaddress}</td>
							</tr>
							<tr>
								<td>手机号</td><td>${jobseek.appmobile}</td>
							</tr>
							<tr>
								<td>联系人邮箱</td><td>${jobseek.appemail}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-xs-4 col-lg-4">
					<img src="<%=request.getContextPath()%>/theme/image/default/person.png"
						alt="..." class="img-thumbnail img-box">
				</div>
			</div>
		</div><!--panel panel-default-->
		<div class="panel panel-default">
			<div class="panel-heading" style="height: 30px; background: #99CC00;"><h5 style="margin-top:1px; text-align:left;">回复</h5></div>
			<div class="panel-body">
				<table class="table table-striped">
                	
                    <tbody class="">
                    	<c:if test="${!empty page.result}">
 						<c:forEach items="${page.result}" var="infore" varStatus="stat"> 
            			<tr>
           					<td width="80%">${infore.reContent }</td>           			
           					<td width="10%">${infore.user.user_name}</td>
           					<td width="10%"><fmt:formatDate value="${infore.reDate}"></fmt:formatDate></td>           					
            			</tr>
            			</c:forEach>
   						</c:if>
                    </tbody>  
                </table>
                <c:if test="${empty page.result}">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            		<tr><td>没有数据！！！</td></tr>
        		</table>
        		</c:if>
        		<!--分页-->
	        		 <div class="listBox">         
				        <div class="page" style="background:none;">
				          <div class="pageBox">
				          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
				            <tr><td><c:if test="${!empty page.result}">${controlTable}</c:if></td></tr>
				          </table>
				          </div>
				        </div>
				     </div><!-- 分页结束 -->
			</div>
		</div>
		<div>
		<form action="jobseekreply-save.action" name="myAction" id="myAction" method="post" onsubmit="#">
			<div class="conBox">
				<input type="hidden" name="infore.parentId" id="parentid"  value="${jobseek.user.user_id}" />
				<input type="hidden" name="infore.reType" id="retype"  value="个人求职" />
				
                <textarea name="infore.reContent" id="replyContent" rows="5" style="width:100%"></textarea>                     			                                                                            
          	<div class="subBtnBox" style="margin-left:400px;width:400px;">
          		<input type="button" class="btn btn-success" onclick="right();" value="回复" />
        		<input type="button"  class="btn btn-default" value="取消" onclick="#"/>
          	</div>     
      	</div>
	</form>
		</div>
	</div>	
</body>
</html>