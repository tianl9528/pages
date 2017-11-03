<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.*"%>
<%@ page import="sunit.database.*"%>

<%
	long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
	long parentDepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getParentDepartId();
	String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();
	
	DAO dao = new DAO();
	try {
		dao.begin();
		DepartManager manager = new DepartManager();
		String basePath=request.getContextPath();
		String baseImg=getPic(basePath,"base.gif");
		String folderImg=getPic(basePath,"folder.gif");
		String folderOpenImg=getPic(basePath,"folderopen.gif");
		String joinImg=getPic(basePath,"join.gif");
		String joinBottomImg=getPic(basePath,"joinbottom.gif");
		String minusImg=getPic(basePath,"minus.gif");
		String minusBottomImg=getPic(basePath,"minusbottom.gif");
		String plusImg=getPic(basePath,"plus.gif");
		String plusBottomImg=getPic(basePath,"plusbottom.gif");
		String emptyImg=getPic(basePath,"empty.gif");
		String lineImg=getPic(basePath,"line.gif");
		String pageImg=getPic(basePath,"page.gif");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/themes/skin/itil/itil.css" type="text/css" title="more">
<title>部门列表</title>
</head>

<body>
<form name="thisForm">
<table width="640" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="<%=request.getContextPath()%>/themes/images/jtree/base.gif" class="image"/>组织结构</td>
  </tr>
<%
	List list = DepartHelper.getTreeList(departId);
	if (list != null && list.size() > 0) {
		Depart depart=null;
		Depart depart1=null;
		for (int i = 0; i < list.size(); i++) {
			depart = (Depart) list.get(i);
  			out.println("<tr id=row"+depart.getId()+">");
			out.println("<td>");
			for(int k=0;k<depart.getLayer();k++){
				if(i==(list.size()-1)){
					out.println(joinBottomImg);
				}
				else{
					out.println(lineImg);
				}
			}
			if(i<list.size()-1){
				depart1=(Depart)list.get(i+1);
				if(depart1.getParentDepart().getId()==depart.getId()){
					out.println(folderOpenImg);
				}
				else{
					out.println(pageImg);
				}
			}
			else{
					out.println(pageImg);
			}
			out.println("<a href=\"javascript:showDetail('"+depart.getId()+"');\">");
			out.println(depart.getName());
			out.println("</a>");
			out.println("</td>");
  			out.println("</tr>");
		}
	}
%>
  <tr class="table_row3">
    <td>
		<input type="hidden" name="changedtr" value="10000"/>
	</td>
  </tr>
</table>
</form>
<script language="javascript" type="text/javascript">
function showDetail(id){
	$("row"+$("changedtr").value).className="";
	$("row"+id).className="table_row4";
	$("changedtr").value=id;
	window.parent.addframe.location.href="<%=request.getContextPath()%>/itil/accesscontrol/operate/depart_detail.jsp?id="+id;
}
function $(pID){
	return document.getElementById(pID);
}	
</script>
</body>
</html>
<%
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	finally {
		dao.close();
	}
%>
<%!
	private void readChildTree(StringBuffer buffer, long parentDepartId,int layer, List list,int start) {
		Depart depart=null;
		for (int k = start+1; k < list.size(); k++) {
			depart = (Depart) list.get(k);
			if (depart.getParentDepart().getId() == parentDepartId&&depart.getLayer()==layer+1) {
				buffer.append("<level" + depart.getLayer() + " parentTypeID=\"" + (depart.getParentDepart() == null ? String.valueOf(-1) : String.valueOf(depart.getParentDepart().getId())) + "\" caption=\"" + depart.getName() + "\" id=\"" + depart.getId() + "\" explain=\"" + depart.getName() + "\">");
				readChildTree(buffer,depart.getId(),depart.getLayer(), list,k);
				buffer.append("</level" + depart.getLayer() + ">");
			}
		}
		//return buffer;
	}
	
	private String getPic(String base,String file){
		return "<img src=\""+base+"/themes/images/jtree/"+file+"\" class=\"image\"/>";
	}
%>