<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
	long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
	long parentDepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getParentDepartId();
	String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();
	DAO dao=new DAO();
	try{
		dao.begin();
		String id=request.getParameter("id");
		RoleManager manager=new RoleManager();
		Role dat=new Role();
		dat=manager.readOne(Long.parseLong(id));
		EntityManager entityManager=new EntityManager();
		List entityList=entityManager.readEntityByRole(dat.getId());
%>
<html>
<head>
<title>权限管理&gt;&gt;角色管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="javascript" type="text/javascript">
<%
	if(dat==null)
	{
		out.print("window.alert(\"操作错误或数据库读取错误！请重新操作或联系系统管理员！\");");
		out.print("window.navigate(\"role_list.jsp\");");
	}
%>
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.navigate('role_list.jsp');
	}
}
</script>
</head>
<body>
<%
	if(dat!=null)
	{
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<form name="thisForm" method="post" onSubmit="return checkforminput()" action="role_config_db.jsp">
  <tr>
    <td height="350" valign="top">
	<table width="98%" align="center" cellpadding="0" cellspacing="0">
      <tr class="table_row3">
        <td width="20%" height="30"><font size="+1"><strong>配置角色</strong></font></td>
        <td width="20%">&nbsp;</td>
        <td width="20%">&nbsp;</td>
        <td width="40%" align="right">
		  <input name="submit" type="submit" class="button" onClick="return confirm('确定提交数据吗？')" value="保存">
          &nbsp;
          <input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
          &nbsp;
          <input name="button" type="button" class="button" onClick="goback()" value="返回"></td>
      </tr>
    </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame">
        <tr class="table_row3">
          <td width="10%" height="25" align="right">角色名称：</td>
          <td width="90%">
		  <%=dat.getName()==null?"":dat.getName()%>
		  <input type="hidden" name="id" value="<%=dat.getId()%>">
		  </td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="right">说　　明：</td>
          <td height="25"><%=dat.getNote()==null?"":dat.getNote()%></td>
        </tr>
		<tr class="table_row4">
        	<td height="25" colspan="2">&nbsp;&nbsp;拥有的功能模块</td>
        </tr>
     	<tr class="table_row3">
        	<td height="25" colspan="2"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%

	if(entityList!=null&&entityList.size()>0){
		Entity entity=null;
		for(int i=0;i<entityList.size();i=i+4){
%>
          <tr class="table_row3">
            <td width="25%" height="25">
<%
			entity=(Entity)entityList.get(i);
%>
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）			</td>
            <td width="25%">
<%
			if(entityList.size()>(i+1)){
				entity=(Entity)entityList.get(i+1);
%>			
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>			</td>
            <td width="25%">
<%
			if(entityList.size()>(i+2)){
				entity=(Entity)entityList.get(i+2);
%>			
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>			</td>
            <td width="25%">
<%
			if(entityList.size()>(i+3)){
				entity=(Entity)entityList.get(i+3);
%>			
			<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
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
            <td>&nbsp;</td>
          </tr>
<%
	}
%>
        </table>
		</td>
      </tr>
     	<tr class="table_row4">
          <td height="25" colspan="2">&nbsp;&nbsp;拥有此角色的部门和用户（
		  	<span id="alldeparts"><input type="checkbox" name="departCheck" onClick="selectAllDeparts()">选择全部部门</span>
			<span id="allusers"><input type="checkbox" name="userCheck" onClick="selectAllUsers()">
			选择全部用户</span>
			）
		  <font color="#FF3366">提示：点击部门展开此部门的用户</font></td>
   	  </tr>
     	<tr class="table_row3">
          <td height="25" colspan="2" style="padding:20px;">
<%
	DepartManager departManager=new DepartManager();
	List departList = departManager.readTreeByIdDefault(departId);
	if(departList!=null&&departList.size()>0){
		UserManager userManager=new UserManager();
		List allUserList=userManager.readAll();
		List userList=null;
%>
	<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
		<tr class="table_row4">
			<td width="25%" height="23">&nbsp;部门列表</td>
			<td width="75%">&nbsp;对应部门下的用户</td>
		</tr>
	</table>
    <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
<%
		for(int k=0;k<departList.size();k++){
			Depart depart=(Depart)departList.get(k);
%>
		<tr class="table_row3">
			<td width="25%">
				<%=getSpace(depart)%>
				<input type="checkbox" name="departs" value="<%=depart.getId()%>" <%=dat.getDeparts().contains(depart)?"checked":""%>>
           		<a href="javascript:showDiv('userdiv<%=depart.getId()%>')"><%=depart.getName()==null?"":depart.getName()%></a>
			</td>
            <td width="75%">
       <div id="userdiv<%=depart.getId()%>" style="display:">
<%
	userList=getDepartUsers(depart,allUserList);
	if(userList!=null&&userList.size()>0){
%>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table_frame">
<%
		User user=new User();
		for(int i=0;i<userList.size();i=i+3){
%>
			  <tr class="table_row3">
				<td width="33%">
<%
			user=(User)userList.get(i);
%>
			<input type="checkbox" name="users" value="<%=user.getId()%>" <%=(dat.getUsers().contains(user)?"checked":"")%>>
			<%=user.getFirstName()==null?"":user.getFirstName()%><%=user.getLastName()==null?"":user.getLastName()%>
			（<%=user.getName()==null?"":user.getName()%>）
				</td>
				<td width="34%">
<%
			if(userList.size()>(i+1)){
				user=(User)userList.get(i+1);
%>
			<input type="checkbox" name="users" value="<%=user.getId()%>" <%=(dat.getUsers().contains(user)?"checked":"")%>>
			<%=user.getFirstName()==null?"":user.getFirstName()%><%=user.getLastName()==null?"":user.getLastName()%>
			（<%=user.getName()==null?"":user.getName()%>）							
<%
			}
%>							
				</td>
				<td width="33%">
<%
			if(userList.size()>(i+2)){
				user=(User)userList.get(i+2);
%>
			<input type="checkbox" name="users" value="<%=user.getId()%>" <%=(dat.getUsers().contains(user)?"checked":"")%>>
			<%=user.getFirstName()==null?"":user.getFirstName()%><%=user.getLastName()==null?"":user.getLastName()%>
			（<%=user.getName()==null?"":user.getName()%>）							
<%
			}
%>							
				</td>
			</tr>
<%
		}
%>
		</table>
<%
	}
%>
				  </div>
				  </td>
                </tr>
<%
		}
%>
              </table>
          </td>
   	  </tr>
     	<tr class="table_row3">
          <td height="25" colspan="2">&nbsp;</td>
   	  </tr>
      </table>
<%
	} 
%>
     </td>
  </tr>
  </form>
</table>
<script language="javascript" type="text/javascript">
function showDiv(divname){
	if(document.all.item(divname).style.display==""){
		document.all.item(divname).style.display="none";
	}
	else{
		document.all.item(divname).style.display="";
	}
}
function selectAllDeparts(){
	if(document.all.item("departCheck").checked==true)
	{
		var checks=document.getElementsByName("departs");
		if(checks.length>0)
		{
			for(var i=0;i<checks.length;i++)
				checks[i].checked=true;
			document.all.item("departCheck").checked=true;		
			document.all.item("alldeparts").innerHTML="<input type=checkbox name=departCheck onClick=selectAllDeparts() checked>取消选择部门";
		}
	}
	else
	{
		var checks=document.getElementsByName("departs");
		if(checks.length>0)
		{
			for(var i=0;i<checks.length;i++)
				checks[i].checked=false;
		 document.all.item("departCheck").checked=false;		
		 document.all.item("alldeparts").innerHTML="<input type=checkbox name=departCheck onClick=selectAllDeparts()>选择全部部门";
		}
	}
}
function selectAllUsers(){
		if(document.all.item("userCheck").checked==true)
	{
		var checks=document.getElementsByName("users");
		if(checks.length>0)
		{
			for(var i=0;i<checks.length;i++)
				checks[i].checked=true;
			document.all.item("userCheck").checked=true;		
			document.all.item("allusers").innerHTML="<input type=checkbox name=userCheck onClick=selectAllUsers() checked>取消选择用户";
		}
	}
	else
	{
		var checks=document.getElementsByName("users");
		if(checks.length>0)
		{
			for(var i=0;i<checks.length;i++)
				checks[i].checked=false;
		 document.all.item("userCheck").checked=false;		
		 document.all.item("allusers").innerHTML="<input type=checkbox name=userCheck onClick=selectAllUsers()>选择全部用户";
		}
	}
}
</script>
<%
	}
%>
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
<%!
	private String getSpace(Depart depart){
		String space="";
		for(int i=0;i<depart.getLayer();i++){
			space=space+"&nbsp;&nbsp;";
		}
		return space;
	}

	private List getDepartUsers(Depart depart , List allUserList){
		List list=null;
		if(depart!=null){
			list=new ArrayList();
			for(int i=0;i<allUserList.size();i++){
				User user=(User)allUserList.get(i);
				if(user.getDepart().getId()==depart.getId()){
					list.add(user);
				}
			}
		}
		return list;
	}

	private StringBuffer readChildTree(Depart depart,String space,Role dat){
		StringBuffer buffer=new StringBuffer();
		if(depart.getChildDepart()!=null&&depart.getChildDepart().size()>0){
			space=space+"&nbsp;&nbsp;";
			Iterator it=depart.getChildDepart().iterator();
			while(it.hasNext()){
				Depart temp=(Depart)it.next();
				buffer.append("<tr class=table_row3>");
				buffer.append("<td>");
				buffer.append(space);
				buffer.append("<input type=\"checkbox\" name=\"departs\" value=\""+temp.getId()+"\" "+(dat.getDeparts().contains(temp)?"checked":"")+">");
				buffer.append("<a href=\"javascript:showDiv('userdiv"+temp.getId()+"')\">");
				buffer.append(temp.getName()==null?"":temp.getName());
				buffer.append("</a>");
				buffer.append("</td>");
				
                buffer.append("<td>");
				buffer.append("<div id=\"userdiv"+temp.getId()+"\" style=\"display:none\">");
				if(temp.getUsers()!=null&&temp.getUsers().size()>0){
					buffer.append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_frame\">");
					Set userSet=temp.getUsers();
					List userList=new ArrayList();
					Iterator userIterator=userSet.iterator();
					while(userIterator.hasNext()){
						userList.add(userIterator.next());
					}
					User user=new User();
					for(int i=0;i<userList.size();i=i+3){
						buffer.append("<tr class=\"table_row3\">");
						
						buffer.append("<td width=\"33%\">");
						user=(User)userList.get(i);
						buffer.append("<input type=\"checkbox\" name=\"users\" value=\""+user.getId()+"\""+(dat.getUsers().contains(user)?"checked":"")+">");
						buffer.append(user.getFirstName()==null?"":user.getFirstName());
						buffer.append(user.getLastName()==null?"":user.getLastName());
						buffer.append("（"+(user.getName()==null?"":user.getName())+"）");
						buffer.append("</td>");
						
						buffer.append("<td width=\"34%\">");
						if(userList.size()>(i+1)){
							user=(User)userList.get(i+1);
							buffer.append("<input type=\"checkbox\" name=\"users\" value=\""+user.getId()+"\""+(dat.getUsers().contains(user)?"checked":"")+">");
							buffer.append(user.getFirstName()==null?"":user.getFirstName());
							buffer.append(user.getLastName()==null?"":user.getLastName());
							buffer.append("（"+(user.getName()==null?"":user.getName())+"）");
						}
						buffer.append("</td>");
						
						buffer.append("<td width=\"33%\">");
						if(userList.size()>(i+2)){
							user=(User)userList.get(i+2);
							buffer.append("<input type=\"checkbox\" name=\"users\" value=\""+user.getId()+"\""+(dat.getUsers().contains(user)?"checked":"")+">");
							buffer.append(user.getFirstName()==null?"":user.getFirstName());
							buffer.append(user.getLastName()==null?"":user.getLastName());
							buffer.append("（"+(user.getName()==null?"":user.getName())+"）");
						}
						buffer.append("</td>");
						
						buffer.append("</tr>");

					}
					buffer.append("</table>");
				}
				buffer.append("</div>");
				
				buffer.append("</td>");
				buffer.append("</tr>");
				buffer.append(readChildTree(temp,space,dat));
			}
		}
		return buffer;
	}
%>