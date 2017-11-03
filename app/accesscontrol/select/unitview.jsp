<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.List" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*"%>
<jsp:useBean id="helper" scope="page" class="sunit.accesscontrol.manager.DepartTreeHelper" />
<%
	List list=helper.process(request,response);
%>
<html>
<head>
<title>选位</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="http://<%=request.getServerName()+':'+request.getServerPort()+ request.getContextPath()+"/"%>">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css">
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/string.js"></script>
<script>
function resizeDivBox()
{
	var h = document.body.clientHeight-header.offsetHeight-footer.offsetHeight;
	divBox.style.height = h;
}
window.onload=resizeDivBox;
window.onresize=resizeDivBox;

var selectedTR;
var TRbgColor = "#ffcc99";
	function OK()
	{
		if ( selectedTR == null)
		{
			alert("选位!");
			return;
		}
	try
	{
		var name = selectedTR.childNodes[0].innerText;
		
		window.returnValue = selectedTR.childNodes[1].innerText+";"+ name.trim()
							 +";"+selectedTR.getAttribute("departId");
		window.close();
	}catch(e)
	{
		alert("选取效位");
	}
		return;
	}

	function toggle()
	{

        var srcElem = window.event.srcElement;
		if(srcElem.tagName=="IMG")
	        srcElem = srcElem.parentElement.parentElement;
	    if(srcElem.tagName=="TD")
	        srcElem = srcElem.parentElement;
	    if(srcElem.tagName=="TR")
		{
			if(selectedTR != null)
				selectedTR.style.backgroundColor="";
			selectedTR = srcElem;
			selectedTR.style.backgroundColor =TRbgColor;
		}
		yang_process(srcElem);
	}    
function newDepart()
{
	var ret;
	ret = window.showModalDialog(
		"/accident_manager/data_transfer/adddepartform.jsp",
		"",
		"dialogWidth:640px;dialogHeight:295px;center:yes;status:no;help:no;resizable:yes");
	
	if ( ret != null)
	{
		document.execCommand("Refresh");
	}
}
function donothing()
{
}
</script>

<body scroll=no>
<div class="head_bar" id=header style="height:30">选位</div>

<div style="overflow:auto;width:100%;height:90%;border: thin inset;" id=divBox>

<table cellpadding="0" cellspacing="0" style="font-size:x-small;border: none;table-layout:fixed" border="0" width=100%  onClick="toggle()" onDblClick="OK()">
<COLGROUP><col width="80%"><col width="20%"></COLGROUP>
<thead>
<tr class="table_row1" height=25 align=left><th>位</th><th></th></tr>
</thead>
<tbody>
<!-- -->

<%
	for(int pos=0;pos<list.size();pos++){
		DepartTree dt=(DepartTree)list.get(pos);
		out.write("<tr departId='"+dt.getId()+
			"' pos='"+ pos + 
			"' departCode='" + dt.getCode() + 
			"'><td><img align=\"absmiddle\" src=\""+request.getContextPath()+"/themes/images/tree/" +
			(dt.hasMoreChildren()?(pos==list.size()-1?"plus_bottom.gif":"plus.gif"):(pos==list.size()-1?"join.gif":"join_bottom.gif"))+ 
			"\">"+ dt.getName()+"</td><td>"+ 
			(dt.getCode()==null?"":dt.getCode()) +
			"</td></tr>");
	}
%>
<!--	<tr height=30 class=table_row1_emp>
		<td colspan=2 align=center>
			<input type=button class=button onClick="newDepart()" value=" 要注碌位 ">
		</td>
	</tr>-->
</tbody>
</table></div>
<div class="head_bar" id=footer  style="height:40">
<table width="98%" align="center" cellpadding="1" cellspacing="1">
<tr>
<td align="center">
	<input type="button" class="button" value="确 " onClick="OK()">&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="button" class="button" value="取 " onClick="JavaScript:window.close()"></td>
