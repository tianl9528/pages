<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List" %>
<%@ page import="sunit.database.*"%>
<%
request.setCharacterEncoding("utf-8");
String departId=request.getParameter("departId")==null?"":request.getParameter("departId");
DAO dao=new DAO();
try
{
	dao.begin();
	UserManager manager=new UserManager();
	PaginationI pagination=new PaginationI();
	String condition ="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");
	}
	//得到部门所有的用户
	List tempList=pagination.getListSQL(manager.readUserByCurDepartSql(condition,Long.parseLong(departId)),10,request);
	List list=manager.poTransfer(tempList);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户列表</title>
<base target="_self">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/itil.js"></script>
<script language="javascript">
function cb(){
	var obj = document.accessForm;
	var i = 0;
	var select = false;
	var uId = "";
	var uName = "";
	
	//只有一条数据的情况
	if(obj.userId != undefined){
		if(obj.userId.value != undefined){
			if(obj.userId.checked){
				uId += "," + obj.userId.value;
				uName += "," + obj.userName.value;
				select = true;
			}
		} else {
			for(i = 0;i < obj.userId.length; i ++){
				if(obj.userId[i].checked){
					uId += "," + obj.userId[i].value;
					uName += "," + obj.userName[i].value;
					select = true;
				}
			}
		}
		if(!select){
			return false;
		} else {
			window.returnValue = uId.substr(1) + "|" + uName.substr(1);
			window.close();
		}
	}
}

function selectAll(){
	var obj = document.accessForm;
	if(obj.userId != undefined){
		if(obj.userId.value != undefined){
			if(obj.All.checked == true){
				obj.userId.checked = true;
			} else {
				obj.userId.checked = false;
			}
		} else {
			if(obj.All.checked == true){
				for(var i = 0; i < obj.userId.length; i ++){
					obj.userId[i].checked = true;
				}
			} else {
				for(var i = 0; i < obj.userId.length; i ++){
					obj.userId[i].checked = false;
				}
			}
		}
	}
}
</script>
</head>
<body style="padding:10px;">
<form name="accessForm" action="selectDepartUser.jsp" method="post">
<div id=searchdiv align="center" style="padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" value="<%=condition%>" class="input_oneborder" style="width:98%"><input style="display:none">
          <input type="hidden" name="departId" value="<%=departId%>" ></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
      </table>
</div>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#B8CBE9">
        <tr bgcolor="#FFFFFF">
          <td>
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr>
          <td width="10%" class="list_title"><input type="checkbox" name="All" onClick="javascript:selectAll()">全选</td>
          <td width="32%" height="30" class="list_title">用户</td>
          <td width="58%" class="list_title">部门</td>
        </tr>
<%	    
	if(list != null&&list.size()>0)
	{
		User dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (User)list.get(i);
			String theme = (i%2==0) ? "" : "1";
	%>
        <tr>
          <td class="list_item<%=theme%>"><input type="checkbox" name="userId" value="<%=dat.getId()%>" ></td>
          <td class="list_item<%=theme%>"><%=(dat.getFirstName()!=null&&dat.getFirstName().length()>0)?dat.getFirstName():""%>(<%=dat.getName()%>)<input type="hidden" name="userName" id="userName" value="<%=dat.getFirstName()%>"></td>
          <td class="list_item<%=theme%>"><%=dat.getDepart()!=null?dat.getDepart().getName():""%>        </td>
        </tr>
<%		}
	}
		%>
      </table></td>
        </tr>
</table>
</form>
<%=pagination.getControl(request,response)%>
<div align="center" style="padding:5px;"><input type="button" name="Close" value="确定" onClick="cb()" class="button">
  <input type="button" name="Close2" value="取消" onClick="window.close();" class="button">
</div>
</body>
</html>
<%
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		dao.close();
	}
%>