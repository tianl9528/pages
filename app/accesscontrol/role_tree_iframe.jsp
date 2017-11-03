<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>权限管理&gt;&gt;权限树</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css">

</head>

<body>
<form name="thisForm" method="post" onSubmit="submitData();return checkforminput()" action="role_db.jsp">

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr class="table_row3">
        <td height="25" colspan="2"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">

          <tr class="table_row3">
            <td>
			
			<div id="loading" unselectable = "on" align="center" style="z-index:100;background:white;"><img src="<%=request.getContextPath()%>/themes/common/img/loading.gif"></div>

			<div style="overflow:hidden;width:100%;" id="divBox">
			<xml id="menu" src="<%=request.getContextPath()%>/app/accesscontrol/roleTreeXml.jsp"></xml> 
			<xml id="xslStyleSheet" src="<%=request.getContextPath()%>/scripts/menu/menu_role.xsl"></xml> 
			<xml id="rightmenuXSL"> 
			<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl"> 
				<xsl:template match="/"> 
					<xsl:for-each select="//RightItem"> 
						<xsl:if test=".[../@showRightMenu='true']"> 
							<tr>
							   <td align="center" width="70" height="30" nowrap="true" style="background-color:#006790;font:9px" onMouseOver="changecolor(this,'#6098cf')" onMouseOut="changecolor(this,'#006790')">
										<span style="color:white" onClick="if(this.action!=''){parent.mainFrame.location=this.action;}" >
										<xsl:attribute name="action"><xsl:value-of select="@action"/></xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
										<xsl:value-of select="@name"/>
										</span>
										<xsl:if test="RightItem">
											<span onClick="show_sub_rightmenu(this.id)" style="color:red;font:9px">
											<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
											...
											</span>
										</xsl:if>
										<br/>
									</td>
								</tr>
							</xsl:if>
						</xsl:for-each>
			  </xsl:template>
			 </xsl:stylesheet>
			</xml>
			<div id="result" style="overflow:hidden"></div>
			
			<div id="rightmenu" style="position:absolute;width:8px; z-index:4;overflow:hidden" onClick="hide_rightmenu()"></div>

			</div>
			</td>
            </tr>

        </table>
		</td>
      </tr>
    </table>
	</td>
  </tr>
</table>
</form>
<script >
window.onload=init;
//onclick=hide_rightmenu()
/*
+-----------------------------------------------+
|	Name:XSLTreeMenu--ShowTree					|
|	Developer:BlueZhou							|
|	E-Mail:jzblue@21cn.com						|
|	20002.1										|
+-----------------------------------------------+
*/
var id = null;
var name = null;
function init()
{
	S=menu.transformNode(xslStyleSheet.XMLDocument)
	imgx="<img src='images/blank.png'>"
	imgy="<img src='images/I.png'>"
 	re = /imgXhere/g;
 	re2=/imgYhere/g;
 	re3=/[>]\s*[<]/g;

	S = S.replace(re, imgx);
	S = S.replace(re2, imgy);
	S=S.replace(re3,"><")
	result.innerHTML=S;
	aclinit()
//	alert(S)
  	if(id!=null&&name!=null){
		var slist=document.all;
		for(var i=0;i<slist.length;i++)
		{			
			document.all(i).style.backgroundColor="white";
			if(id==document.all(i).id&&name==document.all(i).name)
				document.all(i).style.backgroundColor="#C1DAF7";
		}
	}
	
	parent.document.getElementById("roletree").height=document.body.scrollHeight;
	
	loading.style.visibility="hidden";
	//alert();
	//alert(document.body.scrollHeight);
}


var srcElementMine = null;

var saveIds="<%
String ids=request.getParameter("ids");
if(ids.equals("null")||ids.equals("")||ids.length()==0)ids="";
out.write(ids);
%>";

var aclcollist="";

