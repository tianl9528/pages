<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<HTML>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=utf-8" />
<TITLE> 用户信息导入</TITLE>
<SCRIPT language="JavaScript" src="<%=request.getContextPath()%>/scripts/formvalid.js"></SCRIPT>
<SCRIPT  language="javascript">
	function $(name){
		return document.getElementById(name);
	}

	function myclear(){
		$("name").value="";
		$("agentID").value="";
		$("phone").value="";
		$("bureauID").value="";
		$("bureauName").value="";
	}
	function uploadExcel() {
		var file = document.getElementById("file");
		if(file.value != undefined){
			   if(file.value == "" || file.value.length ==0){
			     alert("请选择以.XLS结尾的Excel文件！");
				 return false;
			  }else if(file.value.substring(file.value.lastIndexOf(".")) != ".xls"){
			     alert("仅支持以.XLS结尾的Excel文件！请重新选择文件");
				 return false;	 
			  }
		}
		document.getElementById("excelForm").submit();
		createDiv('正在上传中，请稍后......');
	}
	function createDiv(text){
		  var div_obj= document.getElementById("testdiv");
		  if(div_obj==null){
		   div_obj= document.createElement("div");
		   div_obj.id="testdiv"; 
		   div_obj.style.cssText="filter:Alpha(opacity=60);height=670;position='absolute';display:'block';border:1px solid #FFF000;background='#F6f6f6';width="+document.body.clientWidth;
		    div_obj.style.top ="0px";
		    var h1_obj= document.createElement("h1");
		    h1_obj.style.cssText="color:red;margin-top:200px;font-size:25px;";
		    var br_obj= document.createElement("br");
		    div_obj.appendChild(br_obj);
		    div_obj.appendChild(br_obj);
		    div_obj.appendChild(br_obj);
		    div_obj.appendChild(br_obj);
			div_obj.appendChild(br_obj);
			div_obj.appendChild(br_obj);
			div_obj.appendChild(br_obj);
		    h1_obj.align="center";
		    h1_obj.innerText=text;
		    div_obj.appendChild(h1_obj);
		   document.body.appendChild(div_obj);
		  }else{
		   div_obj.style.display="block";
		  }
		}
</SCRIPT>
<style type="text/css">
form{
	margin-bottom: 5px;
	margin-top: 0px;
}
</style>
</HEAD>
<BODY>
	  <form id="excelForm" action="<%=request.getContextPath() %>/app/sendMail/importcustom.sunit" method="post" enctype="multipart/form-data"> 
    <table width="100%" border="1" cellspacing="0" cellpadding="0">
		<tr>
		 	<td align="center">请选择导入文件：
            <input type="file" id="file" name="file" onpaste="return false;" onKeyDown="return false;" style="width:40%; border:1px solid #888; z-index:99">
            <input type="button" onClick="uploadExcel()" class="button" style="color: red;margin-left:20px" value="导入"/>
            <input type="button" style="margin-left:20px;color: red" class="button" name="back" value="返回" onClick="javascript:history.back();"/>
            </td>
		 		<input type="hidden" name="roleString" value="<c:out value='${roleString}'/>"/>
        </tr>
		<tr>
		 	<td colspan="2" height="30" align="center" valign="middle">
		 		<span style="color:red">注意：导入仅支持以.XLS结尾的Excel文件</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/importexcel.xls" style="cursor: pointer;text-decoration: none;">导入模板下载
		 			<img src="<%=request.getContextPath()%>/themes/common/img/icons/excel.gif"/>
		 		</a>
		 		</td>
		 </tr>
         </table>
	  </form>  
</BODY>
</HTML>
