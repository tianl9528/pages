<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import= "java.util.Date"%>
<%@ page import= "java.text.SimpleDateFormat"%>
<%@ page import= "sunit.accesscontrol.object.User" %>
<%@ page import= "sunit.app.infopublish.object.*" %>
<%@ page import= "sunit.app.infopublish.manager.*" %>
<%@ page import= "sunit.app.infopublish.dao.*" %>
<%@ page import= "java.util.List" %>
<%@ page import= "sunit.database.DAO" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/dialog.js"></script>
<link href="<%=request.getContextPath()%>/theme/js/dialog.css" rel="stylesheet" />
<script type="text/javascript" src="<%=request.getContextPath()%>/theme/appjs/infopublish/published.js"></script>

<title>用户空间 >>已发布信息</title>
<%

response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");

	String base_root = request.getContextPath();
	User u = (User)request.getAttribute("user");
	
	//System.out.println("已经发布的供应信息 == 》 " + supplyList.size());
	
	
%>

<style>
	table .title{
		color:#6E8B3D;
		font-weight:bold;
	}
	.table tbody tr td {
		vertical-align: middle;
	}
	.table tbody tr:hover{background-color:#CAE1FF;}
	.tooltip-inner{
		max-width:400px;
		background-color: #668B8B;
	}
	
#dlg .close {
	font-size:14px;
	font-weight:normal;
	opacity: 1;
	color:white;
	text-shadow:none;
	line-height:1.3;
	
}
</style>

