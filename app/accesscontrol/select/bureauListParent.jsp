<%@ page contentType="text/html;charset=utf-8" %>
<%
response.setHeader("Pragma","No-cache"); 
response.setHeader("Cache-Control","no-cache"); 
response.setDateHeader("Expires", 0); 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>接入间列表</title>
<base target="_self">
<LINK href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgd.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/jquery/jquery-1.3.2.js"></script>
<script language="javascript">
	var winArg = window.dialogArguments;
	var userid = winArg.userid;
	var targetURL="<%=request.getContextPath()%>/app/reserved/common/bureauList.sunit?userid="+userid;
	var selectedIDs = "";
	function addData(setData) {
		if(selectedIDs.indexOf(setData)==-1) {
			selectedIDs+=(setData+";");	
		}
	}
	function subData(setData) {
		selectedIDs = selectedIDs.replace(setData+";","");
	}
	function myconfirm() {
		if(selectedIDs=="") {
			alert("请选择接入间！");
			return;
		}
		if(!confirm("确定提交数据？")) {
			return;
		}
		$.post("<%=request.getContextPath()%>/app/reserved/common/HandleChecksBureau.sunit",
		{	userid:userid,	bureauInfo:trimHeadTail(selectedIDs),mark:'add'},
		function(data) {
			if(data=='yes') {
				alert("数据提交成功！");
				window.returnValue='true';
				window.close();
			}else {
				alert("数据提交失败！");
				window.returnValue="false";
				window.close();
			}
		});
	}
	function myclose() {
		window.returnValue = "false";
		window.close();
	}
	//去掉头尾的分号
	function trimHeadTail(val){
    		return val.replace(/(^[;]{1})|([;]{1}$)/g, "");
	}
</script>
</head>
<body style="padding:10px;">
<script type="text/javascript">
	document.write('<iframe id="selectBureau" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%" scrolling="no"'+
' src="'+targetURL+'"/>');
</script>

</body>
</html>