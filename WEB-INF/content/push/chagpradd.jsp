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

<title>特色农产品-新增</title>

<script type="text/javascript">
	function goback() {
		history.go(-1);
	}
</script>

</head>
<body>
<div class="panel panel-default">
	<div class="panel-heading">特色农产品-新增</div>
		<div class="panel-body">
			<form class="form-horizontal" id="chagprsave" action="chagprsave.action" method="post" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4 firstcol">									
						<div class="form-group">
							<label for="goods" class="col-sm-2 control-label">产品名称</label>
							<div class="col-sm-6" style="width:200px">
								<input type="text" class="form-control" id="spName" name="chaAgriProInfo.agriname" placeholder="输入产品名称">
							</div>
						</div>
						<div class="form-group" >
							<label for="goodsinfo" class="col-sm-2 control-label">产品描述</label>
							<div class="col-sm-6 input_width1">
								<textarea class="form-control" rows="9" id="goodsinfo" name="chaAgriProInfo.agridesc" placeholder="请输入相关的产品描述，如外观、大小，颜色等" style="height:100px"></textarea>
							</div>
						</div>
					</div><!--firstcol，第一列--->
					<div class="col-md-4">
						<div class="form-group">
							<img class ="img-thumbnail" src="#" style="width:300px;height:200px;"/>
							<label for="exampleInputFile" style="margin-left:10px">
								上传产品图片
								<input type="file" id="imgfile" value="上传图片" name="reportFiles" />
							</label>
						</div>
					</div><!--第二列-->
				</div>
				<div class="form-group">
					<label for="logistics" class="col-sm-2 control-label">产品类型</label>
					<div class="col-sm-10" style=" width:100px;">
						<select id="logis" name="chaAgriProInfo.agritype" class="form-control rightleg">
							<option value="" selected="selected">请选择</option>
							<option value="蔬菜">蔬菜</option>
							<option value="水产">水产</option>
							<option value="水果">水果</option>
							<option value="畜牧">畜牧</option>
							<option value="经济作物">经济作物</option>
							<option value="粮食作物">粮食作物</option>
							<option value="农副产品">农副产品</option>
							<option value="林业">林业</option>
							
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="logistics" class="col-sm-2 control-label">所属专业镇</label>
					<div class="col-sm-10" style=" width:100px;">
						<select id="logis" name="chaAgriProInfo.agritown" class="form-control rightleg">
							<option value="" selected="selected">请选择</option>
							<option value="根子镇">根子镇</option>
							<option value="谢鸡镇">谢鸡镇</option>
							<option value="泗水镇">泗水镇</option>
							<option value="公馆镇">公馆镇</option>
							<option value="电城镇">电城镇</option>
							<option value="博贺镇">博贺镇</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="logistics" class="col-sm-2 control-label">所属季节</label>
					<div class="col-sm-10" style=" width:100px;">
						<select id="logis" name="chaAgriProInfo.agriseason" class="form-control rightleg">
							<option value="" selected="selected">请选择</option>
							<option value="春季">春季</option>
							<option value="夏季">夏季</option>
							<option value="秋季">秋季</option>
							<option value="冬季">冬季</option>
						</select>
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