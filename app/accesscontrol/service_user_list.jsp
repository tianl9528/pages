<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "java.util.List" %>
<%@ page import = "sunit.database.*"%>
<%
long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
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
}
DAO dao=new DAO();
try
{
	dao.begin();
	UserManager manager=new UserManager();
	String condition =request.getParameter("condition")==null?"":request.getParameter("condition");
	PaginationI pagination=new PaginationI();
	List tempList=pagination.getListSQL(manager.readAllUser(condition),10,request);
	List list=manager.poTransfer(tempList);
%>
<html>
<head>
<title>用户列表</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/sorttable.js"></script>
</head>

<body>
<table width="100%" cellpadding="1" cellspacing="1">
        <tr bgcolor="#FFFFFF">
          <td>
      <table width="100%" align="center" cellpadding="0" cellspacing="1" class="sortable" id="mytable">
        <tr align="center">
          <td width="7%" height="30" class="list_title">序号</td>
          <td width="15%" class="list_title">登录名</td>
          <td width="13%" class="list_title">姓名</td>
          <td width="13%" class="list_title">电话</td>
          <td width="14%" class="list_title">手机</td>
          <td width="17%" class="list_title">E_mail</td>
          <td width="27%" class="list_title">部门</td>
          <td width="8%" class="list_title">操作</td>
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
          <td height="22" align="center"><%=pagination.getStartData()+i+1%></td>
          <td align="center"><%=(dat.getName()!=null&&dat.getName().length()>0)?dat.getName():""%></td>
          <td align="center"><%=(dat.getFirstName()!=null&&dat.getFirstName().length()>0)?dat.getFirstName():""%></td>
          <td align="center"><%=(dat.getPhoneList()!=null&&dat.getPhoneList().length()>0)?dat.getPhoneList():""%></td>
          <td class="list_item<%=theme%>"><%=dat.getSort()==null?"":dat.getSort()%></td>
          <td align="center"><%=(dat.getEmailList()!=null&&dat.getEmailList().length()>0)?dat.getEmailList():""%></td>
          <td align="center"><%=(dat.getDepart()!=null)?dat.getDepart().getName():""%></td>
          <td align="center">
          	 <a href="user_detail.jsp?id=<%=dat.getId()%>" target="_blank"><img src="<%=request.getContextPath()%>/themes/common/img/icons/view.gif" border="0" align="absmiddle" title="查看" /></a>&nbsp;&nbsp;
         	 <a href="<%=request.getContextPath()%>/itil/device/userDeviceView.sunit?userid=<%=dat.getId()%>" target="_blank"><img src="<%=request.getContextPath()%>/themes/common/img/icons/zoom.png" border="0" title="用户设备" /></a>          </td>
        </tr>
<%		}
	}
		%>
            <% if(list == null) { %>
		<tr>
		  <td class="list_item" colspan="7" align="center">没有数据！</td>
		</tr>
	<%
	}
	%>
</table></td></tr></table><%=pagination.getControl(request,response)%>
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