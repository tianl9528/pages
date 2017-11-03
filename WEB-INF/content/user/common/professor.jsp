<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import= "sunit.accesscontrol.object.User"%>
<%@ page import= "java.util.Date"%>
<%@ page import= "java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%
	String base_root = request.getContextPath();
	User u = (User) request.getAttribute("user");
	String strDate = "";
	if (u.getProfessor().getBirthdate() != null) {
		Date date = u.getProfessor().getBirthdate();
		strDate = new SimpleDateFormat("yyyy-MM-dd").format(date);
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 

<title>用户空间>> 专家信息修改与完善</title>
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">

<script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker({
    	showAnim:"clip",
        changeYear: true
    });
  });
  
  function check(){
	  var yhNname = document.getElementById("name").value;
	    var yhPassword1 = document.getElementById("password1").value;
	    var yhPassword2 = document.getElementById("password2").value;
	    if(yhNname.length==0 || yhNname.replace(/\s+/g,"")=="" || yhNname==null){ /* 验证用户名是否为空 */
	        alert("请输入用户名字");
	        return false;
	    }
	   
	   
	    if(yhPassword1.length==0){ /* 验证密码是否为空 */
	        alert("密码不能为空");
	        return false;
	    }else{
			if(yhPassword1!=yhPassword2){  /* 验证两次输入的密码是否一致 */
					alert("两次密码不一致");
					return false;
			}
	    }
	  return true;
  }
