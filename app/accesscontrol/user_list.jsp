<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%
request.setCharacterEncoding("utf-8");
DAO dao=new DAO();
try
{
	dao.begin();
	UserManager manager=new UserManager();
	PaginationI pagination=new PaginationI();
	//List list=pagination.getList(manager.readAll(),20,request);
	List list=pagination.getList("From User u order by u.userID asc",20,request);
	session.removeAttribute("sys_usersearch");
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<title>权限管理&gt;&gt;用户管理</title>
<script language="javascript" type="text/javascript">
function showSearch()
{
	if(document.all.item("searchdiv").style.display=="none")
	{
		document.all.item("searchdiv").style.display="";
	}
	else
	{
		document.all.item("searchdiv").style.display="none";
	}
}
function showDetail(userId){
	ret= window.showModalDialog('http://id.gzuni.com/login_id.asp?uname='+userId,'user','dialogWidth:600px;dialogHeight:500px;center:yes;help:no;status:no');
	if(ret==null)
		return;
} 
</script>
</head>
<body>
<table width="100%" align="center" cellpadding="1" cellspacing="1">
      <tr>
		<td height="24" valign="top" class="url">
		<img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：权限管理 - 用户管理</td>
        <td align="right">
        </td>
      </tr>
</table>
<div id=searchdiv align="center" style="display:none">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="">
<form name="thisForm" action="user_search.jsp" method="post">
        <tr class="">
          <td width="30%" height="25" align="right">关键字：</td>
          <td width="40%"><input type="text" name="condition" class="input_oneborder" style="width:98%"></td>
          <td width="30%" align="left"><input type="submit" name="search" class="button" value="开始查找"></td>
        </tr>
</form>
      </table>
</div>

<table width="100%" align="center" border="0" cellspacing="1" cellpadding="0" class="table_frame">
        <tr align="center" class="table_header">
          <td width="15%" height="30" align="center" >工号</td>
          <td width="10%" align="center" >用户名</td>
          <td align="center" >注册手机号码</td>
          <td width="10%" align="center" >网点代码</td>
          <td width="10%" align="center" >用户类型</td>
          <td width="10%" align="center" >状态</td>
          <td width="10%" align="center" >帐号标识</td>
  </tr>
<%	    
	if(list != null&&list.size()>0)
	{
		User dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (User)list.get(i);
			String theme = (i%2==0) ? "table_row2" : "table_row1";
	%>
        <tr class="<%=theme%>">
          <td height="22">&nbsp;
          		<%
          			if(dat.getIs_dls()==3){%>
   			<A href="#"><%=dat.getUserID()%></A>
          		<%}else{ %>
          			<%=dat.getUserID()%>
          		<%} %>
          </td>
          <td>&nbsp;<%=dat.getUser_name()%></td>
          <td>&nbsp;<%=dat.getMobile_no()==null?"":dat.getMobile_no()%></td>
          <td>&nbsp;<%=dat.getDept_code()==null?"":dat.getDept_code()%></td>
          <td>&nbsp;<%=dat.getUserType()%></td>
          <td>&nbsp;<%=dat.getUserStatus()%></td>
          <td>&nbsp;<%=dat.getIs_dls()%>
          <!--<td align="center">
          	<a href="user_detail.jsp?id=<%=dat.getUserID()%>" onFocus="this.blur()" target="_blank">查看</a>         </td> -->
        </tr>
<%		}
	}
		%>
    <tr class="list_title" >
    	<td height="25" colspan="8"><%=pagination.getControl(request,response)%></td>  		
    </tr> 
            
      </table>
   
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