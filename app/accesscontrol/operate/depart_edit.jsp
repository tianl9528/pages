<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "sunit.database.*"%>

<%
long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
DAO dao=new DAO();
try{
	dao.begin();
	long id=Long.parseLong(request.getParameter("id"));
	DepartManager manager=new DepartManager();
	Depart dat=manager.readOne(id);
	Set entitySet=dat.getEntities();
	Set roleSet=dat.getRoles();
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/scripts/calendar/calendar-system.css" type="text/css" title="more">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css" title="more">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script src="<%=request.getContextPath()%>/scripts/chart/lib/prototype/prototype.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
function opendepart()
{
	ret= window.showModalDialog('<%=request.getContextPath()%>/itil/accesscontrol/select/departselector.jsp','depart','dialogWidth:600px;dialogHeight:500px;center:yes;help:no;status:no');
	if(ret==null)
		return;
	a1=ret.split(";");
	flag=true;
	thisForm.parentDepartId.value=a1[0];
	thisForm.parentDepartName.value=a1[1];
	//加载departCode
	var url = "<%=request.getContextPath()%>/itil/accesscontrol/operate/getDepartCode.jsp";
	var request_pars = "departId="+a1[0]; //请求参数
	//alert(request_pars);
	var myAjax = new Ajax.Updater({success: 'result'},url,{
		method     : 'get', // http 请求方法,get or post
		parameters : request_pars, // 请求参数
		evalScripts: true,
		onComplete : done   // 读取完毕
	});	
}
function deleteit()
{
	if(confirm("确定删除此部门吗？\n\n删除后不能恢复，并且属于此部门的数据可能丢失！"))
	{
		window.navigate('depart_delete.jsp?id=<%=id%>');
	}
}
function done(request)
{
	$('loading').style.display = 'none';
	$("code").value = document.getElementById("result").innerHTML;	
}

var handle = {
	onCreate: function() {
		Element.show('loading');// 当创建Ajax请求时，显示loading
	},
	onComplete: function() {
		// 当请求成功返回时，如果当前没有其他正在运行中的Ajax请求，隐藏loading
		if (Ajax.activeRequestCount == 0) {
			Element.hide('loading');
		}
	}
};
Ajax.Responders.register(handle);
</script>
</head>

<body>
  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="noborder">
    <tr>
	<form name="thisForm" method="post" action="depart_db.jsp" onSubmit="return checkforminput()">
      <td>
	  <table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
    <tr class="table_row3">
      <td height="30"><font size="+1"><strong>编辑部门</strong></font></td>
      <td align="right">
	  	<!--<input name="button" type="button" class="button" value="查找">
        &nbsp;&nbsp;
        <input name="button" type="button" class="button" onClick="window.navigate('depart_add.jsp')" value="新增">
      	-->
	    <input name="submit" type="submit" class="button" onClick="return confirm('确定提交数据吗？')" value="保存">
		<input name="button" type="button" class="button" onClick="javascript:document.forms[0].reset()" value="重置">
		<!--
		&nbsp;
		<input name="button2" type="button" class="button" onClick="deleteit()" value="删 除">-->
	  </td>
    </tr>
  </table>
  <table width="98%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
    <tr class="table_row3">
      <td width="15%" height="30" align="right">上级部门： </td>
      <td width="35%">
	  <input type="input" class="input_oneborder" value="<%=dat.getParentDepart().getName()%>" name="parentDepartName" style="width:60%" readonly>
   	  <input type="button" name="selectDepart" value="选择" class="button" onClick="opendepart()" >
   	  <input name="parentDepartId" type="hidden" value="<%=dat.getParentDepart().getId()%>">
<%	/**
	long selectedDepartId=0;
	if(dat.getParentDepart()!=null){
		selectedDepartId=dat.getParentDepart().getId();
	}
	StringBuffer tree = new StringBuffer();
	tree.append("<select name=\"parentDepartId\" style=\"width:70%\">");
	List departList=DepartHelper.getTreeList(departId);
	for(int i=0;i<departList.size();i++){
		Depart depart=(Depart)departList.get(i);
		tree.append("<option value=\""+depart.getId()+"\" "+(selectedDepartId==depart.getId()?"selected":"")+">");
		tree.append(depart.getPosition()+depart.getName()+"</option>");
	}
	tree.append("</select>");
	out.print(tree.toString());
	*/
%>
		<input type="hidden" name="id" value="<%=dat.getId()%>">
	  </td>
      <td width="15%" align="right">部门类型：</td>
      <td width="35%">
	    <select name="departType" style="width:40%">
          <option value="1" <%=dat.getDepartType()==1?"selected":""%>>供电</option>
          <option value="2" <%=dat.getDepartType()==2?"selected":""%>>发电</option>
          <option value="0" <%=dat.getDepartType()==0?"selected":""%>>未定</option>
        </select></td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right"> 部门/班组名称： </td>
      <td><input type="text" name="name" style="width:98%" class="input_oneborder" value="<%=dat.getName()==null?"":dat.getName()%>" valid="notnull" msg="请输入部门名称！">      </td>
      <td align="right">部门代码：</td>
      <td><div id="loading" unselectable = "on" align="center" style="z-index:100;background:white;display:none;"><img src="<%=request.getContextPath()%>/themes/common/img/loading.gif"></div><div id="result" style="display:none"></div><input type="text" name="code" id="code" style="width:98%" class="input_oneborder" value="<%=dat.getDepartCode()==null?"":dat.getDepartCode()%>" valid="notnull" msg="请输入部门代码！">      </td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right">电　　话：</td>
      <td><input name="phone" type="text" id="phone2" style="width:98%" value="<%=dat.getPhoneList()==null?"":dat.getPhoneList()%>" class="input_oneborder">      </td>
      <td align="right">E_Mail：</td>
      <td><input name="email" type="text" style="width:98%" value="<%=dat.getEmailList()==null?"":dat.getEmailList()%>" class="input_oneborder"></td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right">地　　址：</td>
      <td colspan="3">
	  	<textarea name="address" style="width:98%; overflow:auto" rows="3" class="input_oneborder"><%=dat.getAddress()==null?"":dat.getAddress()%></textarea>	  </td>
    </tr>
    <tr class="table_row3">
      <td height="30" align="right">说　　明：</td>
      <td colspan="3">
	  	<textarea name="note" style="width:98%; overflow:auto" rows="3" class="input_oneborder"><%=dat.getNote()==null?"":dat.getNote()%></textarea>      </td>
    </tr>
	<tr class="table_row3">
        <td height="25" colspan="4">&nbsp;&nbsp;配置角色</td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="4">
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
			<%out.print(role.getName());%>
			</td>
            <td width="34%">
<%
			if(roleList.size()>(i+1)){
				role=(Role)roleList.get(i+1);
%>			
			<input type="checkbox" name="roleid" <%=DepartHelper.isRoleChecked(roleSet,role.getId())%> value="<%=role.getId()%>">
			<%out.print(role.getName());%>
<%
			}
%>
			</td>
            <td width="33%">
<%
			if(roleList.size()>(i+2)){
				role=(Role)roleList.get(i+2);
%>			
			<input type="checkbox" name="roleid" <%=DepartHelper.isRoleChecked(roleSet,role.getId())%> value="<%=role.getId()%>">
			<%out.print(role.getName());%>
<%
			}
%>
			</td>
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
	</table>
	</td>
	</tr>
	<tr class="table_row3">
        <td height="25" colspan="4">&nbsp;&nbsp;配置功能模块
          <input type="checkbox" name="checkAll" onClick="roletree.CheckAllBox(this);">
          全选
          <input type="hidden" name="saveIds"></td>
        </tr>
      <tr class="table_row3">
        <td height="25" colspan="4">
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
            <td width="33%" height="25" colspan="3">
			<iframe id="roletree" frameborder="0" scrolling="no" width="100%" src="../role_tree_iframe.jsp?ids=<%=ids%>"/>
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
	</table>
	</td>
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