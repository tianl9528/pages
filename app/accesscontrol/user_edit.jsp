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

String id=request.getParameter("id");
DAO dao=new DAO();
try
{	
	dao.begin();
	boolean pass=false;
	String msg="操作读取错误！请重新操作或联系系统管理员！";
	String url="user_list.jsp";
	UserManager manager=new UserManager();
	User dat=manager.readOne(Long.parseLong(id));
	Set roleSet=dat.getRoles();
	Set entitySet=dat.getEntities();
	if(dat!=null)
	{
		pass=true;
	}
	else
	{
		pass=false;
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/calendar/calendarutf-8.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css" title="more">
</head>

<body>
<script language="jscript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>

<script language="javascript">
<%
	if(!pass)
	{
		out.print("window.alert('"+msg+"');");
		out.print("window.navigate('"+url+"');");
	}
%>
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
		/*
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
		}*/
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
		window.navigate('user_list.jsp');
	}
}
 </script>
<%
	if(dat!=null)
	{
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><form name="thisForm" method="post" action="user_db.jsp" onSubmit="roletree.submitData();return checkforminput()">
    <td height="350" valign="top"><table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url">&nbsp;</td>
        <td width="30%" align="right"><input name="submit" type="submit" class="button" onClick="return check()" value="保存">
<input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
<input name="button" type="button" class="button" onClick="javascript:goback()" value="返回"></td>
      </tr>
    </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
        <tr class="table_row4">
          <td height="25" colspan="6">&nbsp;&nbsp;登录信息
		  <input type="hidden" name="id" value="<%=dat.getId()%>">
		  <input type="hidden" name="oldPassword" value="<%=dat.getPassword()==null?"":dat.getPassword()%>"></td>
        </tr>
        <tr class="table_row3">
          <td width="15%" height="25" align="center">登录名称</td>
          <td colspan="5">
		  <%=dat.getName()==null?"":dat.getName()%>
		  <input type="hidden" name="UserName" value="<%=dat.getName()==null?"":dat.getName()%>" style="width:80%" class="input_oneborder" >          </td>
        </tr>
        <tr class="table_row4">
          <td colspan="6" height="25">&nbsp;&nbsp;详细信息
            <input type="hidden" name="NikName" style="width:98%" class="input_oneborder" value=""></td>
        </tr>
		<!--
        <tr class="table_row3">
          <td height="25" align="center">密　　码</td>
          <td colspan="3"><input type="password" name="Password" style="width:80%" class="input_oneborder"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">确认密码</td>
          <td colspan="3"><input type="password" name="Pass2" style="width:80%" class="input_oneborder" ></td>
        </tr>
		-->
        <tr class="table_row3">
          <td height="25">&nbsp;所属部门</td>
          <td height="25" colspan="5"><input type="input" class="input_oneborder" value="<%=dat.getDepart().getName()%>" name="DepartName" style="width:60%" readonly>
            <input type="button" name="selectDepart" value="选择" class="button" onClick="opendepart()" >
            <input name="DepartID" type="hidden" value="<%=dat.getDepart().getId()%>">
            <%	
	/**
	long selectedDepartId=0;
	if(dat.getDepart()!=null){
		selectedDepartId=dat.getDepart().getId();
	}
	
	StringBuffer tree = new StringBuffer();
	tree.append("<select name=\"DepartID\" style=\"width:70%\">");
	List departList=DepartHelper.getTreeList(departId);
	for(int i=0;i<departList.size();i++){
		Depart depart=(Depart)departList.get(i);
		tree.append("<option value=\""+depart.getId()+"\" "+(selectedDepartId==depart.getId()?"selected":"")+">");
		tree.append(depart.getPosition()+depart.getName()+"</option>");
	}
	tree.append("</select>");
	out.print(tree.toString());*/
%>
            <font color="#FF0000">*</font></td>
          </tr>
        <tr class="table_row3">
          <td width="10%" height="25" align="center">姓　名</td>
          <td width="23%"><font color="#FF0000">
            <input type="text" name="FirstName" value="<%=dat.getFirstName()==null?"":dat.getFirstName()%>" style="width:90%" class="input_oneborder">
            *</font></td>
          <td width="10%" align="center">性　别</td>
          <td width="24%"><select name="sex" id="sex" style=" width:40%">
              <option value="男" <%=(dat.getSex()!=null&&dat.getSex().equals("男"))?"selected":""%>>男</option>
              <option value="女" <%=(dat.getSex()!=null&&dat.getSex().equals("女"))?"selected":""%>>女</option>
            </select>          </td>
          <td width="10%" align="center">生　日</td>
          <td width="23%"><input name="birthday" value="<%=dat.getBirthday()==null?"":dat.getBirthday().substring(0,dat.getBirthday().lastIndexOf("160000Z"))%>" type="text" class="input_oneborder" id="birthday" style="width:80%">
              <img src="<%=request.getContextPath()%>/scripts/calendar/calendar.gif" class="image" onClick="calendar(birthday,false);"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">身份证号</td>
          <td><input type="text" name="IDcard" value="<%=dat.getIdCard()==null?"":dat.getIdCard()%>" style="width:98%" class="input_oneborder"></td>
          <td align="center">岗位名称</td>
          <td><input name="position" id="position" value="<%=dat.getPosition()==null?"":dat.getPosition()%>" style="width:98%" class="input_oneborder"></td>
          <td align="center">工作证号</td>
          <td><input name="jobcode" type="text" value="<%=dat.getJobcode()==null?"":dat.getJobcode()%>" class="input_oneborder" id="jobcode" style="width:98%"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">人员分类</td>
          <td><input name="category" type="text" value="<%=dat.getCategory()==null?"":dat.getCategory()%>" class="input_oneborder" id="category" style="width:98%"></td>
          <td align="center">人员类别</td>
          <td><input name="personsort" id="personsort" value="<%=dat.getPersonsort()==null?"":dat.getPersonsort()%>" style="width:98%" class="input_oneborder">
          </td>
          <td align="center">人员编号</td>
          <td><input name="personcode" type="text" value="<%=dat.getPersoncode()==null?"":dat.getPersoncode()%>" class="input_oneborder" id="personcode" style="width:98%"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">政治面貌</td>
          <td><input name="zzmm" type="text" class="input_oneborder" value="<%=dat.getZzmm()==null?"":dat.getZzmm()%>" id="zzmm" style="width:98%"></td>
          <td align="center">党政职务</td>
          <td><input name="dzzw" id="dzzw" value="<%=dat.getDzzw()==null?"":dat.getDzzw()%>" style="width:98%" class="input_oneborder"></td>
          <td align="center">技术职务</td>
          <td><input name="jszw" type="text" value="<%=dat.getJszw()==null?"":dat.getJszw()%>" class="input_oneborder" id="jszw" style="width:98%"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">工人职务聘任</td>
          <td><input name="grzwpr" type="text" value="<%=dat.getGrzwpr()==null?"":dat.getGrzwpr()%>" class="input_oneborder" id="grzwpr" style="width:98%"></td>
          <td align="center">手　　机</td>
          <td><input name="sort" type="text" value="<%=dat.getSort()==null?"":dat.getSort()%>" class="input_oneborder" id="sort" style="width:98%"></td>
          <td align="center">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <!--
        <tr class="table_row3">
          <td height="25" align="center">唯一标识</td>
          <td colspan="5"><input type="text" name="sid" style="width:98%" value="<%=dat.getSid()==null?"":dat.getSid()%>" class="input_oneborder">
              <font color="#FF0000">*</font></td>
        </tr>
        -->
        <tr class="table_row3">
          <td height="25" align="center">电　　话</td>
          <td><input type="text" name="PhoneList" value="<%=dat.getPhoneList()==null?"":dat.getPhoneList()%>" style="width:98%" class="input_oneborder" ></td>
          <td align="center">电子邮件</td>
          <td colspan="3"><input type="text" name="EmailList" value="<%=dat.getEmailList()==null?"":dat.getEmailList()%>" style="width:98%" class="input_oneborder" ></td>
          </tr>
        <tr class="table_row3">
          <td height="25" align="center">住　　址</td>
          <td height="25" colspan="5"><textarea name="Address" rows="3" style="width:98%;overflow:auto;height:60px;" class="input_oneborder"><%=dat.getAddress()==null?"":dat.getAddress()%></textarea></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">说　　明</td>
          <td height="25" colspan="5"><textarea name="Note" rows="3" style="width:98%;overflow:auto;height:60px;" class="input_oneborder"><%=dat.getNote()==null?"":dat.getNote()%></textarea></td>
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
			<input type="checkbox" name="roleid" <%=DepartHelper.isRoleChecked(roleSet,role.getId())%> value="<%=role.getId()%>">
			<%out.print(role.getName());%>			</td>
            <td width="34%">
<%
			if(roleList.size()>(i+1)){
				role=(Role)roleList.get(i+1);
%>			
			<input type="checkbox" name="roleid" <%=DepartHelper.isRoleChecked(roleSet,role.getId())%> value="<%=role.getId()%>">
			<%out.print(role.getName());%>
<%
			}
%>			</td>
            <td width="33%">
<%
			if(roleList.size()>(i+2)){
				role=(Role)roleList.get(i+2);
%>			
			<input type="checkbox" name="roleid" <%=DepartHelper.isRoleChecked(roleSet,role.getId())%> value="<%=role.getId()%>">
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
	String ids="";
	Iterator it=entitySet.iterator();
	if(it!=null){
    	while(it.hasNext()){
        	Entity entity=(Entity)it.next();
        	ids+="|"+entity.getId()+"|";
        	}
        }
%>
          <tr class="table_row3">
            <td width="33%" colspan="3" height="25">
			<iframe id="roletree" frameborder="0" scrolling="no" width="100%" src="role_tree_iframe.jsp?ids=<%=ids%>"/>
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
<%!
	private StringBuffer readChildTree(Depart depart,long selectedDepartId){
		StringBuffer buffer=new StringBuffer();
		if(depart.getChildDepart()!=null&&depart.getChildDepart().size()>0){
			Iterator it=depart.getChildDepart().iterator();
			while(it.hasNext()){
				Depart temp=(Depart)it.next();
				temp.setLayer(depart.getLayer()+1);
				buffer.append("<option value=\""+temp.getId()+"\"");
				if(temp.getId()==selectedDepartId){
					buffer.append(" selected");
				}
				buffer.append(">");
				for(int i=0;i<temp.getLayer();i++){
					buffer.append("-");
				}
				buffer.append(temp.getName()+"</option>");
				buffer.append(readChildTree(temp,selectedDepartId));
			}
		}
		return buffer;
	}
%>