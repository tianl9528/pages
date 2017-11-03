<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/jtree.css" type="text/css" title="more">
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/scripts/jtree/jtree.js"></script>
<script language="JavaScript" type="text/javascript">
function showSearch()
{
	if(document.all.item("searchdiv").style.display=="none")
	{
		document.all.item("searchdiv").style.display="";
	}
	else
	{
		document.all.item("searchdiv").style.display="none";
	}
}
// 验证删除操作
function delConfirm(){
	var str="";
	str=radif();

	if(str==""){
		alert("请选择一部门");
	}else{
		if (confirm(""))
			str1 = "deldepart.jsp?departID="+str;
			this.location.href=str1
	}
}
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="noborder">
  <tr>
    <td>
	<table width="98%" align="center" cellpadding="1" cellspacing="1" class="noborder">
      <tr class="table_row2">
        <td width="20%" height="30"><font size="+1"><strong>部门管理</strong></font></td>
        <td width="20%">&nbsp;</td>
        <td width="20%">&nbsp;</td>
        <td width="20%" align="center">&nbsp;</td>
        <td width="20%" align="right"><input name="searchbutton" type="button" class="button" onClick="showSearch()" value="查 找">
          &nbsp;&nbsp;
          <input name="addbutton" type="button" class="button" onClick="adddepart()" value="新 增">
        </td>
      </tr>
    </table>
<div id=searchdiv align="center" style="display:none">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
        <tr class="table_row2">
          <td width="30%" height="25" align="right">部门/班组名称：</td>
          <td width="40%"><input type="text" name="departname" class="input_oneborder" style="width:98%"><input style="display:none"></td>
          <td width="30%" align="center"><input type="button" name="search" class="button" onClick="findNode(myTree.treeNodes)" value="开始查找"></td>
        </tr>
      </table>
</div>
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
        <tr class="table_row2">
          <td width="30%" height="600" valign="top"><div id="showTree"></div></td>
		  <td width="70%" align="center" valign="top">
			<iframe src="<%=request.getContextPath()%>/itil/accesscontrol/operate/operatehelp.jsp" name="addframe" width="100%" height="600" align="top" scrolling="auto" frameborder="0"></iframe>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
</table>
<script language="javascript" type="text/javascript">
	var myTree=new JTree("showTree","<%=request.getContextPath()%>/itil/accesscontrol/select/depart_xml.jsp");
	myTree.setPicPath("<%=request.getContextPath()%>/themes/images/jtree/")
	myTree.onclick=function(){
		//alert(myTree.selectNode.parentNode.attributes.getNamedItem("explain").nodeValue);
		//alert(myTree.clickItem.level)
		//alert(myTree.clickItem.treeNodes.length);
		//try{myTree.clickItem.treeNodes[0].click();}catch(e){}
		//setValueById("typeCaption",vControl('REPLACE',getNodeAtt(myTree.selectNode,"caption")));
		//setValueById("parentType",vControl('REPLACE',getNodeAtt(myTree.selectNode.parentNode,"caption")));
		//setValueById("PRI",getNodeAtt(myTree.selectNode,"PRI"));
		//setValueById("explain",getNodeAtt(myTree.selectNode,"explain"));
		//setValueById("level",myTree.clickItem.level);
		$("addframe").src="<%=request.getContextPath()%>/itil/accesscontrol/operate/depart_edit.jsp?id="+getNodeAtt(myTree.selectNode,"id");
	}
	myTree.CAPTIONATT="caption";
	myTree.create();
	//alert(myTree.root.caption);

	function setValueById(pObjID,pValue){
		var obj=document.getElementById(pObjID);
		try{
			obj.value=pValue;
		}catch(e){
			alert("控件："+pObjID+"　不存在，或没有value属性")
		}
	}
	
	function $(pID){
		return document.getElementById(pID);
	}
	
	function getNodeAtt(pNode,pAtt){
		try{
			return pNode.attributes.getNamedItem(pAtt).nodeValue;
		}catch(e){
			//alert("前台调试错误：\n"+e.message+"\n当前节点不存在: "+pAtt+"这个属性");
		}
	}
	
function vControl(pChoice,pParm){
	switch(pChoice){
		case "REPLACE":
			var pattern=/\([0-9]+\)$/;
				return pParm.replace(pattern,"");
			break;
		case "FINDNODE":
			var obj;
			for(var i=0;obj=pParm[i];i++){
				alert(obj.caption);
				if(obj.caption==$("nodeCaption").value)
					obj.click();
			}
			break;
	}
}

function findNode(pTree){
	var obj;
	for(var i=0;obj=pTree[i];i++){
		if(obj.caption==$("departname").value){
			obj.click();
			//obj.parentTreeNode.expand(true)
			myTree.clickItem.parentTreeNode.expand(true);
			return true;
		}
		findNode(obj.treeNodes)
	}
}

function adddepart(){
	$("addframe").src="<%=request.getContextPath()%>/itil/accesscontrol/operate/depart_add.jsp";
}
</script>
</body>
</html>