function selectData(treeId,count){
//alert("get treeId is "+treeId+" 上一级的名称是"+count);
	queryclass="//*[@lay='"+treeId+"']";
 	var xlist=menu.documentElement.selectNodes(queryclass); 
//alert("xlist length "+xlist.length);
	//if(0==xlist.length)return;
	for(i=0;i<xlist.length;i++){	
		var tempnode=xlist.item(i);
alert("i is "+i+"; xlist length is "+xlist.length);
alert("name is "+tempnode.getAttribute("name")+"; id is "+tempnode.getAttribute("id")+"; lay is "+tempnode.getAttribute("lay")+"; entityId is "+tempnode.getAttribute("entityId"));
		newCount=tempnode.getAttribute("name");
		saveIds+="|"+tempnode.getAttribute("entityId");
		selectData(tempnode.getAttribute("id"),newCount);
	}
}

function unselectData(treeId){
//alert("get treeId is "+treeId)
	queryclass="//*[@lay='"+treeId+"']";
 	var xlist=menu.documentElement.selectNodes(queryclass); 
//alert("xlist length "+xlist.length);
	if(0==xlist.length)return;
	for(i=0;i<xlist.length;i++){	
		var tempnode=xlist.item(i);
//alert("name is "+tempnode.getAttribute("name")+"; id is "+tempnode.getAttribute("id")+"; lay is "+tempnode.getAttribute("lay")+"; entityId is "+tempnode.getAttribute("entityId"));
		var temp_str="|"+tempnode.getAttribute("entityId");
		if(saveIds.indexOf(temp_str)!=-1){
			saveIds=saveIds.replace(temp_str,"");
		}
		unselectData(tempnode.getAttribute("id"));
	}
}

function aclsave(obj){
//alert("treeId is "+obj.getAttribute("treeId"));

	if(obj.checked){
		if(saveIds.indexOf("|"+obj.value+"|")==-1){
			saveIds+="|"+obj.value+"|";
		}
		//selectData(obj.getAttribute("treeId"),0);
	}else{
		if(saveIds.indexOf("|"+obj.value+"|")!=-1){
			saveIds=saveIds.replace("|"+obj.value+"|","");
		}
		//unselectData(obj.getAttribute("treeId"));
	}
	//alert(obj.getAttribute("parentId"));
	//alert("saveIds is "+saveIds);
	aclinit();
}

function aclinit(){
	var ilength = thisForm.entityid.length;
	var check = true;
	var str="";
    for (i=0;i<ilength;i++){
		if(saveIds.indexOf("|"+thisForm.entityid[i].value+"|")!=-1&&thisForm.entityid[i].value!=0){	
			thisForm.entityid[i].checked="check";
		}else{
			thisForm.entityid[i].checked="";
		}
		if(thisForm.entityid[i].value==0)thisForm.entityid[i].disabled=true;
    }
}



function setSrc(src){
	srcElementMine=src;
}

function changestate(id_string)
{	
 	var xlist=menu.documentElement.getElementsByTagName("SubMenuItem");
 	for(i=0;i<xlist.length;i++)
 	{

		var nodea=xlist.item(i);
		id_value=nodea.getAttribute("id");
		if(id_value==id_string)
		{
				var select= nodea.getAttribute("showSubItem");
				nodea.setAttribute("showSubItem",(!eval(select)).toString());
		}

	}
	init();
}



//测试用函数
function CheckAllBox(obj)
{	
	//queryclass="//*[@showSubItem='true']"
 	//var xlist=menu.documentElement.selectNodes(queryclass); 
 	var xlist=menu.documentElement.getElementsByTagName("SubMenuItem");
	var strIds="";
	saveIds="";
	if(obj.checked){
		for(i=0;i<xlist.length;i++)
		{
	
			var nodea=xlist.item(i);
			id_value=nodea.getAttribute("entityId");
			name_value=nodea.getAttribute("name");
			strIds="|"+id_value+"|";
			
			if(saveIds.indexOf(strIds)==-1)saveIds+=strIds;
		}
	}
	aclinit();
	//alert(strIds);
}

function submitData(){
	saveIds=saveIds.substring(1,saveIds.length-1);
	parent.document.getElementById("saveIds").value=saveIds;
	//alert(saveIds);
}

</script>
</body>
</html>
