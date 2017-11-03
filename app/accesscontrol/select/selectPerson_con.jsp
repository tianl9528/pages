<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.app.person.object.Person"%>
<%
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);
request.setCharacterEncoding("utf-8");

String sButton="显示已选择用户";

DAO dao=new DAO();
try
{
	dao.begin();
	UserManager manager=new UserManager();
	PaginationI pagination=new PaginationI();
	String sql="";
	String condition =request.getParameter("condition")==null?"":request.getParameter("condition");
	//String usertype = request.getParameter("usertype")==null?"":request.getParameter("usertype");
	
	String vs=request.getParameter("vs")==null?"":request.getParameter("vs");
	if(""!=vs){
		String userIds=request.getParameter("userIds")==null?"":request.getParameter("userIds");
		sql=manager.readUserByIdUnicom(condition,userIds);
		sButton="显示所有选择用户";
	}else{
		sql=manager.readAllPersonUnicom(condition);
		sButton="显示已选择用户";
	}
	//得到部门所有的用户
	List tempList=pagination.getListSQL(sql,20,request);
	List list=manager.poTransferPerson(tempList);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户列表</title>
<base target="_self">
<LINK href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgd.css" type=text/css rel=stylesheet>
<SCRIPT language="javascript" src="<%=request.getContextPath()%>/scripts/sort.js"></SCRIPT>
<script language="javascript">
function myinit(){
	var checks=document.getElementsByName("userId");
	if(document.getElementById("userId") == undefined) return;
	if(checks.length>1){
		for(i=0;i<checks.length;i++){
			var check_str="|"+checks[i].value+"|";
			if(parent.selectIds.indexOf(check_str)!=-1){
			checks[i].checked=true;
			}
		}
	}else{
		var check=document.getElementById("userId");
		var check_str="|"+check.value+"|";
		if(parent.selectIds.indexOf(check_str)!=-1){
			check.checked=true;
		}
	}
	checkSelAll();
}

function checkSelAll(){
	var isSelectAll=isSelAll();
	document.getElementById("All").checked=isSelectAll;
}
function isSelAll(){
	var checks=document.getElementsByName("userId");
	if(document.getElementById("userId") == undefined){
		return false;
	}
	if(checks.length>1){
		for(i=0;i<checks.length;i++){
			if(checks[i].checked==false){
				return false;
			}
		}
	}else{
		var check=document.getElementById("userId");
		return check.checked;
	}
	return true;
}


//选择数据时触发的事件
function checkBoxClick(obj){
	if(obj.checked){
		parent.addData(obj);
	}else{
		parent.subData(obj);
	}
	checkSelAll();
}

function trClick(whoID) {
	document.getElementById(whoID).click();
}
//全选当页数据
function selectAll(){
	var obj = document.accessForm;
	if(obj.userId != undefined){
		if(obj.userId.value != undefined){
			if(obj.All.checked == true){
				obj.userId.checked = true;
				parent.addData(obj.userId);
			} else {
				obj.userId.checked = false;
				parent.subData(obj.userId);
			}
		} else {
			if(obj.All.checked == true){
				for(var i = 0; i < obj.userId.length; i ++){
					obj.userId[i].checked = true;
					parent.addData(obj.userId[i]);
				}
			} else {
				for(var i = 0; i < obj.userId.length; i ++){
					obj.userId[i].checked = false;
					parent.subData(obj.userId[i]);
				}
			}
		}
	}
}
</script>
</head>
<body style="padding:10px;">
<form name="accessForm" action="selectPerson_con.jsp" method="post">
<div id=searchdiv align="center" style="padding:3px;">
      <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame2">
        <tr class="table_row3">
          <td width="30%" height="25" align="right"><select name="usertype" id="usertype">
            <option value="" <% if(usertype.equals(""))out.print("selected");%>>全部</option>
            <option value="0" <% if(usertype.equals("0"))out.print("selected");%>>联通</option>
            <option value="1" <% if(usertype.equals("1"))out.print("selected");%>>服务商</option>
            <option value="2" <% if(usertype.equals("2"))out.print("selected");%>>合作厅</option>
            <option value="3" <% if(usertype.equals("3"))out.print("selected");%>>会员</option>
          </select>
          关键字：</td>
          <td width="40%"><input type="text" name="condition" value="<%=condition%>" class="input_oneborder" style="width:98%"><input style="display:none"></td>
          <td width="30%" align="center"><input type="submit" name="search" class="button" value="查找">
		  <input type="button" name="viewSel" value="<%=sButton%>" onClick="parent.showSelect()"/>
		  </td>
        </tr>
      </table>
</div>
<table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#B8CBE9">
        <tr bgcolor="#FFFFFF">
          <td><table id=Main width="100%" border="0" cellspacing="1" cellpadding="0"><TBODY>
		<tr>
          <TH width="13%" class="list_title"><input type="checkbox" name="All" onClick="javascript:selectAll()">全选本页</TH>
          <TH width="21%" height="25" class="list_title">登录名</TH>
          <TH width="38%" class="list_title">姓名</TH>
          <TH width="28%" class="list_title">用户类型</TH>
		</tr>
<%	    
	if(list != null&&list.size()>0)
	{
		Person dat=null;
		for(int i=0;i<list.size();i++)
		{
			dat = (Person)list.get(i);
	%>
        <tr onMouseOver="if (this.className!='trSelect') this.className='trOver'" 
                          onmouseout="if (this.className!='trSelect') this.className='trOut'" onClick="trClick('<%=dat.getId()%>')">
          <td><input type="checkbox" name="userId" id="<%=dat.getId()%>" nameVal="<%=dat.getUsername()%>" value="<%=dat.getId()%>" onClick="checkBoxClick(this)"></td>
          <td><%=dat.getUsername()%><input type="hidden" name="userName" id="userName" value="<%=dat.getUsername()%>"></td>
          <td><%=dat.getName()%></td>
          <td><%
		  if(dat.getId()!=0){
		  	out.print("联通");
		  }else if(dat.getId()==1){
		  	out.print("服务商");
		  }else if(dat.getId()==2){
		  	out.print("合作厅");
		  }else if(dat.getId()==3){
		  	out.print("会员");
		  }
		  %></td>
        </tr>
<%		}
	}
		%>
      </table>
      </td>
        </tr>
</table>
</form>
<%=pagination.getControl(request,response)%>
<div align="center" style="padding:5px;"><input type="button" name="Close" value="确定" onClick="parent.cb()" class="button">
  <input type="button" name="Close2" value="取消" onClick="window.close();" class="button">
</div>
<script language="javascript">
myinit();
createElement("usertype","<%=usertype%>");
createElement("condition","<%=condition%>");
</script>
</body>
</html>
<%
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		dao.close();
	}
%>