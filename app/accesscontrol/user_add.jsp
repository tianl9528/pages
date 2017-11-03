<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>

<%
long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
long parentDepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getParentDepartId();
String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();

DAO dao=new DAO();
try{
	dao.begin();
%>
<html>
<head>
<title>权限管理&gt;&gt;用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">

<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css" title="more">
</head>

<body>
<script language="jscript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/calendar/calendarutf-8.js"></script>
<script language="javascript">
function check()
{
	if(confirm('是否真的保存数据？'))
	{
		if(thisForm.DepartID.value.trim()=="")
		{
			alert("请选择部门！");
			return false;
		}
		if(thisForm.UserName.value.trim()=="")
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
		if(thisForm.Password.value.length<6){
			alert("密码长度不能少于6位,请重新输入");
			thisForm.Password.focus();
			return false;
		}
		/*if(thisForm.NikName.value.trim()=="")
		{
			alert("请填入昵称！某些需要匿名使用的系统将使用此名称！");
			thisForm.NikName.focus();
			return false;
		}*/
		if(thisForm.FirstName.value.trim()=="")
		{
			alert("请填入正确的姓名\n作为登录本系统后显示的用户名！");
			thisForm.FirstName.focus();
			return false;
		}
		return true;
	}
	else{
		return false;
	}
}
function opendepart()
{
	ret= window.showModalDialog('<%=request.getContextPath()%>/itil/accesscontrol/select/departselector.jsp','depart','dialogWidth:600px;dialogHeight:500px;center:yes;help:no;status:no');
	if(ret==null)
		return;
	a1=ret.split(";");
	flag=true;
	thisForm.DepartID.value=a1[0];
	thisForm.DepartName.value=a1[1];
}
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="user_list.jsp";
	}
}
</script>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
<form name="checkNameForm" action="operate/check_name_sid.jsp" method="post" target="frameCheckForm">
  <input type="hidden" name="name">
</form>
  <iframe id="frameCheckForm" name="frameCheckForm" src="about:blank" width="0" height="0" scrolling="no"></iframe>
  <form name="thisForm" method="post" action="user_db.jsp" onSubmit="roletree.submitData();return checkforminput()">
    <td height="350" valign="top"><table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url"></td>
        <td width="40%" align="right"><input name="submit" type="submit" class="button" onClick="return check()" disabled="true" value="保存">
<input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
<input name="button" type="button" class="button" onClick="goback()" value="返回"></td>
      </tr>
    </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame">
        <tr class="table_row4">
          <td height="25" colspan="6">&nbsp;&nbsp;登录信息</td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">登录名称</td>
          <td colspan="5"><input type="text" name="UserName" style="width:50%" class="input_oneborder" onChange="javascript:userSid();">
            <font color="#FF0000">*</font>&nbsp;<span id="checkmsg"><font color="#6699FF">请输入用户名</font></span>
			<!--<input type="button" class="button" value="检查登录名" name="checkonly" onClick="userNameCheckOnly()">			
			<input type="hidden" name="UserNameOnly" value="false">-->
			<script language="javascript">
			function userSid(){
				var uname = document.getElementById("UserName").value;
				if (uname == "") {
					return false;
				}
				document.checkNameForm.name.value = uname;
				document.getElementById("checkmsg").innerHTML = "检查是否唯一，请稍等...";
				document.checkNameForm.submit();
				return true;
			}
			</script>		</td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">密　码</td>
          <td colspan="5"><input type="password" name="Password" style="width:50%" class="input_oneborder" >
            <font color="#FF0000">*</font></td>
        </tr>

        <tr class="table_row3">
          <td height="25" align="center">确认密码</td>
          <td colspan="5"><input type="password" name="Pass2" style="width:50%" class="input_oneborder" >
            <font color="#FF0000">*</font></td>
        </tr>
        <tr class="table_row4">
          <td colspan="6" height="25">&nbsp;&nbsp;详细信息</td>
        </tr>
        <!--<tr class="table_row3">
          <td height="25" align="center">昵　称</td>
          <td colspan="5"><input name="NikName" type="text" class="input_oneborder" id="NikName" style="width:50%">
              <font color="#FF0000">*</font></td>
        </tr>-->
		<tr class="table_row3">
          <td height="25" align="center">所属部门</td>
          <td colspan="5"><input type="input" class="input_oneborder" name="DepartName" style="width:50%" readonly>
            <input type="button" name="selectDepart" value="选择" class="button" onClick="opendepart()" >
            <input name="DepartID" type="hidden" value="">
            <%	
	/**	
	StringBuffer tree = new StringBuffer();
	tree.append("<select name=\"DepartID\" style=\"width:60%\">");
	List departList=DepartHelper.getTreeList(departId);
	for(int i=0;i<departList.size();i++){
		Depart depart=(Depart)departList.get(i);
		tree.append("<option value=\""+depart.getId()+"\">");
		tree.append(depart.getPosition()+depart.getName()+"</option>");
	}
	tree.append("</select>");
	out.print(tree.toString());*/