</script>
</head>
<body >
	<div style="max-width:1007px;min-width:722px;margin-top:15px;">
			<div class="panel panel-default">
				<div class="panel-heading">专家信息修改与完善</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form" method="post" action="user-save.action?id=${user.user_id }" onSubmit="return checkforminput()" enctype="multipart/form-data">
						
							<div class="row" style="margin:0">
								<div class="row" style="margin:0">
								<div class="form-group">
									  <label for="name" class="col-lg-2 col-xs-2 control-label">姓名</label>
									  <div class="col-lg-5 col-xs-5">
										<input type="text" class="form-control" name="user.user_name" id="name" value="${user.user_name}"  placeholder="姓名">
									  </div>

								</div>
								</div>
								
								<div class="row" style="margin:0">
								<div class="form-group">
									<label for="sex" class="col-lg-2 col-xs-2 control-label">性别</label>
									<div class="col-lg-4 col-xs-4" style="padding-top:7px">
									  
										  <input style="margin-left:0px;" type="radio" name="user.sex" value="0"  <c:if test="${user.sex=='0'}">checked</c:if> /><label>男</label> 
					  &nbsp;&nbsp;<input  type="radio" name="user.sex" value="1"  <c:if test="${user.sex=='1'}">checked</c:if> /><label>女</label>

									</div>
								 </div>
								 </div>
								 
								 <div class="row" style="margin:0">
								 <div class="form-group">
									  <label for="birthday" class="col-lg-2 col-xs-2 control-label">出生日期</label>
									  <div class="col-lg-5 col-xs-5">
										<input type="text" class="form-control" placeholder="出生日期" name="user.professor.birthdate" id="datepicker" value="<%=strDate%>">
									  </div>
								</div>
								</div>
								
								<div class="row" style="margin:0">
								<div class="form-group ">
									  <label for="research_filed1" class="col-lg-2 col-xs-2 control-label">研究领域1</label>
									  <div class="col-lg-5 col-xs-5">
										<input type="text" class="form-control " id="research_filed1" placeholder="研究领域1" name="user.professor.research_one" value="${user.professor.research_one}">
									  </div>
								 </div>	
								 </div>
								 
								 <div class="row" style="margin:0">
								 <div class="form-group">
									<label for="research_filed2" class="col-lg-2 col-xs-2 control-label">研究领域2</label>
									<div class="col-lg-5 col-xs-5">
									<input type="text" class="form-control" id="research_filed2" placeholder="研究领域2" name="user.professor.research_two" value="${user.professor.research_two}">
									</div>
								 </div>
								 </div>
								
								<div class="col-lg-4 col-xs-4 col-lg-offset-8 col-xs-offset-8" style="margin-top:-240px">
									<img src="<%=request.getContextPath()%>${user.images_url}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" width="172px" height="180px"/>
									<label for="exampleInputFile" >
										上传头像
										<input type="file" value="上传头像" name="reportFiles"/>
									</label>
								</div>
								
							
							</div>
							
							<div class="row" style="margin:0">
							<div class="row" style="margin:0">
							<div class="form-group">
								  <label for="educational_background" class="col-lg-2 col-xs-2 control-label" >学历</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="educational_background" placeholder="学历" name="user.professor.education" value="${user.professor.education}">
								  </div>
								  <label for="job_title" class="col-lg-2 col-xs-2 control-label" >职称</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control"  placeholder="职称" name="user.professor.professiontitle" value="${user.professor.professiontitle}">
								  </div>
								  
							</div>
							</div>
							
							
							
							<div class="row" style="margin:0">
							<div class="form-group">
								  <label for="career" class="col-lg-2 col-xs-2 control-label ">职业</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="career" placeholder="职业" name="user.professor.occupation" value="${user.professor.occupation}">
								  </div>
								  <label for="workplace" class="col-lg-2 col-xs-2 control-label">工作单位</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="workplace" placeholder="工作单位" name="user.professor.workplace" value="${user.professor.workplace}">
								  </div>
							 </div>
							</div>						
							<div class="row" style="margin:0">
							<div class="form-group">
								  <label for="phone" class="col-lg-2 col-xs-2 control-label">手机</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="phone" placeholder="手机" name="user.mobile" value="${user.mobile}">
								  </div>
								  <label for="qq" class="col-lg-2 col-xs-2 control-label">QQ</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="qq" placeholder="QQ" name="user.qq" value="${user.qq}">
								  </div>
							 </div>
							</div>
							
							<div class="row" style="margin:0">
							<div class="form-group">
								  <label for="email" class="col-lg-2 col-xs-2 control-label ">Email</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="email" placeholder="Email" name="user.professor.email" value="${user.email}">
								  </div>
								  <label for="personal_website" class="col-lg-2 col-xs-2 control-label">个人网站</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="text" class="form-control" id="phone" placeholder="个人网站" name="user.mobile" value="${user.professor.website}">
								  </div>
							 </div>
							</div>
							
							</div>
							
							<div class="row" style="margin:0">
							<div class="form-group">
								<label for="academic_resume" class="col-lg-2 col-xs-2 control-label">学术简历</label>
								<div class="col-lg-8 col-xs-8">
									<textarea class="form-control" rows="10" id="academic_resume" name="user.professor.resume" >${user.professor.resume}</textarea>
								</div>
								
							</div>
							</div>
							 
							<div class="row" style="margin:0">
							<div class="row" style="margin:0">
							<div class="form-group">
									  <label for="loginname" class="col-lg-2 col-xs-2 control-label">登录名</label>
									  <div class="col-lg-4 col-xs-4">
										<input class="form-control" disabled="true" placeholder="登录名" value="${user.log_name}">
									  </div>
							</div>
							</div>							
							
							<div class="row" style="margin:0">
							<div class="form-group">
								  <label for="pwd" class="col-lg-2 col-xs-2 control-label">密码</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="password" class="form-control" id="password1" name="user.password"  value="${user.password}" placeholder="密码">
								  </div>
								  <label for="ensurepwd" class="col-lg-2 col-xs-2 control-label">确认密码</label>
								  <div class="col-lg-4 col-xs-4">
									<input type="password" class="form-control" id="password2"  value="${user.password}" placeholder="确认密码">
								  </div>
							 </div>
							</div>
							</div>
						
							<div class="row" style="margin:0">
							<div class="form-group ">
								  <label for="public" class="col-lg-3 col-xs-3 control-label">是否公开个人资料
								  </label>

								  <div class="col-lg-4 col-xs-4" style="padding:7px">
								  
									<label><input style="margin-left:0px;" type="radio" checked="checked" name="sex" id="public" value="yes" />是</label>&nbsp;
									<label><input style="margin-left:0px;" type="radio" name="sex" id="public" value="no" />否</label>

								  </div>
							</div>
							</div>
							<div class="form-group ">
								<div class="col-lg-6 col-lg-offset-4 col-xs-6 col-xs-offset-4">
									<button type="submit" class="btn btn-success col-lg-2 col-xs-2">提交</button>
									<button type="reset" class="btn btn-danger col-lg-2 col-lg-offset-1 col-xs-2 col-xs-offset-1">重置</button>
								</div>
							</div>
							
						</form><!--form-horizontal-->
					</div>
			</div><!--panel panel-default-->
	</div>
</body>
</html>