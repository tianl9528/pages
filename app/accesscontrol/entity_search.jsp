<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import = "java.util.*" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%
DAO dao=new DAO();
try
{
	dao.begin();
	EntityManager manager=new EntityManager();
	String condition = "";
	if(request.getParameter("search")!=null&&request.getParameter("search")!=""&&request.getParameter("search").length()>0)
	{
		condition=request.getParameter("condition");
		session.setAttribute("sys_entitysearch",condition);
	}
	if(session.getAttribute("sys_entitysearch")!=null)
	{
		condition=String.valueOf(session.getAttribute("sys_entitysearch"));
	}
	Pagination pagination=new Pagination();
	List list=pagination.getList(manager.read(condition),20,request);
%>
<html>
<head>
<title>权限管理&gt;&gt;功能管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="JavaScript">
function showSearch()
{
	if(document.getElementById("searchdiv").style.display=="none")
	{
		document.getElementById("searchdiv").style.display="";
	}
	else
	{
		document.getElementById("searchdiv").style.display="none";
	}
}
// 验证删除操作
function delConfirm(){
	var str="";
	str=radif();

	if(str==""){
		alert("请选择一实体");
	}else{
		if (confirm("是否确定删除记录？")){
			str1 = "delentity.jsp?EntityID="+str;
			this.location.href=str1
		}
	}
}

function radif(){
   var i=0;
   var n=0,j;
   var str="",str1="";
   n=rad.length;
   for (j=0;j<n;j++){
	   if(rad[j].checked){
		   if(i==0){
			   str1=""
			   i=i+1;
		   }else{
			   str1=";";
		   }
		   str=str+str1+rad[j].value;
	  }
   }
   if(rad.checked)
	   str=rad.value;
   return str;
}

function disEnable(){
	var str="";
	str=radif();

	if(str==""){
		alert("请选择一实体");
	}else{
		if (confirm("是否确定删除记录？")){
			str1 = "disentity.jsp?EntityID="+str;

			this.location.href=str1
		}
	}
}

$(function(){
    $('#list_tb').table();
});
</script>
</head>
<body>

<form name="thisForm" action="entity_search.jsp" method="post">
<div class="searchBox">      
        <div class="searchIcon"><img src="<%=request.getContextPath()%>/theme/images/bg_search_55.png" width="38" height="40" /></div>
        <div class="searchInput">
          <input name="condition" type="text" value="<%=condition==null?"":condition%>"/>
        </div>
        <div class="searchBtn">
          <input type="submit" name="search" value="查找" style="cursor:pointer"/>
        </div>
         <div>
          <input type="button" value="新增" class="base_btn" name="add" onClick="window.location.href='entity_add.jsp'"/>
          <input name="back" type="button" class="base_btn" onClick="window.location.href='entity_list.jsp'" value="返回">
        </div>
      </div>
      <div class="clear"></div>
         
</form>


<div class="listBox">
        <div class="listTitle">实体功能一览<span class="more"><a href="#" onClick="window.location.href='role_add.jsp'">+</a></span></div>
		<div class="list">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tTitle">
            <tr>
	          <td width="50">序号</td>
              <td width="200">名称</td>
              <td width="70">类型</td>
              <td width="">位置</td>
              <td width="100">备注</td>
              <td width="120">操作</td>
            </tr>
          </table>
                  
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tList" id="list_tb">
<%
	if(list!=null&&list.size()>0)
	{
		for(int i=0;i<list.size();i++)
		{
			Entity dat=(Entity)list.get(i);
			
%>
		<tr class="<%if(i%2 == 0) out.print("colorGrey"); else out.print("colorwhite");%>">
          <td class="trainLeft" width="50"><%=pagination.getStartData()+i+1%></td>
          <td class="trainContent" width="200"><%=dat.getName()==null?"":dat.getName()%></td>
          <td class="trainContent" width="70"><%=dat.getTypeName()==null?"":dat.getTypeName()%></td>
          <td class="trainContent" style="text-align:left"><%=dat.getValue()==null?"":dat.getValue()%></td>
          <td class="trainContent" width="100"><%=dat.getNote()==null?"":dat.getNote()%></td>
		  <td align="center" class="trainFunction" width="120">
		  	<a href="entity_edit.jsp?id=<%=dat.getId()%>" onFocus="this.blur()" class="edit">编辑</a>&nbsp;&nbsp;
			<a href="entity_delete.jsp?id=<%=dat.getId()%>" onFocus="this.blur()" onClick="return confirm('确定删除此功能吗？')" class="delete">删除</a>
		  </td>
          </tr>
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
