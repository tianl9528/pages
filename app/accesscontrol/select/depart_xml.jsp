<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="sunit.accesscontrol.manager.*"%>
<%@ page import="sunit.accesscontrol.object.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%@ page import="java.util.List"%>
<%@ page import="sunit.database.*"%>
<%
	long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId();
	long parentDepartId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getParentDepartId();
	String departName=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartName();
	DAO dao = new DAO();
	try {
		dao.begin();
		DepartManager manager = new DepartManager();
%>

<?xml version="1.0" encoding="utf-8"?>
<depart caption="组织结构" icon="<%=request.getContextPath()%>/themes/images/jtree/base.gif"	explain="组织结构">
<%
		StringBuffer tree = new StringBuffer();
		/**
		 List list=manager.readAll();
		 if(list!=null&&list.size()>0){
		 int layer=0;
		 for(int i=0;i<list.size();i++){
		 Depart depart=(Depart)list.get(i);
		 if(depart.getParentDepart()==null){
		 depart.setLayer(layer);
		 tree.append("<level"+depart.getLayer()+" parentTypeID=\""+(depart.getParentDepart()==null?String.valueOf(-1):String.valueOf(depart.getParentDepart().getId()))+"\" caption=\""+depart.getName()+"\" id=\""+depart.getId()+"\" explain=\""+depart.getName()+"\">");
		 tree.append(readChildTree(depart));
		 tree.append("</level"+depart.getLayer()+">");
		 }
		 }
		 out.print(tree.toString());
		 }
		 **/
		/**
		 Depart depart=manager.readOne(departId);
		 int layer=0;
		 depart.setLayer(layer);
		 tree.append("<level"+depart.getLayer()+" parentTypeID=\""+(depart.getParentDepart()==null?String.valueOf(-1):String.valueOf(depart.getParentDepart().getId()))+"\" caption=\""+depart.getName()+"\" id=\""+depart.getId()+"\" explain=\""+depart.getName()+"\">");
		 tree.append(readChildTree(depart));
		 tree.append("</level"+depart.getLayer()+">");
		 out.print(tree.toString());
		 */
		List list = DepartHelper.getTreeList(departId);
		if (list != null && list.size() > 0) {
			Depart depart=null;
			for (int i = 0; i < list.size(); i++) {
				depart = (Depart) list.get(i);
				if(depart.getLayer()==1&&(depart.getParentDepart()==null||depart.getParentDepart().getId()==0)){
					tree.append("<level" + depart.getLayer() + " parentTypeID=\"" + (depart.getParentDepart() == null ? String.valueOf(-1) : String.valueOf(depart.getParentDepart().getId())) + "\" caption=\"" + depart.getName() + "\" id=\"" + depart.getId() + "\" explain=\"" + depart.getName() + "\">");
					readChildTree(tree,depart.getId(),depart.getLayer(), list,i);
					tree.append("</level" + depart.getLayer() + ">");
				}
			}
		}
		out.print(tree.toString());
%>
</depart>
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

	/**
	 private StringBuffer readChildTree(Depart depart){
	 StringBuffer buffer=new StringBuffer();
	 if(depart.getChildDepart()!=null&&depart.getChildDepart().size()>0){
	 Iterator it=depart.getChildDepart().iterator();
	 while(it.hasNext()){
	 Depart temp=(Depart)it.next();
	 temp.setLayer(depart.getLayer()+1);
	 buffer.append("<level"+temp.getLayer()+" parentTypeID=\""+(temp.getParentDepart()==null?String.valueOf(-1):String.valueOf(temp.getParentDepart().getId()))+"\" caption=\""+temp.getName()+"\" id=\""+temp.getId()+"\" explain=\""+temp.getName()+"\">");
	 buffer.append(readChildTree(temp));
	 buffer.append("</level"+temp.getLayer()+">");
	 }
	 }
	 return buffer;
	 }
	 */%>
