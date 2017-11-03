<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.object.Entity"%>
<html>
<head>
<title>权限管理&gt;&gt;功能管理（新增）</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/theme/css/training.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="entity_list.jsp";
	}
}
</script>
</head>
<body>


<form name="thisForm" method="post" action="entity_db.jsp">
<div class="conBox">
        <div class="conTitle">实体内容</div>
        <div class="conMiddle">
            <table cellpadding="0" cellspacing="13" border="0" class="selectTb">
            	<tr>
                  <td>
                  
                  
                  <table cellpadding="0" cellspacing="0" border="0" class="contentTB">
                    <tr class="greyColor">
                        <td class="typeNameTd" width="150">功能名称</td>
                        <td class="memberAddTd" align="left" width="720">
                        <input type="text" name="name" class="itemManagerInput" valid="notnull" msg="请输入功能名称！">
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="100">菜单项目</td>
                        <td class="memberAddTd" align="left" width="720">                  
                        <INPUT type="radio" name="type" value="<%= Entity.TYPE_MENU %>" checked>是
                        &nbsp;&nbsp;
                        <input type="radio" name="type" value="<%= Entity.TYPE_OTHER%>">否
                        </td>
                    </tr>
                    <tr class="greyColor">
                        <td class="typeNameTd" width="150">功能地址</td>
                        <td class="memberAddTd" align="left" width="720">
                        <input type="text" name="value" class="itemManagerInput" valid="notnull" msg="请输入功能地址！">
                        </td>
                    </tr>
                    <tr class="whiteColor">
                        <td class="typeNameTd" width="100">说 明</td>
                        <td class="memberAddTd" align="left" width="720">                  
                        <input type="text" name="note" class="itemManagerInput">
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


</body>
</html>
