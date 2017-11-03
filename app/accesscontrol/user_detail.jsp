<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%
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
</head>

<body>
<script language="jscript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="javascript" type="text/javascript">
<%
	if(!pass)
	{
		out.print("window.alert('"+msg+"');");
		out.print("window.opener=self;");
		out.print("window.close();");
	}
%>
function closeme()
{
	window.opener=self;
	window.close();
}
</script>
<%
	if(dat!=null)
	{
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><form name="thisForm" method="post" action="user_db.jsp" onSubmit="return checkforminput()">
    <td height="350" valign="top"><table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row3">
		<td height="30" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：用户修改</td>
        <td width="20%" align="right"><input name="button" type="button" class="button" onClick="closeme()" value="关闭"></td>
      </tr>
    </table>
      <table width="98%" align="center" cellpadding="1" cellspacing="1" class="table_frame">
        <tr class="table_row4">
          <td height="25" colspan="6">&nbsp;&nbsp;登录信息
		  <input type="hidden" name="id" value="<%=dat.getId()%>">		  </td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">登录名称</td>
          <td colspan="5"><%=dat.getName()==null?"":dat.getName()%></td>
        </tr>
        <tr class="table_row4">
          <td colspan="6" height="25">&nbsp;&nbsp;详细信息
          <input type="hidden" name="NikName" style="width:98%" class="input_oneborder" value=""></td>
        </tr>
        <tr class="table_row3">
          <td height="25">&nbsp;所属部门</td>
          <td height="25" colspan="5"><%=dat.getDepart().getName()%></td>
        </tr>
        <tr class="table_row3">
          <td width="10%" height="25" align="center">姓　名</td>
          <td width="23%"><%=dat.getFirstName()==null?"":dat.getFirstName()%></td>
          <td width="10%" align="center">性　别</td>
          <td width="24%"><%=dat.getSex()==null?"":dat.getSex()%></td>
          <td width="10%" align="center"></td>
          <td width="23%"></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">身份证号</td>
          <td><%=dat.getIdCard()==null?"":dat.getIdCard()%></td>
          <td align="center">岗位名称</td>
          <td><%=dat.getPosition()==null?"":dat.getPosition()%></td>
          <td align="center">工作证号</td>
          <td><%=dat.getJobcode()==null?"":dat.getJobcode()%></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">人员分类</td>
          <td><%=dat.getCategory()==null?"":dat.getCategory()%></td>
          <td align="center">人员类别</td>
          <td><%=dat.getPersonsort()==null?"":dat.getPersonsort()%></td>
          <td align="center">人员编号</td>
          <td><%=dat.getPersoncode()==null?"":dat.getPersoncode()%></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">政治面貌</td>
          <td><%=dat.getZzmm()==null?"":dat.getZzmm()%></td>
          <td align="center">党政职务</td>
          <td><%=dat.getDzzw()==null?"":dat.getDzzw()%></td>
          <td align="center">技术职务</td>
          <td><%=dat.getJszw()==null?"":dat.getJszw()%></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">工人职务聘任</td>
          <td><%=dat.getGrzwpr()==null?"":dat.getGrzwpr()%></td>
          <td align="center">手　　机</td>
          <td><%=dat.getSort()==null?"":dat.getSort()%></td>
          <td align="center">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">电　　话</td>
          <td><%=dat.getPhoneList()==null?"":dat.getPhoneList()%></td>
          <td align="center">电子邮件</td>
          <td colspan="3"><%=dat.getEmailList()==null?"":dat.getEmailList()%></td>
        </tr>
        
        <tr class="table_row3">
          <td height="25" align="center">住　　址</td>
          <td height="60" colspan="5"><%=dat.getAddress()==null?"":dat.getAddress()%></td>
        </tr>
        <tr class="table_row3">
          <td height="25" align="center">说　　明</td>
          <td height="60" colspan="5"><%=dat.getNote()==null?"":dat.getNote()%></td>
        </tr>
		<tr class="table_row4">
        <td height="25" colspan="6">&nbsp;&nbsp;配置角色</td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="6">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	Iterator roleIterator=roleSet.iterator();
	List roleList=new ArrayList();
	while(roleIterator.hasNext()){
		roleList.add(roleIterator.next());
	}
	if(roleList!=null&&roleList.size()>0){
		Role role=new Role();
		for(int i=0;i<roleList.size();i=i+3){
%>
          <tr class="table_row3">
            <td width="33%" height="25">
<%
			role=(Role)roleList.get(i);
%>
<%out.print(role.getName());%>			</td>
            <td width="34%">
<%
			if(roleList.size()>(i+1)){
				role=(Role)roleList.get(i+1);
%>
<%out.print(role.getName());%>
<%
			}
%>			</td>
            <td width="33%">
<%
			if(roleList.size()>(i+2)){
				role=(Role)roleList.get(i+2);
%>
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
        <td height="25" colspan="6">&nbsp;&nbsp;配置功能模块</td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="6">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	Iterator entityIterator=entitySet.iterator();
	List entityList=new ArrayList();
	while(entityIterator.hasNext()){
		entityList.add(entityIterator.next());
	}
	if(entityList!=null&&entityList.size()>0){
		Entity entity=new Entity();
		for(int i=0;i<entityList.size();i=i+3){
%>
          <tr class="table_row3">
            <td width="33%" height="25">
<%
			entity=(Entity)entityList.get(i);
%>
<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）			</td>
            <td width="34%">
<%
			if(entityList.size()>(i+1)){
				entity=(Entity)entityList.get(i+1);
%>
<%out.print(entity.getName());%>（<%out.print(entity.getTypeName());%>）
<%
			}
%>			</td>
            <td width="33%">
<%
			if(entityList.size()>(i+2)){
				entity=(Entity)entityList.get(i+2);
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
          </tr>
<%
	}
%>
	</table>	</td>
	</tr>      </table>
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