</head>
<body >
	<div id="publishedList" style="padding:20px 10px 0 10px">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="list-group">
					<a href="#" class="list-group-item active"><span class="badge">${publishedNum}</span><%=u.getUser_name() %>--信息发布汇总</a>
					<div class="list-group-item">
						<table class="table publishedList" width="100%" border="0">
							<tr>
								<td width="5%" align="center" valign="middle">&nbsp;</td>
								<td width="30%" align="center" valign="middle"><span class="title">主题</span></td>
								<td width="15%" align="center" valign="middle"><span class="title">类型</span></td>
								<td width="15%" align="center" valign="middle"><span class="title">发布时间</span></td>
								<td width="25%" align="center" valign="middle"><span class="title">操作</span></td>
								<td width="10%" align="center" valign="middle"><span class="title">回复</span></td>								
							</tr>
							<!-- 个人求职	start -->
							<c:if test="${!empty js}">
							<tr>
								<!-- 隐藏部分	start -->
								<input type="hidden" class="seekerHidden" value="${js.applyername}" >
								<input type="hidden" class="expsalaryHidden" value="${js.expsalary}" >
								<input type="hidden" class="expjobHidden" value="${js.expjob}" >
								<input type="hidden" class="appdegreeHidden" value="${js.appdegree}" >
								<input type="hidden" class="appmajorHidden" value="${js.appmajor}" >
								<input type="hidden" class="appschoolHidden" value="${js.appschool}" >
								<input type="hidden" class="appaddressHidden" value="${js.appaddress}" >
								<input type="hidden" class="apppostcodeHidden" value="${js.apppostcode}" >
								<input type="hidden" class="appphoneHidden" value="${js.appphone}" >
								<input type="hidden" class="appmobileHidden" value="${js.appmobile}" >
								<input type="hidden" class="apppubdateHidden" value="<fmt:formatDate value='${js.apppubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>" >
								<!-- 隐藏部分	end  -->
																
								<td align="center" valign="middle"><img style="width:40px;height:40px" src="<%=base_root%>/theme/images/mail.png"/></td>
								<td align="left" valign="middle"><span class="atip" data-original-title="求职信息：求职${js.expjob}，期望工资${js.expsalary}">求职信息：求职${js.expjob}，期望工资${js.expsalary}</span></td>
								<td align="center" valign="middle">求职</td>
								<td align="center" valign="middle"><fmt:formatDate value='${js.apppubdate }' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
									<div style="margin-left: 20px;margin-right: auto;">
										<a href="javascript:void(0)" onclick="jobseekDetail(this)"  class="detail">查看</a>
										<a href="jobseek-edit.action" onFocus="this.blur()" class="edit">编辑</a>
										<a href="jobseek-delect.action" onClick="return confirm('确定删除此记录吗？')" onFocus="this.blur()" class="delete">删除</a>
									</div>
								</td>
								<td align="center" valign="middle" >
									<a href="jsredetail.action?id=${js.user.user_id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${js.newReply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${js.newReply}</font></span>
									</c:if>
								</td>	
							</tr>
							</c:if>
							<!-- 个人求职 	end -->
							
							<!-- 农产品供应 	start -->
						 	<c:if test="${!empty supplyList}">
							<c:forEach var="sl" items="${supplyList}">						
							<tr class="spl">
								
								<input type="hidden" class="proSupTypeHidden" value="${sl.agriculturethirdtype.agttypename}" >
								<input type="hidden" class="proSupNameHidden" value="${sl.spName}" >
								<input type="hidden" class="proSupPriceHidden" value="${sl.spPrice}" >
								<input type="hidden" class="proSupNumHidden" value="${sl.spNum}" >
								<input type="hidden" class="proSupPubdateHidden" value="<fmt:formatDate value='${sl.spPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>" >
								<input type="hidden" class="proSupExpDateHidden" value="<fmt:formatDate value='${sl.spExpDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>" >
								<input type="hidden" class="proSupFactoryHidden" value="${sl.spFactory}" >
								<input type="hidden" class="proSupContactHidden" value="${sl.spContact}" >
								<input type="hidden" class="proSupAddressHidden" value="${sl.spAddress}" >
								<input type="hidden" class="proSupPostcodeHidden" value="${sl.spPostCode}" >
								<input type="hidden" class="proSupEmailHidden" value="${sl.spEmail}" >
								<input type="hidden" class="proSupPhoneHidden" value="${sl.spPhone}" >
								<input type="hidden" class="proSupContentHidden" value="${sl.spContent}" >
								<input type="hidden" class="proSupPhotoUrlHidden" value="<%=request.getContextPath()%>${sl.spPhotos}" >
								
								
								<td align="center" valign="middle"><img style="width:40px;height:40px" src="<%=base_root%>/theme/images/mail.png"/></td>
								<td align="left" valign="middle"><span class="atip" data-original-title="供应信息：可供应${sl.spName}，单价${sl.spPrice}">供应信息：可供应${sl.spName}，单价${sl.spPrice}</span></td>
								<td align="center" valign="middle">农产品供应</td>
								<td align="center" valign="middle"><fmt:formatDate value='${sl.spPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
									<div style="margin-left: 20px;margin-right: auto;">
									    <a href="javascript:void(0)" onclick="productSupplyDetail(this)" class="detail">查看</a>
										<a href="proSup-edit.action?proSupID=${sl.id}" onFocus="this.blur()" class="edit">编辑</a>
										<a href="proSup-delect.action?proSupID=${sl.id}" onClick="return confirm('确定删除此记录吗？')"	 onFocus="this.blur()" class="delete">删除</a>
									</div>
								</td>
								<td align="center" valign="middle" >
									<a href="psdetail.action?id=${sl.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${sl.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${sl.newreply}</font></span>
									</c:if>
								</td>
							</tr>						
						</c:forEach>
						</c:if>
						<!-- 农产品供应 	end -->
						
						
						<!-- 农产品需求	start -->
						<c:if test="${!empty buyList}">
						<c:forEach var="bl" items="${buyList}">				 
							<tr class="sbl">
								
								<!-- edited by lijianmin begin ------------------------------------------------ -->
								<input type="hidden" class="proBuyPubDateHidden" value="<fmt:formatDate value='${bl.pbPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="proBuyExpDateHidden" value="<fmt:formatDate value='${bl.pbExpDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>" />
								<input type="hidden" class="proBuyNameHidden" value="${bl.pbName}" />
								<input type="hidden" class="proBuyContentHidden" value="${bl.pbContent}" />
								<input type="hidden" class="proBuyPriceHidden" value="${bl.pbPrice}" />
								<input type="hidden" class="proBuyNumHidden" value="${bl.pbNum}" />
								<input type="hidden" class="proBuyLogisticsHidden" value="${bl.pbLogistics}" />
								<input type="hidden" class="proBuyFactoryHidden" value="${bl.pbFactory}" />
								<input type="hidden" class="proBuyCertifyHidden" value="${bl.pbCertify}" />
								<input type="hidden" class="proBuyContactHidden" value="${bl.pbContact}" />
								<input type="hidden" class="proBuyAddressHidden" value="${bl.pbAddress}" />
								<input type="hidden" class="proBuyPostCodeHidden" value="${bl.pbPostCode}" />
								<input type="hidden" class="proBuyPhoneHidden" value="${bl.pbPhone}" />
								<input type="hidden" class="proBuyEmailHidden" value="${bl.pbEmail}" />					
								<!--edited by lijianmin  end ------------------------------------------------>
								
								<td align="center" valign="middle"><img style="width:40px;height:40px" src="<%=base_root%>/theme/images/mail.png"/></td>
								<td align="left" valign="middle"><span class="atip" data-original-title="需求信息：需求${bl.pbName}，单价${bl.pbPrice}">需求信息：需求${bl.pbName}，单价${bl.pbPrice}</span></td>
								<td align="center" valign="middle">农产品需求</td>
								<td align="center" valign="middle"><fmt:formatDate value='${bl.pbPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
								<div style="margin-left: 20px;margin-right: auto;">
								    <a href="javascript:void(0)" onclick="productBuyDetail(this)" class="detail">查看</a>
									<a href="productBuy-edit.action?id=${bl.id}" onFocus="this.blur()" class="edit">编辑</a>
									<a href="productBuy-delete.action?id=${bl.id}" onClick="return confirm('确定删除此记录吗？')"	onFocus="this.blur()" class="delete">删除</a>
								</div>
								</td>
								<td align="center" valign="middle" >
									<a href="pbdetail.action?id=${bl.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${bl.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${bl.newreply}</font></span>
									</c:if>
								</td>								
							</tr>						
						</c:forEach>
						</c:if>
						<!-- 农产品需求	end -->
						
						<!-- 技术供应 -->
						<c:if test="${!empty techSupList}">
						<c:forEach var="tl" items="${techSupList}">
							<tr class="tsl">
								
								<!-- edited by lijianmin begin----------------------------- -->							
								<input type="hidden" class="tsPubDatehidden" value="<fmt:formatDate value='${tl.tsPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="tsExpDatehidden" value="<fmt:formatDate value='${tl.tsExpDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="tsNamehidden" value="${tl.tsName}"/>
								<input type="hidden" class="tsTechTypehidden" value="${tl.tist.teInSeTypeName}"/>
								<input type="hidden" class="tsContenthidden" value="${tl.tsContent }"/>
								<input type="hidden" class="tsAreahidden" value="${tl.tsArea }"/>
								<input type="hidden" class="proTypehidden" value="${tl.proType }"/>
								<input type="hidden" class="tsSourcehidden" value="${tl.tsSource }"/>
								<input type="hidden" class="tsGetwayhidden" value="${tl.tsGetway }"/>
								<input type="hidden" class="tsRelatedhidden" value="${tl.tsRelated }"/>
								<input type="hidden" class="tsContacthidden" value="${tl.tsContact }"/>
								<input type="hidden" class="tsAddresshidden" value="${tl.tsAddress }"/>
								<input type="hidden" class="tsPostCodehidden" value="${tl.tsPostCode }"/>
								<input type="hidden" class="tsPhonehidden" value="${tl.tsPhone }"/>
								<input type="hidden" class="tsEmailhidden" value="${tl.tsEmail }"/>
								<!-- edited by lijianmin end-------------------------------- -->						
							
								<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
								<td align="left" valign="middle"><span class="atip"
									data-original-title="技术供应信息：可供应技术${tl.tsName}">技术供应信息：可供应技术${tl.tsName}</span></td>
								<td align="center" valign="middle">技术供应</td>
								<td align="center" valign="middle"><fmt:formatDate value='${tl.tsPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
									<div style="margin-left: 20px; margin-right: auto;">
										<a href="javascript:void(0)"
											onclick="techSupplyDetail(this)" class="detail">查看</a> <a
											href="techSup-edit.action?id=${tl.id}" onFocus="this.blur()" class="edit">编辑</a> <a
											href="techSup-delete.action?id=${tl.id}" onClick="return confirm('确定删除此记录吗？')"
											onFocus="this.blur()" class="delete">删除</a>
									</div>
								</td>
								<td align="center" valign="middle" >
									<a href="tsdetail.action?id=${tl.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${!empty tl.newreply}">
									<c:if test="${tl.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${tl.newreply}</font></span>
									</c:if>
									</c:if>
								</td>
							</tr>
							</c:forEach>
							</c:if>
							
							<!-- 技术需求	start -->
							<c:if test="${!empty techDemaList}">
							<c:forEach var="td" items="${techDemaList}">
								<tr class="tdl">
								
									<input type="hidden" class="tdNamehidden" value="${td.tName }"/>
									<input type="hidden" class="tdTechTypehidden" value="${td.tist.teInSeTypeName }"/>						
									<input type="hidden" class="tdPubDatehidden" value="<fmt:formatDate value='${td.tdPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
									<input type="hidden" class="tdExpDatehidden" value="<fmt:formatDate value='${td.tdExpDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
									<input type="hidden" class="tdContenthidden" value="${td.tdContent }"/>
									<input type="hidden" class="tdAreahidden" value="${td.tdArea }"/>
									<input type="hidden" class="proTypehidden" value="${td.proType }"/>
									<input type="hidden" class="tdContacthidden" value="${td.tdContact }"/>
									<input type="hidden" class="tdAddresshidden" value="${td.tdAddress }"/>
									<input type="hidden" class="tdPostCodehidden" value="${td.tdPostCode }"/>
									<input type="hidden" class="tdPhonehidden" value="${td.tdPhone }"/>
									<input type="hidden" class="tdEmailhidden" value="${td.tdEmail }"/>
															
								
									<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
									<td align="left" valign="middle"><span class="atip"
										data-original-title="技术需求信息：寻求技术${td.tdArea}">技术需求信息：寻求技术${td.tdArea}</span></td>
									<td align="center" valign="middle">技术需求</td>
									<td align="center" valign="middle"><fmt:formatDate value='${td.tdPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
									<td align="center" valign="middle" class="trainFunction">
										<div style="margin-left: 20px; margin-right: auto;">
											<a href="javascript:void(0)"
												onclick="techDemaDetail(this)" class="detail">查看</a> <a
												href="techDema-edit.action?id=${td.id}" onFocus="this.blur()" class="edit">编辑</a> <a
												href="techDema-delete.action?id=${td.id}" onClick="return confirm('确定删除此记录吗？')"
												onFocus="this.blur()" class="delete">删除</a>
										</div>
									</td>
									<td align="center" valign="middle" >
									<a href="tddetail.action?id=${td.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${td.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${td.newreply}</font></span>
									</c:if>
								</td>
								</tr>								
								</c:forEach>
								</c:if>
							<!-- 技术需求	end -->
							
							<!-- 物流供应	start -->
							<c:if test="${!empty logiSuppList}">
							<c:forEach var="ls" items="${logiSuppList}">
							<tr class="lsl">
								
														
								<input type="hidden" class="lsPubDatehidden" value="<fmt:formatDate value='${ls.lsPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="lsDepartureTimehidden" value="<fmt:formatDate value='${ls.departureTime}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="lsStartPlacehidden" value="${ls.startPlace}"/>
								<input type="hidden" class="lsArrivePlacehidden" value="${ls.arrivePlace }"/>
								<input type="hidden" class="lsWayPointhidden" value="${ls.wayPoint }"/>
								<input type="hidden" class="lsPricehidden" value="${ls.lsPrice }"/>
								<input type="hidden" class="lsIdentiCodehidden" value="${ls.identiCode }"/>
								<input type="hidden" class="lsExplanationhidden" value="${ls.explanation }"/>
								<input type="hidden" class="lsContacthidden" value="${ls.lsContact }"/>
								<input type="hidden" class="lsAddresshidden" value="${ls.lsAddress }"/>
								<input type="hidden" class="lsPostCodehidden" value="${ls.lsPostcode }"/>
								<input type="hidden" class="lsPhonehidden" value="${ls.lsPhone }"/>
								<input type="hidden" class="lsEmailhidden" value="${ls.lsEmail }"/>
														
							
								<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
								<td align="left" valign="middle"><span class="atip"
									data-original-title="物流供应信息：可供应物流${ls.wayPoint}">可供应物流:&nbsp;${ls.wayPoint}</span></td>
								<td align="center" valign="middle">物流供应</td>
								<td align="center" valign="middle"><fmt:formatDate value='${ls.lsPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
									<div style="margin-left: 20px; margin-right: auto;">
										<a href="javascript:void(0)"
											onclick="logiSupplyDetail(this)" class="detail">查看</a> <a
											href="logisupp-edit.action?id=${ls.id}" onFocus="this.blur()" class="edit">编辑</a> <a
											href="logisupp-delete.action?id=${ls.id}" onClick="return confirm('确定删除此记录吗？')"
											onFocus="this.blur()" class="delete">删除</a>
									</div>
								</td>
								<td align="center" valign="middle" >
									<a href="lsdetail.action?id=${ls.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${ls.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${ls.newreply}</font></span>
									</c:if>
								</td>
							</tr>
							</c:forEach>
							</c:if>
							<!-- 物流供应	end -->
							
							<!-- 物流需求	start -->
							<c:if test="${!empty logiDemaList}">
							<c:forEach var="ld" items="${logiDemaList}">
							<tr class="ldl">
																													
								<input type="hidden" class="ldPubDatehidden" value="<fmt:formatDate value='${ld.ldPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="ldExpDatehidden" value="<fmt:formatDate value='${ld.ldExpDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
								<input type="hidden" class="ldStartPlacehidden" value="${ld.startPlace}"/>
								<input type="hidden" class="ldArrivePlacehidden" value="${ld.arrivePlace }"/>
								<input type="hidden" class="ldGoodsNamehidden" value="${ld.goodsName }"/>
								<input type="hidden" class="ldGoodsTypehidden" value="${ld.goodsType }"/>
								<input type="hidden" class="ldTransTypehidden" value="${ld.transType }"/>
								<input type="hidden" class="ldCountTypehidden" value="${ld.count }"/>
								<input type="hidden" class="ldLoadTypehidden" value="${ld.load }"/>
								<input type="hidden" class="ldVolumeTypehidden" value="${ld.volume }"/>
								<input type="hidden" class="ldPriceTypehidden" value="${ld.price }"/>
								<input type="hidden" class="ldRequirehidden" value="${ld.require }"/>
								<input type="hidden" class="ldExplanationhidden" value="${ld.explanation }"/>
								<input type="hidden" class="ldContacthidden" value="${ld.ldContact }"/>
								<input type="hidden" class="ldAddresshidden" value="${ld.ldAddress }"/>
								<input type="hidden" class="ldPostCodehidden" value="${ld.ldPostcode }"/>
								<input type="hidden" class="ldPhonehidden" value="${ld.ldPhone }"/>
								<input type="hidden" class="ldEmailhidden" value="${ld.ldEmail }"/>
																					
								<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
								<td align="left" valign="middle"><span class="atip"
									data-original-title="物流需求信息：寻求物流${ld.startPlace}-${ld.arrivePlace}">寻求物流:&nbsp;${ld.startPlace}-${ld.arrivePlace}</span></td>
								<td align="center" valign="middle">物流需求</td>
								<td align="center" valign="middle"><fmt:formatDate value='${ld.ldPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
									<div style="margin-left: 20px; margin-right: auto;">
										<a href="javascript:void(0)"
											onclick="logiDemaDetail(this)" class="detail">查看</a> <a
											href="logidema-edit.action?id=${ld.id}" onFocus="this.blur()" class="edit">编辑</a> <a
											href="logidema-delete.action?id=${ld.id}" onClick="return confirm('确定删除此记录吗？')"
											onFocus="this.blur()" class="delete">删除</a>
									</div>
								</td>
								<td align="center" valign="middle" >
									<a href="lddetail.action?id=${ld.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${ld.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${ld.newreply}</font></span>
									</c:if>
								</td>
							</tr>
							</c:forEach>
							</c:if>
							<!-- 物流需求	end -->
							
							<!-- 招商代理	start -->
							<c:if test="${!empty inveList}">
							<c:forEach var="in" items="${inveList}">						
							<tr class="inl">
								
								
								<input type="hidden" class="inNameHidden" value="${in.inName}" >
								<input type="hidden" class="inPriceHidden" value="${in.inPrice}" >
								<input type="hidden" class="inNumHidden" value="${in.inNum}" >
								<input type="hidden" class="inPubdateHidden" value="<fmt:formatDate value='${in.inPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>" >
								<input type="hidden" class="inExpDateHidden" value="<fmt:formatDate value='${in.inExpDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>" >
								<input type="hidden" class="inFactoryHidden" value="${in.inFactory}" >
								<input type="hidden" class="inCertifyHidden" value="${in.inCertify}" >
								<input type="hidden" class="inQualityHidden" value="${in.inQuality}" >
								<input type="hidden" class="inContactHidden" value="${in.inContact}" >
								<input type="hidden" class="inAddressHidden" value="${in.inAddress}" >
								<input type="hidden" class="inPostcodeHidden" value="${in.inPostCode}" >
								<input type="hidden" class="inEmailHidden" value="${in.inEmail}" >
								<input type="hidden" class="inPhoneHidden" value="${in.inPhone}" >
								<input type="hidden" class="inContentHidden" value="${in.inContent}" >
								<input type="hidden" class="inPhotoUrlHidden" value="<%=request.getContextPath()%>${in.inPhotos}" >
								
								
								<td align="center" valign="middle"><img style="width:40px;height:40px" src="<%=base_root%>/theme/images/mail.png"/></td>
								<td align="left" valign="middle"><span class="atip" data-original-title="招商代理信息：招商代理${in.inName}，单价${in.inPrice}">招商代理信息：${in.inName}，单价${in.inPrice}</span></td>
								<td align="center" valign="middle">招商代理</td>
								<td align="center" valign="middle"><fmt:formatDate value='${in.inPubDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
								<td align="center" valign="middle" class="trainFunction">
									<div style="margin-left: 20px;margin-right: auto;">
									    <a href="javascript:void(0)" onclick="investDetail(this)" class="detail">查看</a>
										<a href="invest-edit.action?id=${in.id}" onFocus="this.blur()" class="edit">编辑</a>
										<a href="invest-delete.action?id=${in.id}" onClick="return confirm('确定删除此记录吗？')"	 onFocus="this.blur()" class="delete">删除</a>
									</div>
								</td>
								<td align="center" valign="middle" >
									<a href="itdetail.action?id=${in.id}" onclick="allReply(this)"  class="detail">查看</a>
									<c:if test="${in.newreply != 0}">
										<span class="badge"><font style="color:white;margin-left:2px;">${in.newreply}</font></span>
									</c:if>
								</td>
							</tr>						
						</c:forEach>
						</c:if>
						<!-- 招商代理	end -->
						
						<!-- 企业招聘	start -->
						<c:if test="${!empty recruitList}">
						<c:forEach var="re" items="${recruitList}">
						<tr class="rl">
																												
							<input type="hidden" class="pubdatehidden" value="<fmt:formatDate value='${re.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
							<input type="hidden" class="enddatehidden" value="<fmt:formatDate value='${re.enddate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>
							<input type="hidden" class="resourcehidden" value="${re.resource}"/>
							<input type="hidden" class="jobhidden" value="${re.job }"/>
							<input type="hidden" class="propertieshidden" value="${re.properties }"/>
							<input type="hidden" class="numhidden" value="${re.num }"/>
							<input type="hidden" class="treatmenthidden" value="${re.treatment }"/>
							<input type="hidden" class="jobDetailhidden" value="${re.jobDetail }"/>
							<input type="hidden" class="jobRequirehidden" value="${re.jobRequire }"/>
							<input type="hidden" class="contacthidden" value="${re.contact }"/>
							<input type="hidden" class="phoneNumberhidden" value="${re.phoneNumber }"/>
							<input type="hidden" class="addresshidden" value="${re.address }"/>
							<input type="hidden" class="postcodehidden" value="${re.postcode }"/>
							<input type="hidden" class="emailhidden" value="${re.email }"/>
							<input type="hidden" class="remarkhidden" value="${re.remark }"/>
																				
							<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
							<td align="left" valign="middle"><span class="atip"
								data-original-title="企业招聘信息：职位${re.job}人数:${re.num}">企业招聘信息：职位${re.job}</span></td>
							<td align="center" valign="middle">企业招聘</td>
							<td align="center" valign="middle"><fmt:formatDate value='${re.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
							<td align="center" valign="middle" class="trainFunction">
								<div style="margin-left: 20px; margin-right: auto;">
									<a href="javascript:void(0)"
										onclick="recruitDetail(this)" class="detail">查看</a> <a
										href="recruit-edit.action?id=${re.id}" onFocus="this.blur()" class="edit">编辑</a> <a
										href="recruit-delete.action?id=${re.id}" onClick="return confirm('确定删除此记录吗？')"
										onFocus="this.blur()" class="delete">删除</a>
								</div>
							</td>
							<td align="center" valign="middle" >
								<a href="rtdetail.action?id=${re.id}" onclick="allReply(this)"  class="detail">查看</a>
								<c:if test="${re.newreply != 0}">
									<span class="badge"><font style="color:white;margin-left:2px;">${re.newreply}</font></span>
								</c:if>
							</td>
						</tr>
						</c:forEach>
						</c:if>
						<!-- 企业招聘	end -->
						
						<!-- 企业快讯	start -->
						<c:if test="${!empty comNewsList}">
						<c:forEach var="cn" items="${comNewsList}">
						<tr class="cnl">
																												
							<input type="hidden" class="pubdatehidden" value="<fmt:formatDate value='${cn.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>							
							<input type="hidden" class="tittlehidden" value="${cn.tittle}"/>
							
							
																				
							<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
							<td align="left" valign="middle"><span class="atip"
								data-original-title="企业快讯：${cn.tittle}">企业快讯：${cn.tittle}</span></td>
							<td align="center" valign="middle">企业快讯</td>
							<td align="center" valign="middle"><fmt:formatDate value='${cn.pubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
							<td align="center" valign="middle" class="trainFunction">
								<div style="margin-left: 20px; margin-right: auto;">
									<a href="companyNews.action?id=${cn.id}"
										target="_blank onclick="this.blur()" class="detail">查看</a> <a
										href="companyNews-edit.action?id=${cn.id}" onFocus="this.blur()" class="edit">编辑</a> <a
										href="companyNews-delete.action?id=${cn.id}" onClick="return confirm('确定删除此记录吗？')"
										onFocus="this.blur()" class="delete">删除</a>
								</div>
							</td>							
						</tr>
						</c:forEach>
						</c:if>
						<!-- 企业快讯	end -->
												
						<!-- 我的回复	start -->
						<c:if test="${!empty myreplyList}">
						<c:forEach var="mrl" items="${myreplyList}">
						<tr class="cnl">
																																															
							<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
							<td align="left" valign="middle"><span class="atip"
								data-original-title="回复：${mrl.reType}">回复：${mrl.reType}</span></td>
							<td align="center" valign="middle">回复</td>
							<td align="center" valign="middle"><fmt:formatDate value='${mrl.reDate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
							<td align="center" valign="middle" class="trainFunction">
								<div style="margin-left: 20px; margin-right: auto;">
									<a href="replydetail.action?id=${mrl.id}" onclick="#" class="detail">查看</a> 
									<a href="replyedit.action?id=${mrl.id}" onFocus="this.blur()" class="edit">编辑</a> 
									<a href="replydelete.action?id=${mrl.id}" onClick="return confirm('确定删除此记录吗？')"onFocus="this.blur()" class="delete">删除</a>
								</div>
							</td>							
						</tr>
						
						</c:forEach>
						</c:if>
						<!-- 我的回复	end -->
						
						<!-- 培训	start -->
						<c:if test="${!empty trainList}">
						<c:forEach var="train" items="${trainList}">
						<tr class="trainList">
																												
							<input type="hidden" class="tdpubdate" value="<fmt:formatDate value='${train.tdpubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate>"/>							
							<input type="hidden" class="exidhidden" value="${train.user.company.companyname}"/>
							<input type="hidden" class="istypeid" value="${train.istypeid.teInSeTypeName }"/>
							<input type="hidden" class="pid" value="${train.pid }"/>
							<input type="hidden" class="target" value="${train.target }"/>
							<input type="hidden" class="ttype" value="${train.ttype }"/>
							<input type="hidden" class="tbegin" value="${train.tbegin }"/>
							<input type="hidden" class="tend" value="${train.tend }"/>
							<input type="hidden" class="tfee" value="${train.tfee }"/>
							<input type="hidden" class="tcontact" value="${train.tcontact }"/>
							<input type="hidden" class="taddress" value="${train.taddress }"/>
							<input type="hidden" class="tpostcode" value="${train.tpostcode }"/>
							<input type="hidden" class="tphone" value="${train.tphone }"/>
							<input type="hidden" class="temail" value="${train.temail }"/>
							<input type="hidden" class="tcontent" value="${train.tcontent }"/>
							
							
																				
							<td align="center" valign="middle"><img style="width: 40px; height: 40px" src="<%=base_root%>/theme/images/mail.png" /></td>
							<td align="left" valign="middle"><span class="atip"
								data-original-title="培训信息：${train.pid}">培训信息：${train.pid}</span></td>
							<td align="center" valign="middle">培训信息</td>
							<td align="center" valign="middle"><fmt:formatDate value='${train.tdpubdate}' pattern='yyyy-MM-dd HH:mm:ss'></fmt:formatDate></td>
							<td align="center" valign="middle" class="trainFunction">
								<div style="margin-left: 20px; margin-right: auto;">
									<a href="javascript:void(0)"
										onclick="trainDetail(this)" class="detail">查看</a> <a
										href="train-edit.action?id=${train.id}" onFocus="this.blur()" class="edit">编辑</a> <a
										href="train-delete.action?id=${train.id}" onClick="return confirm('确定删除此记录吗？')"
										onFocus="this.blur()" class="delete">删除</a>
								</div>
							</td>							
						</tr>
						</c:forEach>
						</c:if>
						<!-- 培训	end -->																								
						</table>
					</div>										
				</div>
			</div>
		</div>
	</div>		
</body>
</html>