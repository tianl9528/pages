<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<%  
  String id=request.getParameter("id");
  NodeGroupManager manager=new NodeGroupManager();
  NodeGroup dat=new NodeGroup();
  dat=manager.readOne(Long.parseLong(id));
%>
<html>
<head>
<title>权限管理&gt;&gt;模块管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
<%
	if(dat==null)
	{
		out.print("window.alert(\"操作错误或数据库读取错误！请重新操作或联系系统管理员！\");");
		out.print("window.location.href=\"entity_list.jsp\";");
	}
%>
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="nodegroup_list.jsp";
	}
}
</script>
</head>
<body>
<%
	if(dat!=null)
	{
%>

<form name="thisForm" method="post" onSubmit="return checkforminput()" action="nodegroup_db.jsp">
<div class="conBox">
        <div class="conTitle">模块内容</div>
        <div class="conMiddle">
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                  
                  
                  <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                        <td class="typeNameTd" width="150">模块名称</td>
                        <td class="memberAddTd" align="left" width="720">
                        <input type="text" name="name" value="<%=dat.getName()==null?"":dat.getName()%>" class="itemManagerInput" valid="notnull" msg="请输入模块名称！">
		  				<input type="hidden" name="id" value="<%=dat.getId()%>">
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="100">说 明</td>
                        <td class="memberAddTd" align="left" width="720">                  
                        <textarea name="note" rows="3" class="input_oneborder" style="width:80%; overflow:auto"><%=dat.getNote()==null?"":dat.getNote()%></textarea>
                        </td>
                    </tr>                    
                                                             
                   </table>
                  
                </td>
              </tr>
            </table>
          <div class="subBtnBox">
          <input name="submit" type="submit" class="base_btn" onClick="return confirm('确定提交数据吗？')" value="保存">
		  <input name="button" type="button" class="base_btn" onClick="javascript:document.forms[0].reset()" value="重置">
		  <input name="button" type="button" class="base_btn" onClick="goback()" value="返回">
          
          </div>
        </div>
        <div class="conBottom"></div>
      </div>
</form>


<%
	}
%>
</body>
</html>
