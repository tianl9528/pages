<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>
<%
long userid=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getUserId();
DAO dao=new DAO();
try
{	
	dao.begin();
	boolean pass=false;
	UserManager manager=new UserManager();
	User dat=manager.readOne(userid);
%>
<script language="javascript" type="text/javascript">
<% 
       if(request.getParameter("Password")!=null)
	   {
	       String Password=request.getParameter("Password");
	       String FirstName=request.getParameter("FirstName");
	       String LastName=request.getParameter("LastName");
	       String IDcard=request.getParameter("IDcard");
	       String PhoneList=request.getParameter("PhoneList");
	       String EmailList=request.getParameter("EmailList");
	       String Address=request.getParameter("Address");
	       String Note=request.getParameter("Note");
	       dat.setPassword(Password);
	       dat.setFirstName(FirstName);
	       dat.setLastName(LastName);
	       dat.setIdCard(IDcard);
	       dat.setPhoneList(PhoneList);
	       dat.setEmailList(EmailList);
	       dat.setAddress(Address);
	       dat.setNote(Note);
	       boolean yes=manager.edit(dat);
	       if(yes)
	       {
	    	   %>
	    	   alert("修改成功！");
	    	   window.location.href="user_password.jsp";
	    	   <%
	       }
	       else
	       {
	    	   %>
	    	   alert("修改失败！");
	    	   <%
	       }
	   }
%>
</script>
<html>
<head>
<title>权限管理&gt;&gt;用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="jscript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="javascript" type="text/javascript">

function check()
{
	if(confirm('是否真的保存数据？'))
	{
		if(thisForm.DepartID.value=="")
		{
			alert("请选择部门！");
			thisForm.departID.focus();
			return false;
		}
		if(thisForm.UserName.value=="")
		{
	   		alert("登录名不为空！");
	   		thisForm.UserName.focus();
			return false;
		}
		if( thisForm.Password.value != thisForm.Pass2.value || thisForm.Password.value == "")
		{
			alert("密码不一致或为空！");
			return false;
		}
		if(thisForm.FirstName.value=="" || thisForm.LastName.value=="")
		{
			alert("请填入正确的姓氏和名字\n作为登录本系统后显示的用户名！");
			thisForm.FirstName.focus();
			return false;
		}
		return true;
  	}
	else{
		return false;
	}
}
 </script>
<body>
<%
	if(dat!=null)
	{
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><form name="thisForm" method="post" action="user_password.jsp" onSubmit="return checkforminput()">
    <td height="350" valign="top"><table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：用户修改资料</td>
        <td width="30%" align="right"><input name="submit" type="submit" class="button" onClick="return check()" value="保存">
<input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
<input name="button" type="button" class="button" onClick="window.close()" value="返回"></td>
      </tr>
    </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
        <tr class="table_row4">
          <td height="25" colspan="4">&nbsp;&nbsp;登录信息
		  <input type="hidden" name="id" value="<%=dat.getId()%>">
		  <input type="hidden" name="oldPassword" value="<%=dat.getPassword()==null?"":dat.getPassword()%>"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">登录名称</td>
          <td colspan="3">
		  <%=dat.getName()==null?"":dat.getName()%>
		  <input type="hidden" name="UserName" value="<%=dat.getName()==null?"":dat.getName()%>" style="width:80%" class="input_oneborder" >
          </td>
        </tr>

        <tr class="table_row3">
          <td height="25" align="center">密　　码</td>
          <td colspan="3"><input type="password" name="Password" style="width:80%" class="input_oneborder"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">确认密码</td>
          <td colspan="3"><input type="password" name="Pass2" style="width:80%" class="input_oneborder" ></td>
        </tr>
        <tr class="table_row3">
          <td width="15%" height="25" align="center">姓　　氏</td>
          <td width="35%"><input type="text" name="FirstName" value="<%=dat.getFirstName()==null?"":dat.getFirstName()%>" style="width:90%" class="input_oneborder">
            <font color="#FF0000">*</font></td>
          <td width="15%" align="center">名　　字</td>
          <td width="35%"><input type="text" name="LastName" value="<%=dat.getLastName()==null?"":dat.getLastName()%>" style="width:90%" class="input_oneborder" >
            <font color="#FF0000">*</font></td>
        </tr>
       <%-- <tr class="table_row3">
          <td height="25" align="center">唯一标识</td>
          <td colspan="3"><input type="text" name="sid" style="width:98%" value="<%=dat.getSid()==null?"":dat.getSid()%>" class="input_oneborder">
              <font color="#FF0000">*</font></td>
        </tr>--%>
        <tr class="table_row3">
          <td height="25" align="center">身份证号</td>
          <td colspan="3"><input type="text" name="IDcard" value="<%=dat.getIdCard()==null?"":dat.getIdCard()%>" style="width:98%" class="input_oneborder"></td>
          
        </tr>
        
        <tr class="table_row3">
          <td height="25" align="center">电　　话</td>
          <td colspan="3"><input type="text" name="PhoneList" value="<%=dat.getPhoneList()==null?"":dat.getPhoneList()%>" style="width:98%" class="input_oneborder" ></td>

        </tr>
        <tr class="table_row3">
          <td height="25" align="center">电子邮件</td>
          <td height="25" colspan="3"><input type="text" name="EmailList" value="<%=dat.getEmailList()==null?"":dat.getEmailList()%>" style="width:98%" class="input_oneborder" ></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">住　　址</td>
          <td height="25" colspan="3"><textarea name="Address" rows="3" style="width:98%;overflow:auto;height:60px;" class="input_oneborder"><%=dat.getAddress()==null?"":dat.getAddress()%></textarea></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">说　　明</td>
          <td height="25" colspan="3"><textarea name="Note" rows="3" style="width:98%;overflow:auto;height:60px;" class="input_oneborder"><%=dat.getNote()==null?"":dat.getNote()%></textarea></td>

  </table>
    </td>
	</form>
  </tr>
</table>
<%
	}
%>
</body>
</html>
<%
}
catch(Exception e)
{
	e.printStackTrace();
}
finally
{
	dao.close();
}
%>
