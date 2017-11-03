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
<title>技术供应>>详细</title>
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
			
			$("#cancel").click(function(){
				editor1.text('');
			});
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
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10" style="text-align:left;">
							技术供应详细信息
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="techsupplist.action">返回上一级</a>
						</div>
					</div>					
			</div>
			<div class="panel-body" style="padding: 10px;">
				<div class="col-xs-8 col-lg-8" style="margin-top:5px">
					<div class="row"  style="height:220px;">
						<div class="col-xs-6 col-lg-6" style="padding: 0 10px 0 0;">
							<img src="<%=request.getContextPath()%>/theme/image/prodema/prodema.png"
								alt="..." class="img-thumbnail img-box">
						</div>
						<div class="col-xs-6 col-lg-6" style="padding: 0 10px 0 0;">
							<table class="table">
								<tbody>
									<tr>
										<td>技术名称</td><td>${techsupp.tsName}</td>
									</tr>
									<tr>
										<td>技术类型</td><td>${techsupp.tist.teInSeTypeName}</td>
									</tr>
									<tr>
										<td>技术领域</td><td>${techsupp.tsArea}</td>
									</tr>
									<tr>
										<td>农产品类型</td><td>${techsupp.proType}</td>
									</tr>
									<tr>
										<td>技术来源</td><td>${techsupp.tsSource}</td>
									</tr>
									<tr>
										<td>技术获取渠道</td><td>${techsupp.tsGetway}</td>
									</tr>																		
								</tbody>
							</table>
						</div>
					</div>
					<div class="row" style="padding:10px;">
						<table class="table">
							<tbody>
								<tr>
									<td>相关技术</td><td>${techsupp.tsRelated}</td>
								</tr>								
								<tr>
									<td width="30%">供应截止时间</td><td width="70%"><fmt:formatDate value="${techsupp.tsExpDate}"></fmt:formatDate></td>
								</tr>
								<tr>
									<td>技术信息描述</td><td>${techsupp.tsContent}</td>
								</tr>
							</tbody>
						</table>
					</div>				
				</div>
				<div class="col-xs-4 col-lg-4" style="padding: 0;">
					<div class="panel panel-default">
						<c:if test="${supplyer_role=='个人用户' }">
							<div class="panel-heading" style="text-align:center;">基本信息</div>
							<div class="panel-body" style="padding: 10px;">
								<table class="table table-striped">
									<tbody>
										<tr>
											<th colspan="2">【个人档案】</th>
										</tr>
										<tr>
											<td class="td-width">联系人</td>
											<td>${supplyer.user_name}</td>
										</tr>
										<tr>
											<td>职业</td>
											<td>${supplyer.person.occupation}</td>
										</tr>
										<tr>
											<td>邮箱</td>
											<td>${supplyer.person.email}</td>
										</tr>
										<tr>
											<td>手机</td>
											<td>${supplyer.person.mobile}</td>
										</tr>
										<tr>
											<td>工作地</td>
											<td>${supplyer.person.workplace}</td>
										</tr>
										<tr>
											<td>地址</td>
											<td>${supplyer.person.address}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</c:if>
						<c:if test="${supplyer_role=='专家用户' }">
							<div class="panel-heading">基本信息</div>
							<div class="panel-body" style="padding: 10px;">
								<table class="table table-striped">
									<tbody>
										<tr>
											<th colspan="2">【专家诚信档案】</th>
										</tr>
										<tr>
											<td>联系人</td>
											<td>${supplyer.user_name}</td>
										</tr>
										<tr>
											<td>研究领域一</td>
											<td>${supplyer.professor.research_one}</td>
										</tr>
										<tr>
											<td>研究领域二</td>
											<td>${supplyer.professor.research_two}</td>
										</tr>
										<tr>
											<td>职称</td>
											<td>${supplyer.professor.professiontitle}</td>
										</tr>
										<tr>
											<td>学历</td>
											<td>${supplyer.professor.education}</td>
										</tr>
										<tr>
											<td>职业</td>
											<td>${supplyer.professor.occupation}</td>
										</tr>
										<tr>
											<td>工作单位</td>
											<td>${supplyer.professor.workplace}</td>
										</tr>
									</tbody>
								</table>
								<div class="col-xs-6 col-lg-6"></div>
								<c:if test="${!empty supplyer.professor.website }">
									<button type="button" class="btn btn-info">
										<a href="#">进入个人网站</a>
									</button>
								</c:if>
							</div>
						</c:if>
						<c:if test="${supplyer_role=='企业用户' }">
							<div class="panel-heading">基本信息</div>
							<div class="panel-body" style="padding: 10px;">
								<table class="table table-striped">
									<tbody>
										<tr>
											<th colspan="2">【企业诚信档案】</th>
										</tr>
										<tr>
											<td>联系人</td>
											<td>${supplyer.user_name }</td>
										</tr>
										<tr>
											<td>邮箱</td>
											<td>${supplyer.company.email }</td>
										</tr>
										<tr>
											<td>电话</td>
											<td>${supplyer.company.phone }</td>
										</tr>
										<tr>
											<td>手机</td>
											<td>${supplyer.company.mobile }</td>
										</tr>
										<tr>
											<td>地区</td>
											<td>${supplyer.company.location }</td>
										</tr>
										<tr>
											<td>地址</td>
											<td>${supplyer.company.address }</td>
										</tr>
									</tbody>
								</table>
								<div class="col-xs-6 col-lg-6"></div>
								<c:if test="${!empty supplyer.company.companysite }">
									<button type="button" class="btn btn-info">
										<a href="#">进入公司网站</a>
									</button>
								</c:if>
							</div>
						</c:if>								
					</div>
				</div>	
			</div>
		</div><!--panel panel-default-->
		<div class="panel panel-default">
			<div class="panel-heading" style="height: 30px; background: #A8CBF2;"><h5 style="margin-top:1px; text-align:left;">回复</h5></div>
			<div class="panel-body">
				<table class="table table-striped">
                	<thead>  
        				<tr>  
          					<th>内容</th>
          					<th>回复人</th>                        
          					<th>回复时间</th>
          					 
        				</tr>  
      				</thead>
                    <tbody class="">
                    	<c:if test="${!empty page.result}">
 						<c:forEach items="${page.result}" var="info" varStatus="stat"> 
            			<tr>
           					<td width="80%">${info.reContent}</td>           			
           					<td width="10%">${info.user.user_name}</td>
           					<td width="10%"><fmt:formatDate value="${info.reDate}"></fmt:formatDate></td>           					
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
			     </div>
			</div>
		</div>
		<div>
		<form action="techsuppreply-save.action" name="myAction" id="myAction" method="post">
			<div class="conBox">
				<input type="hidden" name="infore.parentId" id="parentid"  value="${techsupp.id}" />
				<input type="hidden" name="infore.reType" id="techsuppretype"  value="技术供应" />
                <textarea name="infore.reContent" id="replyContent" rows="5" style="width:100%"></textarea>                     			                                                                            
	          	<div class="subBtnBox" style="margin-left:400px;width:400px;">
	          		<input type="button" class="btn btn-success" onclick="right();" value="回复" />
	        		<input type="button"  class="btn btn-default" value="取消" id="cancel"/>
	          	</div>     
      		</div>
		</form>
	</div>
</div>	
</body>
</html>