<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String base_root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户兴趣管理</title>
<style type="text/css">
	.title{
		text-align:center;
		font-size:14px;
	}
	.intere{
		font-size:14px;
		width:200px;
		height:40px;
		margin-left:20px;
	}
	.select{
		margin-left:20px;
		margin-top:10px;
	}
	#ptselect{
		display:none;
	}
	#cpselect{
		display:none;
	}
	.records{
		font-size:14px;
	}
</style>
<script type="text/javascript">
	function ptshow(){
		$("#ptselect").show();
		$("#nopt").hide();
	}
	function pthide(){
		$("#ptselect").hide();
		$("#nopt").show();
	}
	function submit(){
		var pt = $('input:radio[name="optionRadios"]:checked').val();
		//alert(pt);
		location.href="ptadd.action?proTown="+pt;
	}
	function cpshow(){
		$("#cpselect").show();
		$("#nocp").hide();
	}
	function cphide(){
		$("#cpselect").hide();
		$("#nocp").show();
	}
	function addcp(){
		var chk_value = [];
		$('input:checkbox[name="optionCheckboxs"]:checked').each(function(){
			chk_value.push($(this).val());
		});
		if(chk_value.length == 0){
			alert("你没有选中");
		}
		else if(chk_value.length != 0){
			//alert(chk_value);
			location.href="cpadd.action?product="+chk_value;
		}
	}
	function prshow(){
		$("#cpselect").show();
	}
	function upptshow(){
		$("#ptselect").show();
	}
