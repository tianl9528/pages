<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<title>求职信息编辑</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>
</head>
<body>
	<div class="panel panel-default">
						<div class="panel-heading">编辑求职信息</div>
						<div class="panel-body">
							<form class="form-horizontal" role="form" action="jobseekupdate.action?id=${js.user.user_id}" enctype="multipart/form-data" method="post">
								<div class="form-group">
									
									<label for="name" class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-6" style="width:200px">
										<input type="text" class="form-control" id="name" name="jobseek.applyername" value="${js.user.user_name }" placeholder="输入您的真实姓名">
									</div>												
									<label for="education" class="col-sm-2 control-label">学历</label>
									<div class="col-sm-6" style="width:200px">
										<input type="text" class="form-control" id="eduction" name="jobseek.appdegree" placeholder="输入您的学历，如本科" value="${js.appdegree}">
									</div>
								</div>
								<div class="form-group">	
									<label for="major" class="col-sm-2 control-label">专业</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="major" name="jobseek.appmajor" placeholder="如：农业生态管理" value="${js.appmajor}">
										</div>
								</div>
								<div class="form-group">
									<label for="college" class="col-sm-2 control-label">毕业院校</label>
									<div class="col-sm-6">
										<input type="text" class="form-control" id="college" name="jobseek.appschool" placeholder="输入您的毕业院校" value="${js.appschool}">
									</div>
								</div>
								<div class="form-group">
									<label for="postion" class="col-sm-2 control-label">求职岗位</label>
									<div class="col-sm-6" style="width:200px">
										<input  type="text" class="form-control" id="postion" name="jobseek.expjob" placeholder="输入您期望的岗位" value="${js.expjob}">
										
									</div>
									<label for="salary" class="col-sm-2 control-label">期待的待遇</label>
									<div class="col-sm-6 textsmall">
										<input type="text" class="form-control" id="salary" name="jobseek.expsalary" placeholder="输入您对薪资的期望值" value="${js.expsalary}">
									</div>
									<label class="col-sm-2 control-label tip-text">元（RMB）</label>
								</div>
								<div class="form-group">
									<label for="address" class="col-sm-2 control-label">现居地址</label>
									<div class="col-sm-6" style="width:520px">
										<input type="text" class="form-control" id="address" name="jobseek.appaddress" placeholder="输入您的住址" value="${js.appaddress}">
									</div>
								</div>
								<div class="form-group">
									<label for="postcode" class="col-sm-2 control-label">邮编</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="postcode" name="jobseek.apppostcode"  placeholder="输入您的住址邮编" value="${js.apppostcode}">
									</div>
									<label for="fixphone" class="col-sm-2 control-label">固定电话</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="fixphone" name="jobseek.appphone" placeholder="输入您的固定电话" value="${js.appphone}">
									</div>
								</div>
								<div class="form-group">
									<label for="mphone" class="col-sm-2 control-label">手机号</label>
									<div class="col-sm-6" style="width:200px;">
										<input type="text" class="form-control" id="mphone" name="jobseek.appmobile" placeholder="输入您的手机号码" value="${js.appmobile}">
									</div>
									<label for="linkmail" class="col-sm-2 control-label">联系人邮箱</label>
									<div class="col-sm-6" style="width:200px;"> 
										<input type="text" class="form-control" id="linkmail" name="jobseek.appemail" placeholder="输入联系人邮箱" value="${js.appemail}">
									</div>
								</div>
								<div class="form-group" >
									<label for="remarks" class="col-sm-2 control-label">备注</label>
									<div class="col-sm-6" style="width:520px;">
										<textarea class="form-control" row="9" id="goodsinfo" name="jobseek.others" placeholder="可以输入您的个人补充信息，如技能、相关证书等" style="height:100px" >${js.others}</textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="remarks" class="col-sm-2 control-label">简历</label>
									<div class="col-sm-6" style="width:300px;">
										<input type="file" name="reportFiles" class="form-control itemManagerInput"  id="resume" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
										<button type="submit" onclick="return checkJobseek(this);" class="btn btn-success col-sm-3" style="width:80px">发布</button>
										<button type="reset" onclick="goback();" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
									</div>
								</div>
							</form><!--form-horizontal-->
						</div>
					</div><!--panel panel-default-->
</body>
</html>