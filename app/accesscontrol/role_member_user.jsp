<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%
request.setCharacterEncoding("utf-8");
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
long roleId=Long.parseLong(request.getParameter("id"));
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
	List list=pagination.getList(manager.readRoleUsers(roleId,condition),200,request);
%>

<HTML>
<HEAD>
<TITLE>权限管理>>角色管理>>角色成员</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />

<SCRIPT language="javascript" src="<%=request.getContextPath()%>/scripts/sort.js"></SCRIPT>

<script type="text/javascript">
$(function(){
    $('#list_tb').table();
});
</script>
</HEAD>
<BODY>

<form action="role_member_user.jsp" method="post">
<div class="searchBox">
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="condition" type="text" title="登录名称、姓名"/>
        </div>
        <div class="searchBtn">
          <input type="submit" value="查找" style="cursor:pointer"/>
        </div>
         <div>
          <input type="button" value="新增" class="base_btn" style="float:left;" onClick="window.location.href='role_member_user_add.jsp?id=<%=roleId%>'"/>
          <input type="button" style="float:left" value="返回
 " class="base_btn" onClick="location.href='role_list.jsp'"/>
        </div>
      </div>
 			<input type="hidden" id="search" name="search" value="search"/>
		  	<input type="hidden" name="id" value="<%=roleId%>">     
</form>

<div class="clear"></div>

<div class="listBox">
        <div class="listTitle">角色成员（<%=role.getName()%>）<span class="more"><a href="#" onClick="window.location.href='role_add.jsp'">+</a></span></div>
		<div class="list">
        
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
              <td width="100">序号</td>
              <td width="200">登录名</td>
              <td width="">姓名</td>
              <td width="70">操作</td>
            </tr>
          </table>
                  
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
<%
	if(list!=null&&list.size()>0)
	{
		User dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (User)list.get(i);	
%>
                          <tr class="<%if(i%2 == 0) out.print("colorGrey"); else out.print("colorwhite");%>">	
                            <TD class="trainLeft" width="100"><%=pagination.getStartData()+i+1%></TD>
                            <TD class="trainContent" width="200"><%=dat.getLog_name()%></TD>
                            <TD class="trainContent"><%=dat.getUser_name()%></TD>
                             <TD class="trainFunction" width="70"><a href="role_member_user_delete.jsp?roleId=<%=roleId%>&userId=<%=dat.getUser_id()%>" onClick="return confirm('若删除该用户成员，此用户将不再拥有此角色！\n\n是否确定删除记录？')" class="delete">删除</a></TD>
                          <% 
 		}%>
  </table>
<%        
	}
	else
	{
%>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr><td>没有数据！！！</td></tr>
        </table>
<%
	}
%>

</div>
<!--分页-->         
        <div class="page">
          <div class="pageBox">
          <table border="0" cellpadding="0" cellspacing="0" style="margin-left:auto; margin-right:auto">
            <tr><td>
			<%
				if(list!=null&&list.size()>0){
					out.print(pagination.getControl(request,response));
				}	
			%>
            </td></tr>
          </table>
          </div>
        </div>
        
</div>
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