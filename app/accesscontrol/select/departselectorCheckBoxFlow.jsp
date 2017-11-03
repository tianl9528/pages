<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.*"%>
<%@ page import="sunit.database.*"%>
<%
response.setHeader("Pragma","No-Cache");
response.setHeader("Cache-Control","No-Cache");
response.setDateHeader("Expires", 0);
%>
<%
	Info info = (Info)session.getAttribute(Config.KEY_LOGIN_INFO);
	long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
	String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();
	String departIds = request.getParameter("departIds")==null?"":request.getParameter("departIds");
	String departNames = request.getParameter("departNames")==null?"":request.getParameter("departNames");
	
	Hashtable hashDepart = DepartHelper.readDepartNamesByDepartIds(departIds);
	if(hashDepart!=null){
		departIds = String.valueOf(hashDepart.get("departIds"));
		departNames = String.valueOf(hashDepart.get("departNames"));		
	}
	
	String[] flowDepartIds=null;
	String[] flowDepartNames=null;
	if(departIds.length()>0){
		if(departIds.indexOf(",")==-1){
			flowDepartIds = new String[]{departIds};
			flowDepartNames = new String[]{departNames};
		}else{
			flowDepartIds = departIds.split(",");
			flowDepartNames = departNames.split(",");
		}
	}	
	DAO dao = new DAO();
	try {
		dao.begin();
		
		DepartManager manager = new DepartManager();
		Depart depart=manager.readOne(departId);
		List list = DepartHelper.getTreeChildDefault(departId);
%>
<html>
<head>
<title>选择部门</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/style.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css">
</head>
<script type="text/javascript" src="scripts/string.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/scripts/formvalid.js"></script>
<script>
function setValues(depart){
	var selectObj = document.all.departIds;
	if(depart.checked){
		var opt=document.createElement("option"); 
		opt.value=depart.value; 
		opt.text=depart.name; 
		selectObj.options.add(opt);
	}else{
		for(var i=0;i<selectObj.options.length;i++){
			if(selectObj.options(i).value==depart.value){
				selectObj.options.remove(i);
				break;
			}
		}
	}
}
function createOption(val,nam){
	var selectObj = document.all.departIds;
	var flag = false;
	for(var i=0;i<selectObj.options.length;i++){
		if(selectObj.options(i).value==val){
			flag = true;
			break;
		}
	}
	if(flag == false){
		var opt=document.createElement("option"); 
		opt.value=val; 
		opt.text=nam; 
		selectObj.options.add(opt);
	}
}
function removeOption(val){
	var selectObj = document.all.departIds;
	for(var i=0;i<selectObj.options.length;i++){
		if(selectObj.options(i).value==val){
			selectObj.options.remove(i);
			break;
		}
	}
}
function setChildCheckBox(depart){
	var chk = document.getElementsByTagName("INPUT");
	if(depart.checked){
		for(var j=0;j<chk.length;j++){
			if(chk[j].type=="checkbox"){
				if((chk[j].id).substr(0,(depart.id).length)==(depart.id)){
					chk[j].checked = true;
					createOption(chk[j].value,chk[j].name);
				}
			}
		}
	}else{
		for(var j=0;j<chk.length;j++){
			if(chk[j].type=="checkbox"){
				if((chk[j].id).substr(0,(depart.id).length)==(depart.id)){
					chk[j].checked = false;
					removeOption(chk[j].value);
				}
			}
		}
	}
}
function goback(){
	var returnStr;
	returnStr = "";
	var len = document.all.departIds.length;
	for(var i=0;i<len;i++){
		returnStr += document.all.departIds.options(i).value;
		if(i!=len-1){
			returnStr += ",";
		}
	}
	returnStr += "@@%%";
	for(var i=0;i<len;i++){
		returnStr += document.all.departIds.options(i).text;
		if(i!=len-1){
			returnStr += ",";
		}
	}
	window.returnValue = returnStr;
	window.close();
}
function resizeDivBox()
{
	var h = document.body.clientHeight-header.offsetHeight-footer.offsetHeight;
	divBox.style.height = h;
}
window.onload=resizeDivBox;
window.onresize=resizeDivBox;

//	var selectedTR;
//	var TRbgColor = "#C5DDFE";
	
	function toggle()
	{
        var srcElem = window.event.srcElement;
		if(srcElem.tagName=="IMG")
	        srcElem = srcElem.parentElement.parentElement;
	    if(srcElem.tagName=="TD")
	        srcElem = srcElem.parentElement;
	    if(srcElem.tagName=="INPUT")
		{
			//setValues(srcElem);
			//选中已经展开的子部门
			setChildCheckBox(srcElem);
		}
		yang_process(srcElem);
	}    
function donothing()
{
}
</script>

<body scroll=no>
<select name="departIds" style="display:none">
<%
if(flowDepartIds!=null&&flowDepartIds.length>0){  
	for(int j=0;j<flowDepartIds.length;j++){
		out.println("<option value='"+flowDepartIds[j]+"'>"+flowDepartNames[j]+"</option>");
	}
}
%>
</select>
<div id=wait style="padding-left:20">
<br>
正在生成部门列表，请等候片刻...</div>
<form name="accessForm" method="post">
<div id="header" class="list_title" style="height:30px;padding-top:5px;">选择部门</div>
<div id="thecontent" style="display:none">
<div style="overflow:auto;width:100%;" id="divBox">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr height="30" class="table_row4" align="center"><td>名称</td><td>代码</td></tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" onClick="toggle()">
<tbody>
<!--填充代码类型树 -->
	<tr style='cursor:hand' pos="-1" departCode="<%=depart.getDepartCode()%>" fullname="<%=depart.getName()%>" codeid="<%=depart.getId()%>" codename="<%=depart.getName()%>" code="<%=depart.getDepartCode()%>" hasChild="<%=(list.size()>0)%>">
		<td><img align="absmiddle" height="18" width="18" src="<%=request.getContextPath()%>/themes/images/jtree/base.gif"/>
			<input type="checkbox" id="<%=depart.getDepartCode()%>" value="<%=depart.getId()%>" name="<%=depart.getName()%>" /><%=depart.getName()%>
		</td>
		<td>
			<%=depart.getDepartCode()%>
		</td>
	</tr>
<%
		if(list!=null&&list.size()>0){
			Depart dat=null;
			String theme="table_row3";
			for(int i=0;i<list.size();i++){
				dat=(Depart)list.get(i);
				theme=i%2==0?"table_row3":"table_row4";
%>
		    	<tr style='cursor:pointer' class="<%//=theme%>" pos="<%=i%>" departCode="<%=dat.getDepartCode()%>" fullname="<%=dat.getName()%>" codeid="<%=dat.getId()%>" codename="<%=dat.getName()%>" code="<%=dat.getDepartCode()%>" hasChild="<%=(dat.getChildDepartSize()>0)%>">
					<td style="padding-left:10px;">
						<img align="absmiddle" src="<%=request.getContextPath()%>/themes/images/jtree/<%=dat.getChildDepartSize()>0?(i==list.size()-1?"plusbottom.gif":"plus.gif"):(i==list.size()-1?"join.gif":"joinbottom.gif")%>"/>
						<input type="checkbox"  id="<%=dat.getDepartCode()%>" name="<%=dat.getName()%>" value="<%=dat.getId()%>"/><%=dat.getName()%>
					</td>
					<td>
						<%=dat.getDepartCode()%>
					</td>
				</tr>
<%
			}
	    }
%>
</tbody>
</table>
</div>
    <div id="footer" style="height:40;text-align:center">
        <input type="button" class="button" value="确定" onClick="goback()"/> 
        <input type="button" class="button" value="取消" onClick="JavaScript:window.close()"/> 
        <div style="color:#999;padding:5px;">(请双击您需要填写的内容！或点取消返回！)</div>
	</div>
</div>
</form>
<script>
	document.all.wait.style.display="none";
	document.all.thecontent.style.display="";
</script>      
</body>
</html>
<script language="JavaScript">
<!--//
	var DEFAULT_DEPTH=0;
	var departTrees=new Array();
<%
	if(list!=null&&list.size()>0){
		Depart dat=null;
		for(int i=0;i<list.size();i++){
			dat=(Depart)list.get(i);
%>
		departTrees[<%=i %>]=new DepartTree("<%=dat.getId() %>","<%=dat.getName()%>","<%=dat.getName()%>","<%=dat.getDepartCode()%>",<%=dat.getLayer()%>,<%=dat.getChildDepartSize()%>,<%=(dat.getChildDepartSize()>0)%>);
		departTrees[<%=i %>].position=<%=i %>;
<% 
		} 
	}
%>
	function DepartTree(id,fullname,name,code,depth,childrenCount,isFinal){
		this.id=id;
		this.fullname=fullname;
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
		var departName=parent.name;
		var url;
		var doc=new ActiveXObject('MSXML');
		url=this.location.href.replace("departselectorCheckBoxFlow.jsp","departselectorXml.jsp");
		url+="?1=1&departId="+ departId ;
		//alert(url);
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
						child.children.item(2).text,
						child.children.item(3).text,
						child.children.item(4).text,
						child.children.item(5).text,
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
		if(0==index)
		{
			var txt=document.createTextNode("　　请稍后,正在加载" +(list.length) + "项数据...");
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
		var box = document.createElement("INPUT");
		var img=null;
		var imgs=new Array();
		row.style.backgroundColor="";
		row.departCode=dt.code;
		row.fullname=dt.fullname;
		row.pos=dt.position;
		row.codeid=dt.id;
		row.codename=dt.name;
		row.code=dt.code;
		row.hasChild=dt.hasMoreChildren;
		c2.insertBefore(document.createTextNode(dt.code));
		for(var pos=dt.parent,pos2=0;null!=pos;pos=pos.parent,pos2++){
			imgs[pos2]=document.createElement("IMG");
			imgs[pos2].align="absmiddle";
			if(pos.isFinal){
				imgs[pos2].src="<%=request.getContextPath()%>/themes/images/jtree/empty.gif";
			}else{			
				imgs[pos2].src="<%=request.getContextPath()%>/themes/images/jtree/line.gif";
			}
		}
		for(var pos=imgs.length;pos>0;pos--)
			c1.insertBefore(imgs[pos-1]);
		img=document.createElement("IMG");
		img.align="absmiddle";
		img.src="<%=request.getContextPath()%>/themes/images/jtree/"+(dt.hasMoreChildren?(index==list.length-1?"plusbottom.gif":"plus.gif"):(index==list.length-1?"joinbottom.gif":"join.gif"));
		c1.insertBefore(img);
		
		box.type="checkbox";
		box.value=dt.id;
		box.name=dt.name;
		//box.onclick="setValues(this,'"+dt.name+"');";
		//var env = box.createEventObject();
//		env.
		box.id = dt.code;

		c1.insertBefore(box);
		c1.insertBefore(document.createTextNode(dt.name));
		row.insertBefore(c1);
		row.insertBefore(c2);
		parentRow.insertBefore(row);
		//parentRow=row;
		dt.row=row;
		dt.image=img;
		index++;
		//createTree(parentRow,list,++index);
		//createTree();
		setTimeout("createTree()",10);
		
		chkBox();

	}
	function swapImage(dt){
		if(null==dt)
			return;
		dt.image.src=
			"<%=request.getContextPath()%>/themes/images/jtree/" + 
			(dt.isOpen?(dt.isFinal?"minusbottom.gif":"minus.gif"):(dt.isFinal?"plusbottom.gif":"plus.gif"));
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
		if(parent!=null){
			if(null==parent.row){
				parent.row=srcElem;
				var imgsTemp=parent.row.getElementsByTagName("IMG");
				parent.image=imgsTemp[imgsTemp.length-1];
			}
			parent.isOpen=!parent.isOpen;
			showTree(parent,parent.isOpen);
		}
	}
	
//自动填充checkbox的值得
function chkBox(){
	var selectObj = document.all.departIds;
	var chk = document.getElementsByTagName("INPUT");
	
	for(var i=0;i<selectObj.options.length;i++){
		for(var j=0;j<chk.length;j++){
			if(chk[j].type=="checkbox"){
				if(selectObj.options[i].value==chk[j].value){
					chk[j].checked = true;
				}
			}
		}
	}
}
chkBox();
//
//-->
</script>
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