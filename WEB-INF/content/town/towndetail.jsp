<%@page import="com.google.gxp.compiler.alerts.Alert"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
			<div class="col-xs-9 col-lg-9" style="float: right">
				<div class="panel panel-default" style="height: 424px">
					<div class="panel-body" >
						<div class="row">
							<div class="col-xs-6 col-lg-6">
								<dl>
									<dt>
										<h4>
											<b>基本概况</b>
										</h4>
									</dt>
									<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<div style="overflow-y:auto;width: 345px;height: 290px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${town.intro }</div></dd>
								</dl>
							</div>
							<div class="col-xs-6 col-lg-6">
								<img src="<%=request.getContextPath()%>/theme/${town.image}"
									alt="专业镇的图片" class="img-thumbnail cityimg">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-12">
								<dl style="margin-bottom: 10px;">
									<dt>
										<h4>
											<b>特色产业</b>
										</h4>
									</dt>
									<dd>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										${town.featuredomain }</dd>
								</dl>
							</div>
						</div>
						<div class="row" >
							<div class="col-xs-2 col-lg-2">
								<a
									href="<%=request.getContextPath()%>/town/featureproduct.action"><span
									class="bottom-span"><b>名优产品</b></span></a>
							</div>
							<div class="col-xs-2 col-lg-2">
								<a
									href="<%=request.getContextPath()%>/town/featurecompany.action?townid=${town.id}"><span
									class="bottom-span"><b>龙头企业</b></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
