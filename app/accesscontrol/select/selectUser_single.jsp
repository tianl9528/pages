<%@ page contentType="text/html;charset=utf-8" %>
<%
response.setHeader("Pragma","No-cache"); 
response.setHeader("Cache-Control","no-cache"); 
response.setDateHeader("Expires", 0); 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户列表</title>
<base target="_self">
<LINK href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgd.css" type=text/css rel=stylesheet>
<script language="javascript">

var viewSel="";//是否显示已选择
var selectIds="";//已选择的ID字符串
var selectNames="";//已选择的用户名字符串

//读取父级窗口数据
var userIds="";
var userNames="";
var roleID = window.dialogArguments.roleID;
if(roleID==undefined) {
	roleID = "";
}
var targetURL ="selectUser_con_single.jsp?roleID="+roleID ;
//处理父级窗口数据
if(undefined!=userIds&&undefined!=userNames&&""!=userIds&&""!=userNames){
	var rep=/,/g;
	userIds=userIds.replace(rep,"||");
	userNames=userNames.replace(rep,"||");
	userIds="|"+userIds+"|";
	userNames="|"+userNames+"|";
	selectIds=userIds;
	selectNames=userNames;
}


function addData(obj){
	selectIds = "";
	selectNames = "";
	var id="|"+obj.value+"|";
	var name="|"+obj.nameVal+"|";
	if(selectIds.indexOf(id)==-1){
		selectIds=selectIds+id;
	}
	if(selectNames.indexOf(name)==-1){
		selectNames=selectNames+name;
	}
}


//点击确定触发的事件
function cb(){
	var uId = "";
	var uName = "";
	uId=selectIds.substring(1,selectIds.length-1);
	uName=selectNames.substring(1,selectNames.length-1);
	var rstr=/\|\|/g;
	uId=uId.replace(rstr,",");
	uName=uName.replace(rstr,",");
	window.returnValue = uId + "|" + uName;
	window.close();
}

function showSelect(){
	if(""==viewSel){
		viewSel="?roleID="+roleID+"&vs=true&userIds="+dealUserIds();
	}else{
		viewSel="?roleID="+roleID;
	}
	document.getElementById("selectUser").src="selectUser_con_single.jsp"+viewSel;
}

function dealUserIds(){
	var uids=selectIds;
	var rstr=/\|\|/g;
	uids=uids.replace(rstr,"','");
	var rstr2=/\|/g;
	uids=uids.replace(rstr2,"'");
	return uids;
}
</script>
</head>
<body style="padding:10px;">
<script type="text/javascript">
	document.write('<iframe id="selectUser" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%" scrolling="no"'+
' src="'+targetURL+'"/>');
</script>
</body>
</html>