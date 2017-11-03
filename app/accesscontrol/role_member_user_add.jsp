<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.manager.*" %>


<%

long roleId=Long.parseLong(request.getParameter("id"));
%>
<HTML>
<HEAD>
<TITLE>权限管理>>角色管理>>角色成员 </TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function checkForm(){
	var obj = document.accessForm;
	if($("users").value ==""){
		alert("请选择需要添加的用户成员！");
		return false;
	}
	return true;
}

  function winOpenUser(){
	  var str;
	  str = window.showModalDialog('<%=request.getContextPath()%>/app/accesscontrol/select/select_user.jsp',window,'dialogWidth=1000px;dialogHeight=500px;status=yes;scroll=yes;resizable=yes');
	  //alert(str);
	  if(str == undefined) return;
	  var array = new Array();
	  if(""!=str){
		  array = str.split(";");
		  $("#userID").val(array[0]);
		  $("#user").val(array[1]+'('+array[0]+')');
	  }

  }	
function clearStudents(){
	$("user").value="";
	$("users").value="";
}


</script>
</HEAD>
<BODY>

<div class="clear"></div>

<form name="accessForm" method="post" action="role_member_user_add_db.jsp" onSubmit="return checkForm();">	
<div class="conBox">
        <div class="conTitle">角色成员（点击文本框选择人员）</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                      <td class="typeNameTd" style="width:150px">用户
                      <input type="hidden" id="userID" name="userID" size="15" value=""/>
                      <input type="hidden" name="roleId" value="<%=roleId%>"></td>
                      <td class="memberAddTd" align="left" style="width:720px">
                      <textarea name="user" rows="5" id="user" onClick="winOpenUser()" style="width:720px; cursor:pointer"></textarea></td>
                      </tr>
 
                  </table>
                  
                  </td>
              </tr>
            </table>
          </div>
          <div class="subBtnBox">
          <input type="submit" class="base_btn" onClick="return check();" value="提交" />
        <input type="button"  class="base_btn" value="返回" onClick="window.location.href='role_member_user.jsp?id=<%=roleId%>'"/>
		<input type="reset" name="reset" value="重置" class="base_btn">
          </div>
        </div>
        <div class="conBottom"></div>
      </div>
</form>
  
</BODY>
</HTML>
