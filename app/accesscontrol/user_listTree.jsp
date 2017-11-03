<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%
	long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
	long parentDepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getParentDepartId();
	String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();
	if(request.getParameter("departId")!=null&&request.getParameter("departId").length()>0){
		departId=Long.parseLong(request.getParameter("departId"));
	}
	DAO dao = new DAO();
	try {
		dao.begin();
		DepartManager manager = new DepartManager();
		Depart depart=manager.readOne(departId);
		//List list = DepartHelper.getTreeChild(departId);-----for oracle
		List list = DepartHelper.getTreeChildDefault(departId);
%>
<html>
<head>
<title>用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/common/css/content.css" type="text/css" title="more">
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
var selectedTR;
var TRbgColor = "#C5DDFE";
	function OK()
	{
		if ( selectedTR == null)
		{
			alert("请选择代码!");
			return;
		}
	try
	{
		var name = selectedTR.childNodes[0].innerText;
		$("addframe").src="<%=request.getContextPath()%>/itil/accesscontrol/user_list.jsp?id="+selectedTR.codeid;
		//window.returnValue = selectedTR.codeid+";"+selectedTR.codename+";"+selectedTR.code;
	}
	catch(e)
	{
		alert("请选取有效代码！");
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
function donothing()
{
}

</script>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
  <tr> 
    <td height="24" valign="top" class="url"><img src="<%=request.getContextPath()%>/themes/common/img/icons/icon01.gif" />&nbsp;您当前的位置：组织结构 - 用户管理</td>
    <td align="right"><input name="button2" type="button" class="button" onClick="$('addframe').src='user_add.jsp'" value="新增"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
<div id=searchdiv align="center" style="display:none;padding:3px;">
      <table width="70%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_frame">
        <tr class="table_row3">
          <td width="30%" height="25" align="right">部门/班组名称：</td>
          <td width="40%"><input type="text" name="departname" class="input_oneborder" style="width:98%"><input style="display:none"></td>
          <td width="30%" align="center"><input type="button" name="search" class="button" onClick="findNode(myTree.treeNodes)" value="开始查找"></td>
        </tr>
      </table>
</div>
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="table_frame">
        <tr class="table_row3">
          <td width="22%" height="500" valign="top">
			<!--<iframe src="<%=request.getContextPath()%>/itil/accesscontrol/select/depart_list.jsp" name="listframe" width="100%" height="500" align="top" scrolling="auto" frameborder="0"></iframe>-->
<div style="overflow:auto; width:200px; height:550px" id=divBox>
            <table cellpadding="0" cellspacing="0" style="font-size:x-small;border: none;table-layout:fixed" border="0" width="600"  onClick="toggle()" onDblClick="OK()">
<COLGROUP><col width="70%"><col width="30%"></COLGROUP>
<thead>
<tr height=20 align=left><th>名称</th><th>代码</th></tr>
</thead>
<tbody>
<!--填充代码类型树 -->
	<tr style='cursor:hand' pos="-1" departCode="<%=depart.getDepartCode()%>" fullname="<%=depart.getName()%>" codeid="<%=depart.getId()%>" codename="<%=depart.getName()%>" code="<%=depart.getDepartCode()%>" hasChild="<%=(list.size()>0)%>">
		<td><img align="absmiddle" height="18" width="18" src="<%=request.getContextPath()%>/themes/images/jtree/base.gif"/>
			<%=depart.getName()%>
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
		    	<tr style='cursor:hand' class="<%//=theme%>" pos="<%=i%>" departCode="<%=dat.getDepartCode()%>" fullname="<%=dat.getName()%>" codeid="<%=dat.getId()%>" codename="<%=dat.getName()%>" code="<%=dat.getDepartCode()%>" hasChild="<%=(dat.getChildDepartSize()>0)%>">
					<td style="padding-left:10px;">
						<img align="absmiddle" src="<%=request.getContextPath()%>/themes/images/jtree/<%=dat.getChildDepartSize()>0?(i==list.size()-1?"plusbottom.gif":"plus.gif"):(i==list.size()-1?"joinbottom.gif":"join.gif")%>"/>
						<%=dat.getName()%>
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
		  </td>
		  <td width="78%" align="center" valign="top">
			<iframe src="<%=request.getContextPath()%>/itil/accesscontrol/user_list.jsp" name="addframe" width="100%" height="100%" align="top" scrolling="auto" frameborder="0"></iframe>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
</table>
<script language="javascript" type="text/javascript">
<!--//
function $(pID){
	return document.getElementById(pID);
}	

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
		url=this.location.href.replace("user_listTree.jsp","select/departselectorXml.jsp");
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
			if(pos.isFinal)
				imgs[pos2].src="<%=request.getContextPath()%>/themes/images/jtree/empty.gif" ;
			else			
				imgs[pos2].src="<%=request.getContextPath()%>/themes/images/jtree/line.gif" ;
		}
		for(var pos=imgs.length;pos>0;pos--)
			c1.insertBefore(imgs[pos-1]);
		img=document.createElement("IMG");
		img.align="absmiddle";
		img.src="<%=request.getContextPath()%>/themes/images/jtree/"+(dt.hasMoreChildren?(index==list.length-1?"plusbottom.gif":"plus.gif"):(index==list.length-1?"joinbottom.gif":"join.gif"));
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
		//createTree();
		setTimeout("createTree()",10);
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
//-->
</script>
</body>
</html>
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