</tr>
</table>
</div>
</body>
</html>
<script language="JavaScript">
<!--
	var DEFAULT_DEPTH=<%=0==list.size()?0:((DepartTree)list.get(0)).getDepth()%>;
	var departTrees=new Array();
	<%
		for(int pos=0;pos<list.size();pos++){
			DepartTree dt=(DepartTree)list.get(pos);
	%>
		departTrees[<%=pos %>]=
			new DepartTree("<%=dt.getId() %>","<%=dt.getName() %>",	"<%=dt.getCode() %>",<%=dt.getDepth() %>,<%=dt.getChildrenCount() %>,<%=pos==list.size()-1 %>);
		departTrees[<%=pos %>].position=<%=pos %>;
	<% } %>
	function DepartTree(id,name,code,depth,childrenCount,isFinal){
		this.id=id;
		this.name=name;
		this.code=code;
		this.depth=depth;
		this.childrenCount=childrenCount;
		this.hasMoreChildren=childrenCount>0;
		this.children=new Array();
		this.parent=null;
		this.row=null;
		this.isOpen=false;
		this.isFinal=isFinal;
		this.position=0;
		this.image=null;
	}
	function getChildren(list,pos){
		var parent=list[pos];
		var departId=parent.id;
		var departCode=parent.code;
		var url;
		var doc=new ActiveXObject('MSXML');
		url=this.location.href.replace("unitview.jsp","departXml.jsp");
		url+="?departId=" + departId + "&departCode=" + departCode;
		doc.url=url;
		var root=doc.root;
		if(null!=root.children){
			var children=root.children;
			for(var index=0;index<children.length;index++){
				var child=children.item(index);
				var departTree=
					new DepartTree(
						child.children.item(0).text,
						child.children.item(1).text,
						(child.children.item(2).text=="null"?"":child.children.item(2).text),
						parseInt(child.children.item(3).text),
						parseInt(child.children.item(4).text),
						index==children.length-1
						);
				departTree.parent=parent;
				departTree.position=list.length+index;
				parent.children[index]=departTree;
				list[list.length+index]=departTree;
			}
		}	
		return parent.children;	
	}
	var parentRow=null,list=null,index=0;
	function createTree(){
		if(0==index){
			var txt=document.createTextNode("院,诩" +list.length + "...");
			var td=document.createElement("TD");
			var tr=document.createElement("TR");
			td.insertBefore(txt);
			tr.insertBefore(td);
			parentRow.insertBefore(tr);
			//alert(parentRow.innerHTML);
		}
		if(list.length==index){
			index=0;
			parentRow.removeChild(parentRow.getElementsByTagName("TR")[0]);
			return;
		}
		var row=parentRow.cloneNode(false);
		//var row=document.createElement("TR");
		var dt=list[index];
		var c1=document.createElement("TD");
		var c2=document.createElement("TD");
		var img=null;
		var imgs=new Array();
		row.style.backgroundColor="";
		row.departId=dt.id;
		row.departCode=dt.code;
		row.pos=dt.position;
		c2.insertBefore(document.createTextNode(dt.code));
		for(var pos=dt.parent,pos2=0;null!=pos;pos=pos.parent,pos2++){
			imgs[pos2]=document.createElement("IMG");
			imgs[pos2].align="absmiddle";
			if(pos.isFinal)
				imgs[pos2].src="<%=request.getContextPath()%>/themes/images/tree/spacer.gif" ;
			else			
				imgs[pos2].src="<%=request.getContextPath()%>/themes/images/tree/line.gif" ;
		}
		for(var pos=imgs.length;pos>0;pos--)
			c1.insertBefore(imgs[pos-1]);
		img=document.createElement("IMG");
		img.align="absmiddle";
		img.src="<%=request.getContextPath()%>/themes/images/tree/"+(dt.hasMoreChildren?(index==list.length-1?"plus_bottom.gif":"plus.gif"):(index==list.length-1?"join.gif":"join_bottom.gif"));
		c1.insertBefore(img);
		c1.insertBefore(document.createTextNode(dt.name));
		row.insertBefore(c1);
		row.insertBefore(c2);
		parentRow.insertBefore(row);
		//parentRow=row;
		dt.row=row;
		dt.image=img;
		index++;
		//createTree(parentRow,list,++index);
		createTree();
		//setTimeout("createTree()",0);
	}
	function swapImage(dt){
		if(null==dt)
			return;
		dt.image.src=
			"<%=request.getContextPath()%>/themes/images/tree/" + 
			(dt.isOpen?(dt.isFinal?"minus_bottom.gif":"minus.gif"):(dt.isFinal?"plus_bottom.gif":"plus.gif"));
	}
	
	function showTree(parent,isShow){
		var listTemp=parent.children;
		var display="none";
		if(0==parent.childrenCount)
			return;
		if(isShow && 0!=parent.childrenCount && 0==parent.children.length){			
			swapImage(parent);
			parentRow=parent.row;
			list=getChildren(departTrees,parent.row.pos)
			index=0;
			createTree();
			return;
		}
		if(isShow)
			display="";
		swapImage(parent);
		for(var pos=0;pos<listTemp.length;pos++){
			listTemp[pos].row.style.display=display;
			showTree(listTemp[pos],listTemp[pos].isOpen && isShow);
		}
	}
	function yang_process(srcElem){
		if(0!=index)
			return;
		if(null==srcElem.pos)
			return;
		var parent=departTrees[srcElem.pos];
		if(null==parent.row){
			parent.row=srcElem;
			var imgsTemp=parent.row.getElementsByTagName("IMG");
			parent.image=imgsTemp[imgsTemp.length-1];
		}
		parent.isOpen=!parent.isOpen;
		showTree(parent,parent.isOpen);
	}
//-->
</script>



