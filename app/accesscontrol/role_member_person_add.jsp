<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>

<%
long roleId=Long.parseLong(request.getParameter("id"));
DAO dao = new DAO();
try{
	dao.begin();
%>
<HTML>
<HEAD>
<TITLE>权限管理&gt;&gt;角色管理&gt;&gt;角色成员 </TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/itil.js"></script>
<script src="<%=request.getContextPath()%>/scripts/ajax/prototype.js" type="text/javascript"></script>
<script language="JavaScript">
function checkForm(){
	var obj = document.accessForm;
	if($("users").value ==""){
		alert("请选择需要添加的用户成员！");
		return false;
	}
	obj.OK.disabled = true;
	return true;
}

function winOpen(id){
	var array;
	str = window.showModalDialog('<%=request.getContextPath()%>/app/accesscontrol/select/selectPerson.jsp',window,'dialogWidth=700px;dialogHeight=700px;status=no;scroll=auto');
	if(str != null && str != undefined){
		array = str.split("|");
		$("user").value = array[1];
		$("users").value = array[0];
	}else{
		$("user").value = "";
		$("users").value = "";
	}
}
function clearStudents(){
	$("user").value="";
	$("users").value="";
}
function selectAllUser(usertype){
	var url = "<%=request.getContextPath()%>/app/accesscontrol/select/selectAllUser.jsp";
	var request_pars = "usertype="+usertype; //请求参数
	var myAjax = new Ajax.Updater({success: 'Result'},url,{
		method     : 'post', // http 请求方法,get or post
		parameters : request_pars, // 请求参数
		evalScripts: true,
		onComplete : done   // 读取完毕
		});
}
function done(request)
{
	//$('loading').style.display = 'none';
	var array;
	var str = $("Result").innerHTML;
	if(str != null && str != undefined){
		array = str.split("||");
		$("user").value = array[1];
		$("users").value = array[0];
	}
}
var handle = {
	onCreate: function() {
		Element.show('loading');// 当创建Ajax请求时，显示loading
	},
	onComplete: function() {
		// 当请求成功返回时，如果当前没有其他正在运行中的Ajax请求，隐藏loading
		if (Ajax.activeRequestCount == 0) {
			Element.hide('loading');
		}
	}
};
Ajax.Responders.register(handle);
</script>
</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 class="">
  <TBODY>
    <TR>
      <TD id=banner align=left width=582 height=5></TD>
    </TR>
    <TR>
      <TD style="PADDING-LEFT: 25px; FONT-WEIGHT: bold; COLOR: #f2af08"
                            background=images/20050917_e_07.gif
                            height=34><IMG height=16
                              src="<%=request.getContextPath()%>/themes/images/unicomgd/role.gif"
                              ></TD>
    </TR>

</TABLE>     
  <table width="99%" align="center" cellpadding="1" cellspacing="1" class="table_frame">
           <form name="accessForm" method="post" action="role_member_person_add_db.jsp" onSubmit="return checkForm();">
			<tr class="table_row2">
            <td width="20%" align="right">代维用户&nbsp;&nbsp;</td>
            <td width="80%" height="30" colspan="2" align="left"><textarea name="user" disabled class="input_oneborder" id="user" style="width:500px;height:50px;overflow-y:visible;overflow:auto"></textarea>
              <input type="button" name="Submit2" value="选择" onClick="winOpen()" class="button"></td>
          </tr>
          <tr class="table_row2">
            <td height="30" colspan="3" align="center"><input type="submit" name="OK" value="保存" class="button" >
              <input type="reset" name="reset" value="重置" class="button">
              <input type="button" name="back" value="返回" onClick="javascript:history.back();" class="button">
              <input type="hidden" name="roleId" value="<%=roleId%>">
            <input type="hidden" name="users" id="users">            </td>
            </tr>
        </form></table>
</BODY>
</HTML>
<%
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	dao.close();
}
%>