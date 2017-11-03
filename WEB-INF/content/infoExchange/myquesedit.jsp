<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>我的提问>>修改 </title>
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
</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default">
			<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">
					<div class="row">
						<div class="col-xs-10 xol-lg-10">
							
						</div>
						<div class="col-xs-2 col-lg-2">
							<a href="myquestion.action">返回上一级</a>
						</div>
					</div>						
			</div>
			<div class="panel-body">
				<div class="row">					
					<div class="col-xs-12 col-lg-12" style="">												
						<div class="panel panel-default" style="">
							<div class="panel-heading" style="text-align:left">
								<img src="<%=request.getContextPath()%>/theme/images/question/question.jpg" style="width:30px;height:30px;" alt="..." class=""/>
								问题详细
							</div>
							<div class="panel-body">	
								<div class="tip">
									<h5 style="text-align:center;">请在以下选择您的问题类型和填写您的问题内容</h5>
								</div>
								<div class="content">
									<form class="form-horizontal" id="quesform" action="myquesupdate.action?id=${opq.id}" method="post">
									  <div class="form-group">
									    <label for="title" class="col-sm-2 control-label">问题类型</label>
									    <div class="col-sm-9">
									      <select id="title" name="opq.questionTitle" class="form-control rightleg" style="width:200px;">
											<option <c:if test="${opq.questionTitle == '植保技术'}">selected</c:if> value="植保技术">植保技术</option>
											<option <c:if test="${opq.questionTitle == '种植技术'}">selected</c:if> value="种植技术">种植技术</option>
											<option <c:if test="${opq.questionTitle == '大棚技术'}">selected</c:if> value="大棚技术">大棚技术</option>
											<option <c:if test="${opq.questionTitle == '农药技术'}">selected</c:if> value="农药技术">农药技术</option>
											<option <c:if test="${opq.questionTitle == '病虫防治技术'}">selected</c:if> value="病虫防治技术">病虫防治技术</option>
											<option <c:if test="${opq.questionTitle == '加工储藏技术'}">selected</c:if> value="加工储藏技术">加工储藏技术</option>
											<option <c:if test="${opq.questionTitle == '养殖技术'}">selected</c:if> value="养殖技术">养殖技术</option>
											<option <c:if test="${opq.questionTitle == '农机技术'}">selected</c:if> value="农机技术">农机技术</option>
											<option <c:if test="${opq.questionTitle == '农村能源设施技术'}">selected</c:if> value="农村能源设施技术">农村能源设施技术</option>
											<option <c:if test="${opq.questionTitle == '其他'}">selected</c:if> value="其他">其他</option>
										</select>
									    </div>
									  </div>
									  <div class="form-group">
									    <label for="content" class="col-sm-2 control-label">问题内容</label>
									    <div class="col-sm-9">
									      <textarea class="form-control" rows="15" id="content" name="opq.question" placeholder="请输入问题内容" style="height:110px">${opq.question}</textarea>
									    </div>
									  </div>
									  <div class="form-group">
										<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
											<button type="submit" class="btn btn-success col-sm-3" style="width:80px" onclick="#">提交</button>
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
	</div>
</body>
</html>