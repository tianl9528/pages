<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=base_root%>/theme/css/user.css" rel="stylesheet">
<title>兴趣标签-新增</title>
</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">兴趣标签-新增</div>
		<div class="panel-body">
			<form class="form-horizontal" id="rsssave" action="interesave.action" method="post" enctype="multipart/form-data">			
				<div class="form-group">
					<label for="goods" class="col-sm-2 control-label">名称</label>
					<div class="col-sm-6" style="width:200px">
						<input type="text" class="form-control" id="rssname" name="intere.name" placeholder="输入名称">
					</div>
				</div>
				<div class="form-group" >
					<label for="goodsinfo" class="col-sm-2 control-label">描述</label>
					<div class="col-sm-6 input_width1">
						<textarea class="form-control" rows="9" id="rssdesc" name="intere.descri" placeholder="请输入描述" style="height:100px"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 " style="padding:15px 0 10px 30px">
						<button type="submit" class="btn btn-success col-sm-3" style="width:80px">保存</button>
						<button type="reset" class="btn btn-danger col-sm-3" style="width:80px;margin-left:25px;">取消</button>
					</div>
				</div>
			</form><!--form-horizontal-->
		</div>
	</div><!--panel panel-default-->
</body>
</html>