</script>
</head>
	<div style="max-width: 1007px; min-width: 978px">
		<div class="row">
			<div class="col-lg-2 col-xs-2">
				<div class="col-lg-12 col-xs-12">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default"
							style="margin: 20px 0 0 0; width: 165px">
							<div class="panel-heading">
								<h4 class="panel-title lh30" style="text-align:center;">兴趣管理</h4>
							</div>
                           <div class="panel-body">
                               <div class="tabbable">
                                   <ul class="nav bs-sidenav" id="tabTit">
                                       <li><a href="#tab1" data-toggle="tab">用户定制</a></li>
                                       <li><a href="#tab2" data-toggle="tab">所属专业镇</a></li>
                                       <li><a href="#tab3" data-toggle="tab">主营产品</a></li>
                                        
                                       <li><a href="#tab4" data-toggle="tab">浏览过的</a></li>
                                   </ul>
                               </div>
                           </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-10 col-xs-10">
				<div class="tab-content col-lg-12 col-xs-12"
					style="padding: 0px 0 0 10px;margin:20px 5px 5px 5px;">
					<div class="tab-pane  active" id="tab1">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title lh30" style="text-align:center;">兴趣标签定制</h4>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6 col-xs-6 divide1">
										<div class="panel panel-success">
											<div class="panel-body">
												<c:if test="${!empty intereSet}">
													<div class="row">
														<p class="title">你定制的兴趣标签</p>
													</div>
													<div class="row"  style="margin-top:-25px;">
														<hr>
													</div>
													<c:forEach items="${intereSet}" var="intere" varStatus="stat">
														<div class="row">
															<div class="col-lg-6 col-xs-6">
																<div class="intere">${intere.name}</div>
															</div>
															<div class="col-lg-6 col-xs-6">
																<a href="userdel.action?id=${intere.id}">
																	<img src="<%=base_root%>/theme/pushimg/del.jpg" height="20px" />
																</a>
															</div>
														</div>
													</c:forEach>
												</c:if>
												<c:if test="${empty intereSet}">
													<div class="row">
														<p class="title">你没有定制兴趣</p>
													</div>
													<div class="row"  style="margin-top:-25px;">
														<hr>
													</div>
													<div class="row">
														<p style="color:red;font-size:14px;text-align:center;">请在右边添加你感兴趣的标签</p>
													</div>
												</c:if>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-xs-6">
										<div class="panel panel-success">
											<div class="panel-body">
												<div class="row">
													<p class="title">全部兴趣标签</p>
												</div>
												<div class="row"  style="margin-top:-25px;">
													<hr>
												</div>
												<c:if test="${!empty intereList}">
												<c:forEach items="${intereList}" var="intere" varStatus="stat">
													<div class="row">
														<div class="col-lg-6 col-xs-6">
															<div class="intere">${intere.name}</div>
														</div>
														<div class="col-lg-6 col-xs-6">
															<a href="useradd.action?id=${intere.id}">
																<img src="<%=base_root%>/theme/pushimg/add.jpg" height="20px" />
															</a>
														</div>
													</div>
												</c:forEach>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--tab-pane tab1-->
					<div class="tab-pane" id="tab2">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title lh30" style="text-align:center;">您所在专业镇</h4>
							</div>
							<div class="panel-body">
								<c:if test="${!empty user.protown}">
									<div class="row">
										<div class="intere">${user.protown}</div>
									</div>
									<div class="row">
										<div class="col-lg-4 col-xs-4"></div>
										<div class="col-lg-4 col-xs-4">
											<a href="javascript:upptshow()" style="color:red;"><b>修改</b></a>
										</div>
									</div>
								</c:if>
								<c:if test="${empty user.protown}">
									<div class="title" id="nopt">
										没有专业镇信息，添加&nbsp;<a href="javascript:ptshow()" style="color:red;"><b>请点击</b></a>
									</div>
								</c:if>
								<div id="ptselect">
									<label for="name">请选择你所在专业镇</label>
									<div class="select">
										<label class="checkbox-inline">
											<input type="radio" name="optionRadios" id="ra1" value="根子镇" checked/>根子镇
										</label>
										<label class="checkbox-inline">
											<input type="radio" name="optionRadios" id="ra1" value="谢鸡镇" />谢鸡镇
										</label>
										<label class="checkbox-inline">
											<input type="radio" name="optionRadios" id="ra1" value="泗水镇" />泗水镇
										</label>
										<label class="checkbox-inline">
											<input type="radio" name="optionRadios" id="ra1" value="博贺镇" />博贺镇
										</label>
										<label class="checkbox-inline">
											<input type="radio" name="optionRadios" id="ra1" value="公馆镇" />公馆镇
										</label>
										<label class="checkbox-inline">
											<input type="radio" name="optionRadios" id="ra1" value="电城镇" />电城镇
										</label>
										<div class="row">
											<div class="col-lg-8 col-xs-8"></div>
											<div class="col-lg-4 col-xs-4">
												<a href="javascript:submit()" class="btn btn-primary btn-xs" role="nutton">提交</a>
												<a href="javascript:pthide()" class="btn btn-primary btn-xs" role="nutton">取消</a>
											</div>																							
										</div>
									</div>
								</div>
							</div>
						</div>
					</div><!--tab-pane tab2-->

					<div class="tab-pane" id="tab3">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title lh30" style="text-align:center;">主营产品</h4>
							</div>
							<div class="panel-body">
								<c:if test="${!empty user.product}">
									<c:set value="${fn:split(user.product, ',')}" var="products"></c:set>
									<div class="row">
									<c:forEach items="${products}" var="product">										
										<div class="col-lg-1 col-xs-1">
											<div class="intere">${product}</div>
										</div>
										<div class="col-lg-1 col-xs-1">
											<a href="cpdel.action?product=${product}">
												<img src="<%=base_root%>/theme/pushimg/del.jpg" height="20px" />
											</a>
										</div>										
									</c:forEach>
									</div>
									<div class="row">
										<div class="col-lg-8 col-xs-8"></div>
										<div class="col-lg-4 col-xs-4">
											<a href="javascript:prshow()" style="color:red;"><b>继续添加</b></a>
										</div>
									</div>
								</c:if>
								<c:if test="${empty user.product}">
									<div class="title" id="nocp">
										没有主营产品信息，添加&nbsp;<a href="javascript:cpshow()" style="color:red;"><b>请点击</b></a>
									</div>
								</c:if>
								<div id="cpselect">
										<label for="name">请选择主营产品</label>										
										<div class="select">
											<c:if test="${!empty vegeList}">
											<div class="row">
												<label for="name">蔬菜</label>
											</div>											
											<div class="row">
												<c:forEach items="${vegeList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty fruiList}">
											<div class="row">
												<label for="name">水果</label>
											</div>
											<div class="row">
												<c:forEach items="${fruiList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty aquaList}">
											<div class="row">
												<label for="name">水产</label>
											</div>
											<div class="row">
												<c:forEach items="${aquaList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty ecroList}">
											<div class="row">
												<label for="name">经济作物</label>
											</div>
											<div class="row">
												<c:forEach items="${ecroList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty gcroList}">
											<div class="row">
												<label for="name">粮食作物</label>
											</div>
											<div class="row">
												<c:forEach items="${gcroList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty animList}">
											<div class="row">
												<label for="name">畜牧</label>
											</div>
											<div class="row">
												<c:forEach items="${animList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty foreList}">
											<div class="row">
												<label for="name">林业</label>
											</div>
											<div class="row">
												<c:forEach items="${foreList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<c:if test="${!empty byagList}">
											<div class="row">
												<label for="name">农副产品</label>
											</div>
											<div class="row">
												<c:forEach items="${byagList}" var="cap" varStatus="stat">
												<label class="checkbox-inline">
													<input type="checkbox" name="optionCheckboxs" value="${cap}" />${cap}
												</label>
												</c:forEach>
											</div>
										</c:if>
										<div class="row">
											<div class="col-lg-8 col-xs-8"></div>
											<div class="col-lg-4 col-xs-4">
												<a href="javascript:addcp()" class="btn btn-primary btn-xs" role="nutton">提交</a>
												<a href="javascript:cphide()" class="btn btn-primary btn-xs" role="nutton">取消</a>
											</div>																							
										</div>
										</div>
									</div>
							</div>
						</div>
					</div><!--tab3-->
					 
					<div class="tab-pane" id="tab4">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title lh30" style="text-align:center;">您浏览过的信息</h4>
							</div>
							<div class="panel-body">
								<c:if test="${!empty intmap}">
									<c:forEach items="${intmap}" var="map">
										<c:forEach items="${map.value}" var="sv">
											<p class="records">${sv}</p>
										</c:forEach>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
					<!--tab4-->
				</div>
				<!--tab-content col-md-12-->
			</div>
			<!--col-md-9 yy_contright-->
		</div>
	</div>
	<!--row  yy_content-->
</html>