%>
            <font color="#FF0000">*</font> </td>
          </tr>
        <tr class="table_row3">
          <td width="10%" height="25" align="center">姓　名</td>
          <td width="23%"><input type="text" name="FirstName" style="width:90%" class="input_oneborder">
              <font color="#FF0000">*</font></td>
          <td width="10%" align="center">性　别</td>
          <td width="24%">
          	<select name="sex" id="sex" style=" width:40%">
         		<option value="男">男</option>
                <option value="女">女</option>
            </select>          </td>
          <td width="10%" align="center">生　日</td>
          <td width="23%">
          	<input name="birthday" type="text" class="input_oneborder" id="birthday" style="width:80%">
          	<img src="<%=request.getContextPath()%>/scripts/calendar/calendar.gif" class="image" onClick="calendar(birthday,false);"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">身份证号</td>
          <td><input name="IDcard" type="text" class="input_oneborder" id="IDcard" style="width:98%"></td>
          <td align="center">岗位名称</td>
          <td><input name="position" id="position" style="width:98%" class="input_oneborder"></td>
          <td align="center">工作证号</td>
          <td><input name="jobcode" type="text" class="input_oneborder" id="jobcode" style="width:98%"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">人员分类</td>
          <td><input name="category" type="text" class="input_oneborder" id="category" style="width:98%"></td>
          <td align="center">人员类别</td>
          <td><input name="personsort" id="personsort" style="width:98%" class="input_oneborder"> </td>
          <td align="center">人员编号</td>
          <td><input name="personcode" type="text" class="input_oneborder" id="personcode" style="width:98%"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">政治面貌</td>
          <td><input name="zzmm" type="text" class="input_oneborder" id="zzmm" style="width:98%"></td>
          <td align="center">党政职务</td>
          <td><input name="dzzw" id="dzzw" style="width:98%" class="input_oneborder"></td>
          <td align="center">技术职务</td>
          <td><input name="jszw" type="text" class="input_oneborder" id="jszw" style="width:98%"></td>
        </tr>
        <!--
        <tr class="table_row3">
          <td height="25" align="center">唯一标识</td>
          <td colspan="5"><input type="text" name="sid" style="width:50%" class="input_oneborder">
            <font color="#FF0000">*</font>
            <input type="button" class="button" value="生成标识码" name="generate" onClick="sidGenerate()">
          </td>
        </tr>
        -->
        <tr class="table_row3">
          <td height="25" align="center">工人职务聘任</td>
          <td><input name="grzwpr" type="text" class="input_oneborder" id="grzwpr" style="width:98%"></td>
          <td align="center">整体排序</td>
          <td><input name="sort" type="text" class="input_oneborder" id="sort" style="width:98%"></td>
          <td align="center">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        
        <tr class="table_row3">
          <td height="25" align="center">电　话</td>
          <td><input type="text" name="PhoneList" style="width:98%" class="input_oneborder" ></td>
          <td align="center">电子邮件</td>
          <td colspan="3"><input type="text" name="EmailList" style="width:98%" class="input_oneborder" ></td>
          </tr>
        <tr class="table_row3">
          <td height="25" align="center">住　址</td>
          <td height="25" colspan="5"><textarea name="Address" rows="3" style="width:98%;overflow:auto;height:60px" class="input_oneborder"></textarea></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">说　明</td>
          <td height="25" colspan="5"><textarea name="Note" rows="3" style="width:98%;overflow:auto;height:60px" class="input_oneborder"></textarea></td>
        </tr>
		<tr class="table_row4">
        <td height="25" colspan="6">&nbsp;&nbsp;配置角色</td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="6">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	RoleManager roleManager=new RoleManager();
	List roleList=roleManager.readAll();
	if(roleList!=null&&roleList.size()>0){
		Role role=new Role();
		for(int i=0;i<roleList.size();i=i+3){
%>
          <tr class="table_row3">
            <td width="33%" height="25">
<%
			role=(Role)roleList.get(i);
%>
			<input type="checkbox" name="roleid" value="<%=role.getId()%>">
			<%out.print(role.getName());%>			</td>
            <td width="34%">
<%
			if(roleList.size()>(i+1)){
				role=(Role)roleList.get(i+1);
%>			
			<input type="checkbox" name="roleid" value="<%=role.getId()%>">
			<%out.print(role.getName());%>
<%
			}
%>			</td>
            <td width="33%">
<%
			if(roleList.size()>(i+2)){
				role=(Role)roleList.get(i+2);
%>			
			<input type="checkbox" name="roleid" value="<%=role.getId()%>">
			<%out.print(role.getName());%>
<%
			}
%>			</td>
          </tr>
<%
		}
	}
	else{
%>
          <tr class="table_row3">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
<%
	}
%>
	</table>	</td>
	</tr>
	<tr class="table_row4">
        <td height="25" colspan="6">&nbsp;&nbsp;配置功能模块
          <input type="checkbox" name="checkAll" onClick="roletree.CheckAllBox(this);">
          全选
          <input type="hidden" name="saveIds"></td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="6">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	EntityManager entityManager=new EntityManager();
	List entityList=entityManager.readAll();
	if(entityList!=null&&entityList.size()>0){
%>
			<tr>
				<td>
					<iframe id="roletree" frameborder="0" scrolling="no" width="100%" src="role_tree_iframe.jsp?ids="/>
				</td>
			</tr>
<%
	}
	else{
%>
          <tr class="table_row3">
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
<%
	}
%>

		</table>	</td>
	</tr>
      </table>
    </td>
	</form>
  </tr>
</table>
</body>
</html>
<%
}
catch(Exception e){
	e.printStackTrace();
}
finally{
	dao.close();
}
%>