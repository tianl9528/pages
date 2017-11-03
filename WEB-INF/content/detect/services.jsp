<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检测检验 >> 检测服务</title>
<%
	String base_root = request.getContextPath();
%>
<script>
	$(document).ready(function() {
		$('.servicelist li >a ').click(function(e) {
			e.preventDefault();
			var lis = $('li');
			lis.removeClass('active');
		});

		/*$('.panel-title > a ').click(function(e)
		 {
		 e.preventDefault();
		 var submenu=$(this).parent().parent().next();
		 var panel=submenu.parent();
		 var panels=$('#sidebar div.panel-body');
		 var panels_parents=$('#sidebar div.panel');
		
		 if(submenu.parent().hasClass('open'))
		 {
		 submenu.slideUp();
		 panel.removeClass('open');
		 }
		 else
		 {
		 panels.slideUp();
		 submenu.slideDown();
		 panels_parents.removeClass('open');
		 panel.addClass('open');
		 }
		
		 })*/
	});
</script>

</head>
<body>
	<div style="width: 1007px; margin-top: 15px;">
		<div class="col-lg-3 col-xs-3" style="padding-left: 0">
			<div id="sidebar">
				<div class="panel panel-default  open" style="margin-bottom: 2px">
					<div class="panel-heading">
						<h4 class="panel-title myFont15" style="text-align: center">
							 服务范围划分
						</h4>
					</div>
					<div class="panel-body servicelist">
						<ul style="padding: 0">

							<li style="list-style-type: none; margin-bottom: 15px;"><a
								href="#tab2" data-toggle="tab" style="padding-right: 25px;">生物</a>
								<a href="#tab3" data-toggle="tab" style="padding-right: 25px;">化学</a>
								<a href="#tab4" data-toggle="tab">机械</a></li>

							<li style="list-style-type: none; margin-bottom: 15px;"><a
								href="#tab5" data-toggle="tab" style="padding-right: 25px;">金属</a>
								<a href="#tab6" data-toggle="tab" style="padding-right: 25px;">电气</a>
								<a href="#tab7" data-toggle="tab">3C认证产品</a></li>

							<li style="list-style-type: none; margin-bottom: 15px;"><a
								href="#tab8" data-toggle="tab" style="padding-right: 25px;">医学</a>
								<a href="#tab9" data-toggle="tab" style="padding-right: 25px;">法医</a>
								<a href="#tab10" data-toggle="tab">动植物检疫</a></li>

							<li style="list-style-type: none; margin-bottom: 15px;"><a
								href="#tab11" data-toggle="tab" style="padding-right: 25px;">兽医</a>
								<a href="#tab12" data-toggle="tab" style="padding-right: 2px;">无损检测</a>
								<a href="#tab13" data-toggle="tab">建材建筑</a></li>

							<li style="list-style-type: none; margin-bottom: 15px;"><a
								href="#tab14" data-toggle="tab" style="padding-right: 0;">电磁兼容</a>
								<a href="#tab15" data-toggle="tab" style="padding-right: 0;">计量声学</a>
								<a href="#tab16" data-toggle="tab">热学温度</a></li>

							<li style="list-style-type: none"><a href="#tab17"
								data-toggle="tab" style="padding-right: 2px;">光学和辐射</a> <a
								href="#tab18" data-toggle="tab" style="padding-right: 2px;">声学和振动</a>
								<a href="#tab19" data-toggle="tab">其他</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-9 col-xs-9"
			style="min-width: 700px; padding: 0; width: 732px;">
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<!--全部-->
					<div class="panel panel-default">
						<div class="panel-heading myFont15">检测服务

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<c:if test="${empty page_serv.result}">没有数据</c:if>
								<c:if test="${!empty page_serv.result}">
									<c:forEach items="${page_serv.result}" var="serv"
										varStatus="stat">
										<tr>
											<td class="col-lg-12 col-xs-12">
												<div style="margin-bottom: 10px">
													<a href="services-detail.action?id=${serv.id }"
														target="_blank"
														style="cursor: pointer; text-decoration: none">${serv.sname }</a>
													<p class="text-muted pull-right">单位：${serv.sinstname }</p>
												</div>
												<p style="color: black; font-weight: normal">简介：${serv.sintro }</p>
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab1-->

				<div class="tab-pane" id="tab2">
					<!--生物-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053e14ab9f013e15968c9e000c&code=gd_fw_jy_jcfw_sw"
												target="_blank"
												style="cursor: pointer; text-decoration: none">金银花与山银花的鉴别业务</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">简介：现中心开展金银花和山银花鉴别的检测业务。</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab2-->

				<div class="tab-pane" id="tab3">
					<!--化学-->
					<div class="panel panel-default">
						<div class="panel-heading"
					style="background-color: #A8CBF2; color: white; padding: 5px 0; height: 45px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053b68ed80013bcadb4e5f0018&code=gd_fw_jy_jcfw_hx"
												target="_blank"
												style="cursor: pointer; text-decoration: none">提供塑化剂（邻苯二甲酸酯）检测服务</a>
											<p class="text-muted pull-right">单位：广东省测试分析研究所</p>
										</div>
										<p style="color: black; font-weight: normal">简介：可根据国家相关标准开展食品、饲料、包装材料及相关产品的塑化剂（邻苯二甲酸酯）检测服务</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053609c2ba01360ec4e3470006&code=gd_fw_jy_jcfw_hx"
												target="_blank"
												style="cursor: pointer; text-decoration: none">反式脂肪酸检测</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">
											简介：采用国际标准（IS015304:2002（E））检测油脂、食品反式脂肪酸的含量，为食品生产企业、经营单位、政府部门、消费者提供检测服务，保障食品安全，满足广大群众需求</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053609c2ba01360ec9bc000007&code=gd_fw_jy_jcfw_hx"
												target="_blank"
												style="cursor: pointer; text-decoration: none">奶粉中激素成分检测</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">简介：采用气相色谱-质谱联用（GC-MS）和液相色谱-串联质谱联用（LC-MS/MS）技术建立奶粉中激素成分检测方法</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab3-->

				<div class="tab-pane" id="tab4">
					<!--机械-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053d9f5506013db0b896c30119&code=gd_fw_jy_jcfw_jx"
												target="_blank"
												style="cursor: pointer; text-decoration: none">自动控制器及热熔断体</a>
											<p class="text-muted pull-right">单位：广东产品质量监督检验研究院</p>
										</div>
										<p style="color: black; font-weight: normal">简介：自动控制器及热熔断体</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053d9f5506013db0b0f8910115&code=gd_fw_jy_jcfw_jx"
												target="_blank"
												style="cursor: pointer; text-decoration: none">自行车</a>
											<p class="text-muted pull-right">单位：广东产品质量监督检验研究院</p>
										</div>
										<p style="color: black; font-weight: normal">简介：*电动自行车及其相关配件*自行车及其相关配件*儿童自行车及其相关配件</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab4-->

				<div class="tab-pane" id="tab5">
					<!--金属-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">金属</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>
								</tr>
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab5-->

				<div class="tab-pane" id="tab6">
					<!--电气-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053609c2ba01360b6687ef0003&code=gd_fw_jy_jcfw_dq"
												target="_blank"
												style="cursor: pointer; text-decoration: none">雪种检测</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">简介：建立雪种质量检测方法，可鉴定出雪种的化学成分，判断是否为纯净134a雪种或混配雪种</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab6-->

				<div class="tab-pane" id="tab7">
					<!--3C认证产品-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">3C认证产品</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab7-->

				<div class="tab-pane" id="tab8">
					<!--医学-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">医学</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab8-->

				<div class="tab-pane" id="tab9">
					<!--法医-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">法医</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab9-->

				<div class="tab-pane" id="tab10">
					<!--动植物检疫-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">动植物检疫</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab10-->

				<div class="tab-pane" id="tab11">
					<!--兽医-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">兽医</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab11-->

				<div class="tab-pane" id="tab12">
					<!--无损检测-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">无损检测</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab12-->

				<div class="tab-pane" id="tab13">
					<!--建材与建筑-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">建材与建筑</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab13-->

				<div class="tab-pane" id="tab14">
					<!--电磁兼容-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">电磁兼容</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab14-->

				<div class="tab-pane" id="tab15">
					<!--计量声学-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">计量声学</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab15-->

				<div class="tab-pane" id="tab16">
					<!--热学和温度-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">热学和温度</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab16-->

				<div class="tab-pane" id="tab17">
					<!--光学和辐射-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053609c2ba01360ebaf4010005&code=gd_fw_jy_jcfw_gx"
												target="_blank"
												style="cursor: pointer; text-decoration: none">食品放射性物质检测服务</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">简介：根据国家食品安全标准中的反射性物质检测总则（GB14883.1-1994）规定对食品进行放射性物质的检测，保障食品安全。</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab17-->

				<div class="tab-pane" id="tab18">
					<!--声学和振动-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">声学和振动</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab18-->

				<div class="tab-pane" id="tab19">
					<!--其他-->
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background:url(<%=base_root%>/theme/images/detectimg/bar.png);height:37px">
							<h4 class="panel-title col-lg-10 col-xs-10"
								style="font-weight: bold">检测服务</h4>

						</div>
						<div class="panel-body" style="padding: 5px 15px 45px 15px">
							<table class="table table-hover " style="margin: 0">
								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d9053d8a933b013d9f40b2ae0044&code=gd_fw_jy_jcfw_qt"
												target="_blank"
												style="cursor: pointer; text-decoration: none">大米中金属检测服务</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">简介：检测大米中重金属</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a
												href="http://www.icgd.cn/service/common/content.jsp?id=4028d90538288ef20138455be17d0019&code=gd_fw_jy_jcfw_qt"
												target="_blank"
												style="cursor: pointer; text-decoration: none">使用盐中含碘量和亚硝酸盐含量的检测</a>
											<p class="text-muted pull-right">单位：中国广州分析测试中心</p>
										</div>
										<p style="color: black; font-weight: normal">简介：暂无</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

								<tr>
									<td class="col-lg-12 col-xs-12">
										<div style="margin-bottom: 10px">
											<a href="" target="_blank"
												style="cursor: pointer; text-decoration: none">&nbsp;</a>
											<p class="text-muted pull-right">&nbsp;</p>
										</div>
										<p style="color: black; font-weight: normal">&nbsp;</p>
									</td>

								</tr>

							</table>
						</div>
					</div>
					<!--panel panel-default-->
				</div>
				<!--tab-pane tab19-->

			</div>

		</div>
	</div>
</body>
</html>