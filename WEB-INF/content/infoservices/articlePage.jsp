<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>信息服务 >> ${articleNews.atype }</title>
<style type="text/css">
.details>.article {
	width: 900px;
	margin: auto;
}

.details>.article>.ahead {
	text-align: center;
	border-bottom: 1px dashed #BEBEBE;
}

.details>.article>.ahead>.title {
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
					<p class="title">${articleNews.atitle }</p>
					<p>
						文章来源：${articleNews.asource } 发布时间：
						<fmt:formatDate value="${articleNews.adate }"></fmt:formatDate>
					</p>
				</div>
				<div class="content">
					${articleNews.acontent }
				</div>
				<div style="text-align: center;">
					<input class="btn btn-primary" value="关闭" type="button"
						onclick="javascript:window.close();">
				</div>
			</div>
		</div>
	</div>
</body>
</html>

</body>
</html>
