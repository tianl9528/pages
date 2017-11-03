<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%String base_root = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>专家咨询>>农技咨询</title>
<style>
	.tip {
		border:1px solid #FDD1AB;
		background-color:#FFF7E4;
		width:400px;
		height:30px;
		color:#6D4D00;
		margin-top:0px;
		margin-left:80px;
	}
	.consult {
		border:1px solid #CCC; 
		padding:5px;
		height:320px;
	}
	.content {
		margin-top:30px;
	}
</style>
<script type="text/javascript">
	
</script>

</head>
<body> 
	<div style="padding:20px 10px 0 10px">
		<div class="panel panel-default">
			<div class="panel-heading"
					style="background: #A8CBF2; padding: 5px 5px 5px 10px; font-size: 20px; color: white; height: 30px">				
				<div class="row">
					<div class="col-xs-10 xol-lg-10" style="text-align:left;">
						
					</div>
					<div class="col-xs-2 col-lg-2">
						<a href="expertConsult.action">返回上一级</a>
					</div>
				</div>	
			</div>
			<div class="panel-body" style="padding: 5px;">
				<div class="col-xs-4 col-lg-4" style="padding:0; margin-top:5px;">
					<div class="panel panel-default">
						<div class="panel-heading">
						<img src="<%=request.getContextPath()%>/theme/images/question/exp.png" style="width:30px;height:30px;" alt="..." class=""/>
						专家详细信息
						</div>
						<div class="panel-body" style="padding: 5px;">
							<table class="table table-striped">
								<tbody>
									<tr>
										<td width="25%">姓名</td>
										<td>${expert.user_name}</td>
									</tr>
									<tr>
										<td>出生日期</td>
										<td><fmt:formatDate value="${expert.professor.birthdate}"></fmt:formatDate></td>
									</tr>
									<tr>
										<td>学历</td>
										<td>${expert.professor.education}</td>
									</tr>
									<tr>
										<td>职称</td>
										<td>${expert.professor.professiontitle}</td>
									</tr>
									<tr>
										<td>研究领域</td>
										<td>${expert.professor.research_one}</td>
									</tr>
									<tr>
										<td>工作单位</td>
										<td>${expert.professor.workplace}</td>
									</tr>
									<tr>
										<td>职业</td>
										<td>${expert.professor.occupation}</td>
									</tr>									
									<tr>
										<td>学术简历</td>
										<td>${expert.professor.resume}</td>
									</tr>
									<tr>
										<td>个人网站</td>
										<td>${expert.professor.website}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-xs-8 col-lg-8" style="padding: 10px;">
					<div class="consult">
						<div class="tip">
							<h5 style="text-align:center;">请在以下选择您的问题类型和填写您的问题内容</h5>
						</div>
						<div class="content">
							<form class="form-horizontal" role="form" action="questionsave.action?id=${expert.user_id}" method="post">
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
							      <textarea class="form-control" rows="12" id="content" name="opq.question" placeholder="请输入问题内容" style="height:100px"></textarea>
							    </div>
							  </div>
							  <div class="form-group">
								<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
									<button type="submit" class="btn btn-success col-sm-3" style="width:80px" onclick="validate()">提交</button>
									<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
								</div>
							 </div>
							</form>
						</div>
					</div>
				</div>	
			</div>
		</div><!--panel panel-default-->
	</div>	
</body>
</html>