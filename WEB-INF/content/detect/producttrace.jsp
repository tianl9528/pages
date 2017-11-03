<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检测检验 >> 产品溯源</title>
<%
	String base_root = request.getContextPath();
%>
<script type="text/javascript">
	function SetWinHeight(obj) {
		var win = obj;
		if (document.getElementById) {
			if (win && !window.opera) {
				if (win.contentDocument
						&& win.contentDocument.body.offsetHeight)
					win.height = win.contentDocument.body.offsetHeight;
				else if (win.Document && win.Document.body.scrollHeight)
					win.height = win.Document.body.scrollHeight;
			}
		}
	}
</script>
</head>
<html>
<body>
	<div class="panel panel-default">
	<center>
	<img src="<%=base_root%>/theme/image/chanpinsuyuan.jpg" style="width:100%"/>
<!--<iframe src="http://javatrace.proj.youyuangis.com/TraceSearch.aspx"
		width="1007px" height="1500px" scrolling="no"></iframe>-->
	</center>
	</div>
</body>
</html>