<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户导入</title>
<link rel="stylesheet" href="/itil/themes/skin/itil/itil.css" type="text/css">
<script language="javascript">
//check data
function check(){    
	var obj = document.upload;
	if(obj.file.value != undefined){
	  if(obj.departIds.value == "" || obj.departIds.value.length ==0){
	     alert("注意:请选择部门!");
		 return false;
	  }	
	  if(obj.departIds.value != "" && obj.departNames.value.length >0){
	  	var strspl=obj.departNames.value.split(",");
		for(var j=0;j<strspl.length;j++){
			for(var i=1;i<strspl.length;i++){
				if(j!=i){	
					if(strspl[i]==strspl[j]){	
						alert("你选择了两个名称相同的部门!");
						return false;
					}
				}	
			}
		}
	  } 
	  if(obj.file.value == "" || obj.file.value.length ==0){
	     alert("注意:请选择文件!");
		 obj.file.focus();
		 return false;
	  }else if(obj.file.value.substring(obj.file.value.lastIndexOf(".")) != ".xls"){
	     alert("注意:只支持后缀名为xls的Excel文件!");
		 obj.file.focus();
		 return false;	 
	  }
	}else{
	  if(obj.departIds.value == "" || obj.departIds.value.length ==0){
	     alert("注意:请选择部门!");
		 return false;
	  }	
	  if(obj.departIds.value != "" && obj.departNames.value.length >0){
	  	var strspl=obj.departNames.value.split(",");
		for(var j=0;j<strspl.length;j++){
			for(var i=1;i<strspl.length;i++){
				if(j!=i){	
					if(strspl[i]==strspl[j]){	
						alert("你选择了两个名称相同的部门!");
						return false;
					}
				}	
			}
		}
	  } 
	  var i=obj.file.length;
	  for(j=0;j<i;j++){
	     if(obj.file[j].value == ""){
		   alert("注意:请选择文件!");
		   obj.file[j].focus();
		   return false;
		 }else if(obj.file[j].value.substring(obj.file[j].value.lastIndexOf(".")) != ".xls"){
	       alert("注意:只支持后缀名为xls的Excel文件!");
		   obj.file[j].focus();
		   return false;	 
	     }
	  }	  
	}	
	return true;
}
function showDepart(){
	var redepart;
	redepart = window.showModalDialog(encodeURI('<%=request.getContextPath()%>/itil/accesscontrol/select/departselectorCheckBoxFlow.jsp?departIds='+upload.departIds.value),'depart','dialogWidth:400px;dialogHeight:500px;center:yes;help:no;status:no');
	if(redepart==null)
		return;
	var strValue = redepart.split("@@%%")[0];
	var strText = redepart.split("@@%%")[1];	
	upload.departIds.value= strValue;
	upload.departNames.value= strText;	
}
</script>
<script language="javascript" type="text/javascript">
//表格行数(全局变量)
var count=1;
//添加表格的一行
function addRow(elementName,tableId){  
    var elementObj=document.getElementsByName(elementName)[document.getElementsByName(elementName).length-1]; 
	var tableObj=document.getElementById(tableId); 	
    var rows=tableObj.rows;	
	var rowTemp=elementObj.parentElement.parentElement;	
	var rowIndex=rowTemp.rowIndex;	
    try{
		if(rowTemp.getElementsByTagName("INPUT")[0].value!=null && rowIndex>=rows.length-1){		    
			var row=rows(rowIndex).cloneNode(true);
			count=rows.length+1;
			tableObj.getElementsByTagName("TBODY")[0].appendChild(row);
			if(null!=row){
				var inputs=row.getElementsByTagName("INPUT");
				if(null!=inputs){
				 for(var pos=0;pos<inputs.length;pos++){
					var input=inputs[pos];
					input.value="";		
				 }
			   }	
		    }
		}
	}
	catch(e)
	{
		if(confirm("增加元素出错，需重新载入！"))
			document.location.reload();
		return null;
	}	
}
//删除表格的一行
function delRow(obj,tableId){
    var tableObj=document.getElementById(tableId); 
	var rowTemp=obj.parentElement.parentElement;
	var rowIndex=rowTemp.rowIndex;
	var rows=tableObj.rows.length;
	if(rows>1){
		tableObj.deleteRow(rowIndex);
		count=count-1;
	}else{
	　　alert("注意:文档至少有一个选项!!");
	}	
}
</script>
</head>
<body>
<form action="userImportReturn.jsp?action=upload" method="post" enctype="multipart/form-data" name="upload" onSubmit="return check()">
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td height="24" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：组织结构 - 用户导入</td>
    <td align="right">
	  <input name="importData" type="submit" class="button" value="导入">
      <input type="button" name="back" value="返回" onClick="javascript:history.back();" class="bt_back">
	  </td>
  </tr>
</table>
<table width="100%" border="0" class="table_frame2" cellspacing="1" cellpadding="0" >
  <tr>
     <td class="table_row3" align="center" width="30%">部门</td>
	 <td class="table_row3" align="left">
	 	<input type="hidden" id="departIds" name="departIds" value=""/>
        <input type="text" id="departNames" name="departNames" style="width:80%" class="input_oneborder"  readonly="true" value="">
        <input type="button" name="selectDepart" value="选择" class="button" readonly="true" onClick="javascript:showDepart();" ><span class="url">*</span>
  </tr>
  <tr>
     <td class="table_row3" align="center" rowspan="2" width="30%">文档路径</td>
	 <td class="table_row3" align="left"><input type="button" name="add" value="添加" onClick="addRow('file','yang_table')" class="button"></td>
  </tr>
  <tr>  
	 <td class="table_row3" align="center">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="yang_table">	  
	   <tr>         
         <td width="65%" class="table_row3" align="left" style="padding:1px;">
          <input type="file" name="file" style="width:100%;border:1px solid #CCC;height:22px;padding:2px;">
		 </td>
		 <td class="table_row3" align="left" style="padding-left:10px"><img src="<%=request.getContextPath()%>/themes/common/img/icons/del.gif" border="0" title="删除" onClick="delRow(this,'yang_table')" style="cursor:hand"/>
		 </td>  
       </tr>
	  </table>
	 </td>
  </tr>
  <tr>
    <td colspan="2" height="30" align="center" valign="middle" class="table_row3">上传文件请不要超过100M！如果上传大文件，请耐心等待！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;模板文件下载&nbsp;<a href="<%=request.getContextPath()%>/itil/accesscontrol/module.xls" title="Excel模板文件"><img src="<%=request.getContextPath()%>/themes/common/img/icons/excel.gif" border="0"></a></td>	
  </tr> 
 </table> 
</form> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr height="15" class="table_row3">    
    <td class="url">&nbsp;</td>
  </tr> 
  <tr height="25" class="table_row3">    
    <td class="url">注: 部门名称、用户姓名、登录帐号、密码、性别为必填项. </td>
  </tr> 
</table>   
</body>
</html>
