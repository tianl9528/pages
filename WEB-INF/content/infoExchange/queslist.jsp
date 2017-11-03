<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=request.getContextPath()%>/theme/css/base/jquery.ui.all.css" rel="stylesheet">

<title>信息交流>>技术提问</title>
<style type="text/css">
	.tip {
		border:1px solid #FDD1AB;
		background-color:#FFF7E4;
		width:400px;
		height:30px;
		color:#6D4D00;
		margin-top:0px;
		margin-left:80px;
	}
	.content {
		margin-top:20px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#ques").click(function(){
			$("#myques").show();
			$("#hot").hide();
			$("#resovled").hide();
			$("#unresolved").hide();
		});
		
		$("#reset").click(function(){
			$("#myques").hide();
			$("#hot").show();
			$("#resovled").show();
			$("#unresolved").show();
		});
		
		$("#type").click(function(){
			$("#typec").toggle();
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
			$("#quesform").submit();			
		}
	}
</script>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div id="tip" title="提示" style="display:none;">
			<p>您当前的身份是${user_role }，权限不足，请登录</p>
		</div>
		<div class="panel panel-default" style="border:none;">
			<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="infoExch.action">返回上一级</a>
						</div>
					</div>				
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-xs-4 col-lg-4" style="padding-left:5px;">
					<!-- 
						<div class="panel panel-success">
							<div class="panel-heading">
							<img src="<%=request.getContextPath()%>/theme/images/question/ny.png" style="width:25px;height:25px;" alt="..." class=""/>
								<a href="#" id="type">农技问题分类</a>
							</div>
							<div class="panel-body" style="height:400px; display:none;" id="typec">
								<table class="table table-hover" style="text-align:center;">
									<tbody>
										<tr>
											<td><a href="#">植保技术</a></td>
										</tr>
										<tr>
											<td><a href="#">种植技术</a></td>
										</tr>
										<tr>
											<td><a href="#">大棚技术</a></td>
										</tr>
										<tr>
											<td><a href="#">农药技术</a></td>
										</tr>
										<tr>
											<td><a href="#">病虫防治技术</a></td>
										</tr>
										<tr>
											<td><a href="#">加工储藏技术</a></td>
										</tr>
										<tr>
											<td><a href="#">养殖技术</a></td>
										</tr>
										<tr>
											<td><a href="#">农机技术</a></td>
										</tr>
										<tr>
											<td><a href="#">农村能源设施技术</a></td>
										</tr>
										<tr>
											<td><a href="#">其他</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						 -->
						<div class="panel panel-success">
							<div class="panel-heading">
							<img src="<%=request.getContextPath()%>/theme/images/question/tw.jpg" style="width:25px;height:25px;" alt="..." class=""/>
								<a href="#" id="ques">我要提问</a>
							</div>
							
						</div>
					</div>
					<div class="col-xs-8 col-lg-8" style="margin-left:-20px;">
						<div class="panel panel-default" style="margin-right:-30px;" id="hot">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-10 xol-lg-10" style="text-align:left;">
									<img src="<%=request.getContextPath()%>/theme/images/question/hot.png" style="width:30px;height:30px;" alt="..." class=""/>
										热点问题
									</div>
									<div class="col-xs-2 col-lg-2" style="text-align:right;">
										<a href="morehotques.action">更多>></a>
									</div>
								</div>
							</div>
							<div class="panel-body" style="height:200px;">
								<table class="table">
									<thead>
										<tr>
											<th width="50%">问题</th>
											<th width="25%">分类</th>
											<th width="15%">时间</th>
											<th width="10%">回答</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${!empty hotlist}">
										<c:forEach items="${hotlist}" var="opq" begin="0" end="4"> 
											<tr>
												<td><a href="quesdetail.action?id=${opq.id}">${opq.question}</a></td>
												<td>${opq.questionTitle}</td>
												<td><fmt:formatDate value="${opq.quesdate}"></fmt:formatDate></td>
												<td>${opq.recount}</td>
											</tr>
										</c:forEach>
										</c:if>
									</tbody>
								</table>
								<c:if test="${empty hotlist}">没有数据！</c:if>
							</div>
						</div>
						<div class="panel panel-default" style="margin-right:-30px;" id="resovled">
							<div class="panel-heading" style="text-align:left">
								<div class="row">
									<div class="col-xs-10 xol-lg-10" style="text-align:left;">
									<img src="<%=request.getContextPath()%>/theme/images/question/yjj.png" style="width:30px;height:30px;" alt="..." class=""/>
										已解答问题
									</div>
									<div class="col-xs-2 col-lg-2" style="text-align:right;">
										<a href="morereques.action">更多>></a>
									</div>
								</div>
							</div>
							<div class="panel-body" style="height:250px;">
								<table class="table table-striped">
									<thead>
										<tr>
											<th width="50%">问题</th>
											<th width="25%">分类</th>
											<th width="15%">时间</th>
											<th width="10%">回答</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${!empty relist}">
										<c:forEach items="${relist}" var="opq" begin="0" end="4"> 
											<tr>
												<td><a href="quesdetail.action?id=${opq.id}">${opq.question}</a></td>
												<td>${opq.questionTitle}</td>
												<td><fmt:formatDate value="${opq.quesdate}"></fmt:formatDate></td>
												<td>${opq.recount}</td>
											</tr>
										</c:forEach>
										</c:if>
									</tbody>		
								</table>
								<c:if test="${empty relist}">没有数据！</c:if>
							</div>
						</div>
						<div class="panel panel-default" style="margin-right:-30px;" id="unresolved">
							<div class="panel-heading" style="text-align:left">
								<div class="row">
									<div class="col-xs-10 xol-lg-10" style="text-align:left;">
									<img src="<%=request.getContextPath()%>/theme/images/question/wjj.jpg" style="margin:0;width:25px;height:25px;" alt="..." class=""/>
										待解答问题
									</div>
									<div class="col-xs-2 col-lg-2" style="text-align:right;">
										<a href="moreunreques.action">更多>></a>
									</div>
								</div>
							</div>
							<div class="panel-body" style="height:250px;">
								<table class="table table-striped">
									<thead>
										<tr>
											<th width="50%">问题</th>
											<th width="25%">分类</th>
											<th width="15%">时间</th>
											<th width="10%">回答</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${!empty unrelist}">
										<c:forEach items="${unrelist}" var="opq" begin="0" end="4"> 
											<tr>
												<td><a href="quesdetail.action?id=${opq.id}">${opq.question}</a></td>
												<td>${opq.questionTitle}</td>
												<td><fmt:formatDate value="${opq.quesdate}"></fmt:formatDate></td>
												<td>${opq.recount}</td>
											</tr>
										</c:forEach>
										</c:if>										
									</tbody>
								</table>
								<c:if test="${empty unrelist}">没有数据！</c:if>
							</div>
						</div>
						<div class="panel panel-default" style="margin-right:-30px;display:none" id="myques">
							<div class="panel-heading" style="text-align:left">
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										我要提问
									</div>									
								</div>
							</div>
							<div class="panel-body" style="height:300px;">
								<div class="tip">
									<h5 style="text-align:center;">请在以下选择您的问题类型和填写您的问题内容</h5>
								</div>
								<div class="content">
									<form class="form-horizontal" id="quesform" action="gequestionsave.action" method="post">
									  <div class="form-group">
									    <label for="title" class="col-sm-2 control-label">问题类型</label>
									    <div class="col-sm-9">
									      <select id="title" name="opq.questionTitle" class="form-control rightleg" style="width:200px;">
											<option value="0" selected="selected">请选择</option>
											<option value="植保技术">植保技术</option>
											<option value="种植技术">种植技术</option>
											<option value="大棚技术">大棚技术</option>
											<option value="农药技术">农药技术</option>
											<option value="病虫防治技术">病虫防治技术</option>
											<option value="加工储藏技术">加工储藏技术</option>
											<option value=">养殖技术">养殖技术</option>
											<option value="农机技术">农机技术</option>
											<option value="农村能源设施技术">农村能源设施技术</option>
											<option value="其他">其他</option>
										</select>
									    </div>
									  </div>
									  <div class="form-group">
									    <label for="content" class="col-sm-2 control-label">问题内容</label>
									    <div class="col-sm-9">
									      <textarea class="form-control" rows="15" id="content" name="opq.question" placeholder="请输入问题内容" style="height:110px"></textarea>
									    </div>
									  </div>
									  <div class="form-group">
										<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
											<button type="button" class="btn btn-success col-sm-3" style="width:80px" onclick="right()">提交</button>
											<button type="button" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;" id="reset">取消</button>
										</div>
									 </div>
									</form>
								</div>					
							</div>
						</div>										
					</div>				
				</div>				
			</div>
		</div>
	</div>
</body>
</html>