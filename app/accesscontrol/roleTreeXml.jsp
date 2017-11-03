<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import = "sunit.database.*"%>
<%@ page import = "sunit.accesscontrol.manager.RoleTreeXml"%>
<%@ page import = "sunit.accesscontrol.object.Node"%>
<%@ page import = "java.util.*"%>
<%@ include file="/themes/common/inc/itil.inc" %>
<% response.setDateHeader("Expires",0);   
   response.setHeader("Cache-Control","no-cache");   
   response.setHeader("Cache-Control","no-store"); 
   DAO dao = new DAO(); 
   try{ 
   	   dao.begin();
	   RoleTreeXml roleTreeXml=new RoleTreeXml();
	   List list=roleTreeXml.getData("1");
   
%>
<%!
	 private String showTree(List set) {
        StringBuffer show = new StringBuffer("<COMMONMENU id='main' showSubItem='true' name='权限管理'>\n");
        int lay = 0;
        getTypeTree(set,show,lay);
        show.append("</COMMONMENU>\n");
        return show.toString();
    }
%>
<%!
     private void getTypeTree(List set, StringBuffer show, int lay) {
        Node element = null;
		int tempLay=lay;
        if (set != null){
            for (Iterator iter = set.iterator(); iter.hasNext();) {
                element = (Node) iter.next();
                show.append("<SubMenuItem id='");
                show.append(element.getId());
				//是否可选。父类不可选
	/*			show.append(";");show.append(element.getParentKind()==null?false:true);*/
                show.append("' showSubItem='false' showRightMenu='false' name='");
				show.append(element.getName());
				show.append("' lay='");
				show.append(lay);
				if(null!=element.getEntity()){
					show.append("' entityId='");
					show.append(element.getEntity().getId());
				}else{
					show.append("' entityId='");
					show.append("0");
				}
                show.append("' action='#'>\n");
                if (element.getChildNode() != null){
					tempLay=(int)element.getId();
                	List children = new ArrayList(element.getChildNode());
                    getTypeTree(children, show, tempLay);
                }
                show.append("</SubMenuItem>\n");
            }
        }
    }
%>
<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/xsl" href="<%=request.getContextPath()%>/scripts/menu/menu.xsl"?>

<?xml-stylesheet type="text/xsl" href="menu.xsl"?>
<%String outTree=this.showTree(list);%>
<%=outTree%>
<%//System.out.println(outTree);
//pageContext.setAttribute("tree",thisPage.getList());
dao.close();
}catch(Exception e){
	e.printStackTrace();
}
%>
