<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>信息服务 >> ${ai.aitype}</title>
<style type="text/css">
.details>.article {
	width: 900px;
	margin: auto;
}

.details>.article>.ahead {
	text-align: center;
	border-bottom: 1px dashed #BEBEBE;
}

.title {
	font-size: 16px;
	color: #087DA8;
	font-weight: bold;
}

.details>.article>.content {
	line-height: 20px;
	margin: 20px auto
}

</style>
</head>
<body>
	<div style="width: 1007px; margin: 15px auto">
		<div class="details">
			<div class="article">
				<div class="ahead">
					<p class="title">${ai.aititle }</p>
					<p>
						文章来源：${ai.airesource } 发布时间：
						<fmt:formatDate value="${ai.aidate }"></fmt:formatDate>
					</p>
				</div>
				<div class="content">
					${ai.aicontent }
				</div>
				<div class="reagr">
					<p class="title">相关文章：</p>
					<c:if test="${!empty reList}">
						<c:forEach items="${reList}" var="ai" varStatus="stat" begin="0" end="4">
							<div class="row" style="margin-top:10px;margin-left:5px;">
								<a href="<%=request.getContextPath()%>/push/aidetail.action?id=${ai.id}" target="_blank">${ai.aititle}</a>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
