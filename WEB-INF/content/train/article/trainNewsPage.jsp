<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人才培训 >> 培训资讯</title>
<style type="text/css">
.details > .article{
	width: 900px;
	margin: auto;
}
.details > .article > .ahead
{
	text-align: center;
	border-bottom: 1px dashed #BEBEBE;
}
.details > .article > .ahead > .title {
font-size: 16px;
color: #087DA8;
font-weight: bold;
}
.details > .article > .content
{
	line-height: 20px;
	margin:20px auto
}
</style>
</head>
<body>
	<div style="width:1007px;margin:15px auto">
		<div class="details">
			<div class="article">
				<div class="ahead">
					<p class="title">${singleTrain.orgname}</p>
					<p>文章来源：${singleTrain.user.company.companyname}&nbsp;&nbsp;&nbsp;&nbsp;
					发布时间：<fmt:formatDate value='${singleTrain.tdpubdate}' pattern='yyyy-MM-dd HH:mm'></fmt:formatDate></p>
				</div>
				<div class="content">

					<p style="line-height: 150%; text-indent: 24.1pt"><b><span style="line-height: 150%; font-size: 12pt;">一、培训形式</span></b></p>
					<p style="line-height: 150%; text-indent: 24.1pt"><b>&nbsp;</b></p>
					<p style="line-height: 150%; text-indent: 24pt"><span style="line-height: 150%; font-size: 12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${singleTrain.ttype}</span></p>
					<p style="line-height: 150%; text-indent: 24pt">&nbsp;</p>
					<p style="line-height: 150%; text-indent: 24.1pt"><b><span style="line-height: 150%; font-size: 12pt">二、基本信息</span></b></p>
					<p style="line-height: 150%; text-indent: 24.1pt"><b>&nbsp;</b></p>
					<div align="center">
					<table style="border-bottom: black 1px solid; border-left: black 1px solid; border-collapse: collapse; border-top: black 1px solid; border-right: black 1px solid" border="1" cellspacing="0" cellpadding="0" width="582">
						<tbody>
							<tr>
								<td style="border-bottom: black 1pt solid; border-left: black 1pt solid; padding-bottom: 0cm; padding-left: 5.4pt; width: 112.4pt; padding-right: 5.4pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm" valign="top" width="109">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">农产品类别</span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 100.95pt; padding-right: 5.4pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm" valign="top" width="104">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">培训目的</span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 134.5pt; padding-right: 5.4pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm" valign="top" width="179">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">培训开始时间</span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 142.4pt; padding-right: 5.4pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm" valign="top" width="190">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">培训结束时间</span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 142.4pt; padding-right: 5.4pt; border-top: black 1pt solid; border-right: black 1pt solid; padding-top: 0cm" valign="top" width="190">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">培训费用</span></p>
								</td>
							</tr>
							<tr style="height: 49.3pt">
								<td style="border-bottom: black 1pt solid; border-left: black 1pt solid; padding-bottom: 0cm; padding-left: 5.4pt; width: 81.4pt; padding-right: 5.4pt; height: 49.3pt; border-top: medium none; border-right: black 1pt solid; padding-top: 0cm" width="109">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">${singleTrain.pid}</span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 77.95pt; padding-right: 5.4pt; height: 49.3pt; border-top: medium none; border-right: black 1pt solid; padding-top: 0cm" width="104">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">${singleTrain.target}</span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 134.5pt; padding-right: 5.4pt; height: 49.3pt; border-top: medium none; border-right: black 1pt solid; padding-top: 0cm" width="179">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt"><fmt:formatDate value='${singleTrain.tbegin}' pattern='yyyy-MM-dd'></fmt:formatDate></span>
								</p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 142.4pt; padding-right: 5.4pt; height: 49.3pt; border-top: medium none; border-right: black 1pt solid; padding-top: 0cm" width="190">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt"><fmt:formatDate value='${singleTrain.tend}' pattern='yyyy-MM-dd'></fmt:formatDate></span></p>
								</td>
								<td style="border-bottom: black 1pt solid; border-left: medium none; padding-bottom: 0cm; padding-left: 5.4pt; width: 77.95pt; padding-right: 5.4pt; height: 49.3pt; border-top: medium none; border-right: black 1pt solid; padding-top: 0cm" width="104">
								<p style="text-align: center; line-height: 150%; text-autospace: " align="center"><span style="line-height: 150%; color: #333333; font-size: 12pt">${singleTrain.tfee}</span></p>
								</td>
							</tr>
							
						</tbody>
					</table>
					</div>
					<p style="line-height: 150%; text-indent: 24.1pt"><b>&nbsp;</b></p>
					<p style="line-height: 150%; text-indent: 24.1pt"><b><span style="line-height: 150%; font-size: 12pt">三、培训内容</span></b></p>
					<p style="line-height: 150%; text-indent: 24.1pt"><b>&nbsp;</b></p>
					<p style="line-height: 150%; text-indent: 24pt"><span style="line-height: 150%; font-size: 12pt">&nbsp;&nbsp;&nbsp;&nbsp;${singleTrain.tcontent}</span></p>
					<p style="line-height: 150%; text-indent: 24pt">&nbsp;</p>
					
					<p style="line-height: 150%; text-indent: 24.1pt"><b><span style="line-height: 150%; font-size: 12pt">四、联系方式</span></b></p>
					<div style="padding-left:66px;">
					<p style="line-height: 150%"><span style="line-height: 150%; font-size: 12pt">联系人：${singleTrain.tcontact}</span></p>

					<p style="line-height: 150%"><span style="line-height: 150%; font-size: 12pt">电<span>&nbsp;</span>话：<span>${singleTrain.tphone}</span></span></p>

					<p style="line-height: 150%"><span style="line-height: 150%; font-size: 12pt">邮<span>&nbsp;</span>箱：<span>${singleTrain.temail}</span></span></p>
					<p style="line-height: 150%"><span style="line-height: 150%; font-size: 12pt">地<span>&nbsp;</span>址:${singleTrain.taddress}</span></p>
					<p style="line-height: 150%"><span style="line-height: 150%; font-size: 12pt">邮<span>&nbsp;</span>编：<span>${singleTrain.tpostcode}</span></span></p>
					<p style="line-height: 150%">&nbsp;</p>
					</div>
				</div>
				<div style="text-align: center;">
					<input class="btn btn-primary" value="关闭" type="button" onclick="javascript:window.close();">
				</div>
			</div>
		</div>
	</div>
</body>
</html>