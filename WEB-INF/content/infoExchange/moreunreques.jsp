<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>技术提问>>待解答问题</title>
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
							<a href="queslist.action" >返回上一级</a>
						</div>
					</div>						
			</div>
			<div class="panel-body">															
				<div class="panel panel-default" style="" >
					<div class="panel-heading" style="text-align:left">
						<div class="row">
							<div class="col-xs-10 xol-lg-10" style="text-align:left;">
							<img src="<%=request.getContextPath()%>/theme/images/question/wjj.jpg" style="margin:0;width:25px;height:25px;" alt="..." class=""/>
								待解答问题
							</div>									
						</div>
					</div>
					<div class="panel-body" style="">
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
								<c:forEach items="${unrelist}" var="opq"> 
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
			</div>
		</div>
	</div>
</body>
</html>