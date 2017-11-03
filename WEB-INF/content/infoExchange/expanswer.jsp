<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>专家答疑</title>
<style>
	
</style>
<script type="text/javascript">
	
</script>
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default" style="border:none;">
			<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="expquestion.action">返回上一级</a>
						</div>
					</div>						
			</div>
			<div class="panel-body">
				<div class="row">					
					<div class="col-xs-12 col-lg-12" style="">												
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
								问题详细
							</div>
							<div class="panel-body" style="height:110px;">	
								<c:if test="${!empty opq}">	
								<div class="row">
									<div class="col-xs-12 xol-lg-12" style="text-align:left;">
										问题：${opq.question}
									</div>									
								</div>
								<div class="row" style="height:15px;margin-top:30px;">
									<div class="col-xs-12 xol-lg-12" style="margin-left:15px;width:902px; border-bottom:1px dashed #ccc;"></div>
								</div>
								<div class="row" style="margin-top:0px;">
									<div class="col-xs-3 xol-lg-3" style=""></div>
									<div class="col-xs-3 xol-lg-3" style="color:#618FC0">
									问题分类：${opq.questionTitle}
									</div>
									<div class="col-xs-3 xol-lg-3" style="color:#618FC0">
									提问者：${opq.user.user_name}
									</div>
									<div class="col-xs-3 xol-lg-3" style="margin-left:-50px;color:#618FC0">
									发布时间：<fmt:formatDate value="${opq.quesdate}"></fmt:formatDate>	
									</div>
								</div>																																																																																																																																						
								</c:if>																											
								<c:if test="${empty opq}">没有数据！</c:if>
							</div>
						</div>						
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
								专家回答
							</div>
							<div class="panel-body" style="height:250px;">
								<form class="form-horizontal" role="form" action="expanwsersave.action" method="post">
									<div class="form-group">
									    <div class="col-sm-12">
									      <textarea style="height:180px;" class="form-control" rows="15" id="content" name="tqr.content" placeholder="请输入您的回答内容" style="height:180px"></textarea>
									    </div>
									    <input type="hidden" name="tqr.parentid" id="parentid"  value="${opq.id}" /> 
							  		</div>
							  		 <div class="form-group">
										<div class="col-sm-offset-2 " style="margin-top:-15px;padding:15px 0 10px 30px">
											<button type="submit" class="btn btn-success col-sm-3" style="width:80px" onclick="validate()">提交</button>
											<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
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
</body>
</html>