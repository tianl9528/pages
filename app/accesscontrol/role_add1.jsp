<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import = "sunit.database.*"%>
<HTML>
<HEAD>
<TITLE>角色管理</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formcheck/checkforminput.js"></script>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/formvalid.js"></script>
<script language="javascript" type="text/javascript">
function goback()
{
	if(confirm("确定不保存数据就离开此页面吗？"))
	{
		window.location.href="'role_list.jsp'";
	}
}
</script>
</HEAD>
<BODY>
<form name="thisForm" method="post" onSubmit="roletree.submitData();return checkforminput()" action="role_db.jsp">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
    <TR>
      <TD id=banner align=left width=582 height=5></TD>
    </TR>
      <TD style="PADDING-LEFT: 25px; FONT-WEIGHT: bold; COLOR: #f2af08"
                            background=images/20050917_e_07.gif
                            height=34><IMG height=16
                              src="<%=request.getContextPath()%>/themes/images/unicomgd/chongzhi.gif"
                              width=115></TD>
    </TR>
    <TR>
      <TD style="PADDING-LEFT: 25px"
            height=25><table cellSpacing=0 cellPadding=0 width="100%" border=1>
			<tr >
            <td width="12%" align="center" bgcolor="eaeaea" >角色名称</td>
            <td height="30" colspan="3"><input type="text" name="name" value="" style="width:80%" class="input_oneborder" valid="notnull" msg="请输入角色名称！"></td>
			</tr>
			<tr >
			  <td align="center" bgcolor="eaeaea" >说　　明</td>
			  <td height="30" colspan="3"><input type="text" name="note" value="" style="width:80%" class="input_oneborder"></td>
		    </tr>
            <tr>
              <td height="30" colspan="2" bgcolor="eaeaea">&nbsp;&nbsp;拥有的功能模块&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="checkAll" onClick="roletree.CheckAllBox(this);">
                全选
              <input type="hidden" name="saveIds"></td>
              <td width="39%" bgcolor="eaeaea">&nbsp;</td>
              <td width="18%" bgcolor="eaeaea"><input name="submit" type="submit" class="button" onClick="return confirm('确定提交数据吗？')" value="保存">
                <input name="button" type="button" class="button" onClick="goback()" value="取消"></td>
            </tr>
            <tr>
            <td height="30" colspan="4"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
<%
	EntityManager entityManager=new EntityManager();
	List entityList=entityManager.readAll();
	if(entityList!=null&&entityList.size()>0){
%>
          <tr class="table_row3">
            <td width="33%" colspan="3" height="25">
			<iframe id="roletree" frameborder="0" scrolling="no" width="100%" src="role_tree_iframe.jsp?ids=<%=request.getParameter("ids")%>"/>
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
        </table></td>
            </tr></table></TD>
    </TR>
</TABLE>
</form>
</BODY>
</HTML>