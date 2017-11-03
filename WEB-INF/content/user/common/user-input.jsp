<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String returnValidate = (String)request.getAttribute("returnId")==null?"":(String)request.getAttribute("returnId");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/theme/css/mSelect.css" rel="stylesheet" type="text/css" />

<script src="<%=request.getContextPath()%>/scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js" type="text/javascript"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/theme/js/mSelect.js"></script>

<title>用户信息管理 - <%=request.getAttribute("userID")==null ? "新增":"修改" %></title>
<%

String uid=request.getParameter("id");
%>

</head>
<body>
<script type="text/javascript">

 function chk(){
	 var user_LogName = document.getElementById("logname").value;
	    var msgKey = '<%=returnValidate%>';
		   if(msgKey.length==0){ 
		       var msg = $.ajax({type:"POST",
	          url:"userinfo-validate.action?userLongName="+user_LogName,
	         async:false
	       }).responseText;
	     
		     if(msg.length>0){
		     	 document.form1.buttomsubmit.disabled = true;
		       $("#span").css("color","red").html("用户已被注册"); 
		       return false;
		     }else{
		    	 $("#span").css("color","red").html(" "); 
		    	document.form1.buttomsubmit.disabled = false;
		   
		     }
		   }
 }
 
function check(){
    var yhNname = document.getElementById("name").value;
    var yhLogName = document.getElementById("logname").value;
    var yhPassword1 = document.getElementById("password1").value;
    var yhPassword2 = document.getElementById("password2").value;
    if(yhNname.length==0 || yhNname.replace(/\s+/g,"")=="" || yhNname==null){ /* 验证用户名是否为空 */
        alert("请输入用户名字");
        return false;
    }
    if(yhLogName.length==0 || yhLogName.replace(/\s+/g,"")=="" || yhLogName==null){ /* 验证登录名是否为空 */
        alert("请输入登录名");
        return false;
    }
   
    
    if(yhPassword1.length==0){ /* 验证密码是否为空 */
        alert("密码不能为空");
        return false;
    }else{
		if(yhPassword1!=yhPassword2){  /* 验证两次输入的密码是否一致 */
				alert("两次密码不一致");
				return false;
		}
    }

    var jobNname = document.getElementById("job").value;
    if(jobNname==""){
    	 alert("请选择所任职务");
         return false;
    }
    
    return true; 
    
}

var mySelect=new mSelect('mySelect','mSelect.css');
window.onload=function(){
	var aS=document.getElementsByTagName('select');
	for (var i=0;i<aS.length;i++){
		switch(aS[i].getAttribute('mSty')){
			case 'blueCircle':
				mySelect.Create(aS[i],'blueCircle',true);
				break;
		}
	}
}
	
</script>



<div class="clear"></div>

<form id="form1" name="form1" method="post" action="user-save.action?id=${user.user_id }" onSubmit="return checkforminput()" enctype="multipart/form-data">	
<div class="conBox">
        <div class="conTitle">用户信息</div>
        <div class="conMiddle">
          <div>
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
                <td>
                <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
 <tr class="greyColor">
                      <td colspan="2" rowspan="4" class="typeNameTd" style="width:100px">
                      <img src="<%=request.getContextPath()%>${user.images_url}" onerror="this.src='<%=request.getContextPath()%>/theme/images/de_user.gif'" width="200" height="250"/>
                      </td>
                      <td class="typeNameTd" style="width:100px">姓名</td>
                      <td class="memberAddTd" align="left" style="width:350px">
                      <input name="user.user_name" type="text" class="itemManagerInput_m" id="user.user_name" value="${user.user_name}" />
                      </td>
                    </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd" >登录名</td>
                      <td class="memberAddTd" align="left">
                      ${user.log_name}
                      </td>
                  </tr>
                    <tr class="greyColor">
                      <td class="typeNameTd" >性别</td>
                      <td class="memberAddTd" align="left">
                      <input  type="radio" name="user.sex" value="0"  <c:if test="${user.sex=='0' || empty id }">checked</c:if>/>男 
					  &nbsp;&nbsp;<input  type="radio" name="user.sex" value="1"  <c:if test="${user.sex=='1'}">checked</c:if>/>女
                      </td>
                    </tr>                
                    <tr class="greyColor">
                      <td class="typeNameTd" style="width:100px">联系方式</td>
                      <td class="memberAddTd" align="left" style="width:350px">
                      <input name="user.mobile" type="text" class="itemManagerInput" id="user.mobile" value="${user.mobile}" />
                      </td>
                    </tr>
                    
                    <tr class="greyColor">
                      <td class="typeNameTd" >密码</td>
                      <td class="memberAddTd" align="left"><input name="user.password" type="password" class="itemManagerInput" id="user.password" value="${user.password}" /></td>
                      <td class="typeNameTd" >确认密码</td>
                      <td class="memberAddTd" align="left"><input type="password" class="itemManagerInput" id="password2" value="${user.password}" /></td>
                    </tr>
                    <!-- 
                 <tr class="greyColor">
                      <td class="typeNameTd" >工作室</td>
                      <td class="memberAddTd" align="left">${user.depart.name}</td>
                       <td class="typeNameTd" >职务</td>
                      <td class="memberAddTd" align="left">${user.job.name}</td>
                    </tr>
                     -->
                    <tr class="whiteColor">
                      <td class="typeNameTd" >人员简介</td>
                      <td class="memberAddTd" align="left"><input name="user.summary" type="text" class="itemManagerInput" id="user.password" value="${user.summary}" /></td>
                      <td class="typeNameTd" >相片</td>
                      <td class="memberAddTd" align="left"><input type="file" name="reportFiles" class="itemManagerInput" />
                      </td>
                    </tr>
                    
                    <!-- 
                     <tr class="greyColor">
                     	 <td class="websiteTd" >个人网站</td>
                      <td class="memberAddTd" align="left"><input name="user.professor.website" class="itemManagerInput" value="${user.professor.website}"/></td>
                     </tr>
                     
                     <tr class="greyColor">
                     	 <td class="companyTd" >公司名称</td>
                      <td class="companyTd" align="left"><input name="user.company.companyname" class="itemManagerInput" value="${user.company.companyname}"/></td>
                     </tr>
                     
                      -->
                  </table>
                                    
                  </td>
              </tr>
            </table>
                  
          </div>
          <div class="subBtnBox">
          <input type="submit" class="base_btn" onclick="return check();" value="提交" />
        
          </div>
        </div>
        <div class="conBottom"></div>
      </div>
</form>

</body>
</html>