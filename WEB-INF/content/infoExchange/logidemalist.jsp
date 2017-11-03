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
<title>物流需求</title>
<style type="text/css">
	.btnNew {
		float:left;
	}
	.btn-default{
		width:100px;
		height:35px;
		background:#F9F9F9;
	}
</style>
<style>
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset button{ width:100px; height:30px; }
.text{
	width:220px;
}	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#select").change(function(){
			var orderway = $("#select").val();
			window.location.href="/gdzyzmm/infoExchange/logidemalist.action?orderway="+orderway;
		});
	});
</script>
<script type="text/javascript">
	function right(){			
		var role = "${user_role}";
		if(role == "游客"||role=="待审核用户"){
			$( "#tip1" ).dialog({
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
			$( "#tip1" ).dialog( "open" );
		}
		else if(role == "专家用户"){
			$( "#tip2" ).dialog({
				autoOpen: false,
				height: 180,
				width: 300,
				modal: true,
				buttons: {
					"确定": function() {							
						$( this ).dialog( "close" );
					},
				},
				close: function() {
					
				}
			});			
			$( "#tip2" ).dialog( "open" );
		}
		else{
			window.location.href="/gdzyzmm/infopublish/publish.action";			
		}
	}
</script>
</head>
<body> 
	<div style="max-width:1007px;min-width:970px;margin:0 auto">
		<div id="tip1" title="提示" style="display:none;">
			<p>您当前的身份是${user_role}，权限不足，请登录</p>
		</div>
		<div id="tip2" title="提示" style="display:none;">
			<p>您当前的身份是${user_role}，不能发布物流需求信息</p>
		</div>
    	<div class="panel panel-success">
        	<div class="panel-heading" id="head">
            	<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						物流需求列表
					</div>
					<div class="col-xs-2 col-lg-2">
						<a href="infoExch.action">返回上一级</a>
					</div>
				</div>	
            </div>
            <div class="panel-body">
            	<div class="row" style="padding: 0 0 0 10px;">
					<!--第一列，信息检索-->
					<div class="col-xs-2 col-lg-2">
						<div class="btnNew">
   							<button class="btn btn-default" onclick="right();">我要发布</button>
   						</div>
					</div>
					<div class="col-xs-3 col-lg-3">
						<div class="form-group" style="margin-top:8px;">
							<label for="tip" class="control-label">选择排序方式：</label>
						</div>
					</div>
					<div class="col-xs-3 col-lg-3">							           
		            	<div class="form-group" style="margin-left:-120px;">
		            		<select id="select" name="orderway" class="form-control" style="width:200px;">
		            			<option <c:if test="${orderway == '3'}">selected</c:if> value="3">默认排序</option>
								<option <c:if test="${orderway == '1'}">selected</c:if> value="1">按时间排序</option>
								<option <c:if test="${orderway == '2'}">selected</c:if> value="2">按回复数排序</option>								
							</select>
		            	</div>
					</div>
					<!--第二列-->
					<form class="form-horizontal" role="form" method="post">							
						<div class="col-xs-3 col-lg-3">							
							<div class="form-group">
								<input name="searchInput" type="text" class="form-control" style="width:200px;"	placeholder="搜索">									
							</div>							
						</div>
						<div class="col-xs-1 col-lg-1" >
							<div class="form-group">
								<button type="submit" class="btn btn-success col-sm-12">
									<b>搜索</b>
								</button>
							</div>
						</div>
					</form> 						
				</div>
				
				<div class="tab-content" style="margin-top:5px;">
            	  <!-- 默认 开始 -->
				  <div class="" id="default">
		            	<table class="table table-striped">
		                	<thead>  
		        				<tr>  
		          					<th>主题</th>
		          					<th>发布人</th>                        
		          					<th>发布时间</th>
		          					<th>回复</th> 
		        				</tr>  
		      				</thead>
		                    <tbody class="">
		                    	<c:if test="${!empty page.result}">
		 						<c:forEach items="${page.result}" var="logidema" varStatus="stat"> 
		            			<tr>
		           					<td width="70%"><a href="logidemadetail.action?id=${logidema.id}&demanderid=${logidema.user.user_id}" class="active">寻求车源：&nbsp;&nbsp;&nbsp;${logidema.startPlace}&nbsp;至&nbsp;${logidema.arrivePlace}</a></td>           			
		           					<td width="10%">${logidema.user.user_name}</td>
		           					<td width="10%"><fmt:formatDate value="${logidema.ldPubDate}"></fmt:formatDate></td>           					
		            				<td width="10%">${logidema.recount}</td>  
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
		          	</div><!-- 默认结束 -->		          			
		          </div>
            </div>            
        </div>     
   </div>
</body>
</html>