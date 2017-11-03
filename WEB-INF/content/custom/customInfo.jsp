<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>客户信息</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgd.css" type=text/css rel=stylesheet>
<LINK href="<%=request.getContextPath()%>/themes/skin/unicomgd/unicomgdTel.css" type=text/css rel=stylesheet>
<script type="text/javascript">
function $(name){
	return document.getElementById(name);
}
	function checkForm(){
		var name = document.getElementById("name").value;
		var mailAddr = document.getElementById("mailAddr").value;
		if(name==""||mailAddr==""){
			alert("输入信息有误");
		}else{
			$("form1").submit();
		}
	}
</script>
</head>
<body>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
	<tr>
	  <td align="center">
	  <form name="form1" method="post" action="<%=request.getContextPath()%>/app/sendMail/newCustomInfo.sunit">
	    <table cellSpacing=0 cellPadding=0 width="98%" border=1>
          <tr>
            <td height="30" colspan="4" align="center" bgcolor="#CCCCCC"><b>客户信息</b> </td>
          </tr>
          <tr>
            <td width="15%" height="30" align="center" bgcolor="#CCCCCC">姓名</td>
            <td width="30%"><input type="text" name="name" style="width:100%" id="name" value="<c:out value='${command.name}'/>"/></td>
            <td width="15%" align="center" bgcolor="#CCCCCC">性别</td>
            <td width="30%"><input name="sex" style="border-bottom:none" type="radio" value="男" <c:if test="${command.sex != '女'}">checked</c:if>/>
              男
              <input name="sex" style="border-bottom:none" type="radio" value="女" <c:if test="${command.sex eq '女'}">checked</c:if>/>
              女 
			 </td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#CCCCCC">联系手机</td>
            <td height="30"><input type="text" style="width:100%" name="mobile" value="<c:out value='${command.mobile}'/>"/></td>
            <td height="30" align="center" bgcolor="#CCCCCC">电子邮箱地址</td>
            <td height="30"><input type="text" style="width:100%" name="mailAddr"  id="mailAddr" value="<c:out value='${command.mailAddr}'/>"/></td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#CCCCCC">办公电话1</td>
            <td height="30" ><input type="text" name="tel1" style="width:100%" value="<c:out value='${command.tel1}'/>"/></td>
            <td height="30" align="center" bgcolor="#CCCCCC">办公电话2</td>
            <td height="30" ><input type="text" name="tel2" style="width:100%" value="<c:out value='${command.tel2}'/>"/></td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#CCCCCC">公司传真</td>
          <td height="30" ><input type="text" name="tel3" style="width:100%" value="<c:out value='${command.tel3}'/>"/></td>
           <td width="15%" align="center" bgcolor="#CCCCCC">是否需要发送帐单</td>
            <td width="32%"><input name="foxaddrid" style="border-bottom:none" type="radio" value="1" <c:if test="${command.foxaddrid!= '0'}">checked</c:if>/>
              发送
              <input name="foxaddrid" style="border-bottom:none" type="radio" value="0" <c:if test="${command.foxaddrid eq '0'}">checked</c:if>/>
              不发 
			 </td>
          </tr>
           <tr>
            <td height="30" align="center" bgcolor="#CCCCCC">公司名称</td>
          <td height="30" ><input type="text" name="company" style="width:100%" value="<c:out value='${command.company}'/>"/></td>
           <td width="30%" align="center" bgcolor="#CCCCCC">公司邮箱</td>
            <td width="30%"> <input type="text" name="comMailAddr" style="width:100%" value="<c:out value='${command.comMailAddr}'/>"/></td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#CCCCCC">部门名称</td>
          <td height="30" ><input type="text" name="deaprt" style="width:100%" value="<c:out value='${command.deaprt}'/>"/></td>
           <td width="30%" align="center" bgcolor="#CCCCCC">职位名称</td>
            <td width="30%"> <input type="text" name="job" style="width:100%" value="<c:out value='${command.job}'/>"/></td>
          </tr>
          <tr>
            <td height="30" colspan="4" align="center">							
				<input type="hidden" name="id" value="<c:out value='${command.id}'/>"/>				
				<c:if test="${command.id!=null}"><input type="hidden" name="opType" value="modi"/> </c:if>
				<c:if test="${command.id==null}"><input type="hidden" name="opType" value="save"/> </c:if>
				<input type="hidden" name="insertTime" value="<c:out value='${command.insertTime}'/>"/>
				<input type="button" name="sub" value="提交" onClick="checkForm()"/>
				<input type="reset" name="clear" value="清空"/>
				<input type="button" value="返回" onClick="history.back();"/>
			</td>
          </tr>
        </table>
       </form>
	  </td>
	</tr>
</table>
</body>
</html>