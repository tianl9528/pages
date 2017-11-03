<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.app.person.object.Person"%>
<%
request.setCharacterEncoding("utf-8");//设置编码
/*long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
String departIds= String.valueOf(session.getAttribute(Config.KEY_DEPARTIDS));
if(departIds==null || departIds.equals("null") || departIds.equals("")){
	long tempdepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
	String tempdepartIds = sunit.accesscontrol.manager.DepartHelper.readChildDepartId(tempdepartId);
	if(tempdepartIds.length()>0){
		tempdepartIds = tempdepartIds.substring(1);
	}else{
		tempdepartIds = "-1";//如果没有子部门，则设置为－1
	}
	tempdepartIds = "("+tempdepartIds+")";
	session.setAttribute(Config.KEY_DEPARTIDS,tempdepartIds);
	departIds=tempdepartIds;
}*/
long roleId=Long.parseLong(request.getParameter("id"));//将字符串类型的ID转型为long
DAO dao=new DAO();
try
{
	dao.begin();
	String condition="";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition")==null?"":request.getParameter("condition");
		session.setAttribute("sys_role_usersearch",condition);
	}else{
		session.removeAttribute("sys_role_usersearch");
	}
	if(session.getAttribute("sys_role_usersearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_role_usersearch"));
	}

	RoleManager manager=new RoleManager();
	Role role=manager.readOne(roleId);
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.readRolePerson(roleId,condition),20,request);
%>
<HTML>
<HEAD>
<TITLE>权限管理&gt;&gt;角色管理&gt;&gt;角色成员</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<SCRIPT language="javascript" src="<%=request.getContextPath()%>/scripts/sort.js"></SCRIPT>
</HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 background="#FFFFFF">
  <TR>
    <TD width=582  height=5 colspan="4" align=left id=banner></TD>
  </TR>
  <TR>
    <TD
                            height=34 colspan="2"
                            background=images/20050917_e_07.gif style="PADDING-LEFT: 25px; FONT-WEIGHT: bold; COLOR: #f2af08"><IMG height=16
                              src="<%=request.getContextPath()%>/themes/images/unicomgd/role.gif"
                              ></TD>
  </TR><form name="thisForm" action="role_member_person.jsp" method="post">
  <TR>
    <TD style="PADDING-LEFT: 25px"
            height=25>
关键字：<input type="text" name="condition" class="input_oneborder" title="登录名称、姓名、身份证号">
			<input type="submit" name="submit" class="button" value="查找">
			<input type="hidden" id="search" name="search" value="search"/>
		  	<input type="hidden" name="id" value="<%=roleId%>"><input name="button2" type="button" class="button" onClick="window.navigate('role_member_person_add.jsp?id=<%=roleId%>')" value="新增">
			<input name="button2" type="button" class="button" onClick="location.href='role_list.jsp'" value="返回"></TD>
    <TD align="right" style="PADDING-LEFT: 25px">当前角色：<%=role.getName()%></TD>
  </TR></form>
  <TR>
    <TD colspan="2" style="PADDING-LEFT: 0px">
    <TABLE id=Main cellSpacing=0 cellPadding=0 border=0 width="100%" >
                          <TBODY>
                          <TR>
                            <TH width="6%" height="30" noWrap style="TEXT-ALIGN: center"  class="list_title">序号</TH>
                            <TH width="16%" noWrap style="TEXT-ALIGN: center"  class="list_title">登录名</TH>
                            <TH width="27%" noWrap style="TEXT-ALIGN: center"  class="list_title">姓名</TH>
                            <TH width="10%" noWrap style="TEXT-ALIGN: center"  class="list_title">操作</TH>
                          </TR>
<%
	if(list!=null&&list.size()>0)
	{
		Person dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (Person)list.get(i);
			String theme = (i%2==0) ? "" : "1";
%>
                          <TR>
                            <TD noWrap align=center class="list_item<%=theme%>"><%=pagination.getStartData()+i+1%></TD>
                            <TD align="center" noWrap class="list_item<%=theme%>"><%=dat.getUsername()%></TD>
                            <TD noWrap align=center class="list_item<%=theme%>"><%=dat.getName()%></TD>
                            <TD align=center noWrap class="list_item<%=theme%>"><a href="role_member_person_delete.jsp?roleId=<%=roleId%>&userId=<%=dat.getId()%>" onClick="return confirm('若删除该用户成员，此用户将不再拥有此角色！\n\n是否确定删除记录？')">删除用户成员</a></TD>
                          <%
 		}
	}
	else
	{
%>
  <tr>
    <td class="list_item" colspan="6">没有数据！</td>
    </tr>
<%
	}
%>
    <tr>
    	<td height="25" class="list_title" colspan="4"><%=pagination.getControl(request,response)%></td>  		
    </tr>
</TABLE></TD>
  </TR>
</TABLE>
<br/><br/>
<SCRIPT language="javascript">
//createElement("search","<%=request.getParameter("search")%>");
//createElement("id","<%=request.getParameter("id")%>");
//createElement("condition","<%=request.getParameter("condition")==null?"":request.getParameter("condition")%>");
</SCRIPT>
</BODY>
</HTML>
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