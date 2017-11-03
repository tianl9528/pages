<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="java.util.*" %>
<%
  long id;
  String name;
  String train;
  long groupid = Long.parseLong((request.getParameter("groupid")==null||request.getParameter("groupid").length()<=0)?"":request.getParameter("groupid"));
  long parentNodeId;
  long entityId;
  String url="/app/accesscontrol/node_list.jsp?groupid="+groupid;
  String msg;
  boolean blean=false;
  
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong((request.getParameter("id")==null||request.getParameter("id").length()<=0)?"0":request.getParameter("id"));
  name = (request.getParameter("name")==null||request.getParameter("name").length()<=0)?"":request.getParameter("name");
  train = (request.getParameter("train")==null||request.getParameter("train").length()<=0)?"":request.getParameter("train");
  parentNodeId = Long.parseLong((request.getParameter("parentNodeId")==null||request.getParameter("parentNodeId").length()<=0)?"0":request.getParameter("parentNodeId"));
  entityId = Long.parseLong((request.getParameter("entityId")==null||request.getParameter("entityId").length()<=0)?"0":request.getParameter("entityId"));

  NodeGroupManager nodeGroupManager=new NodeGroupManager();
  NodeGroup group = nodeGroupManager.readOne(groupid);
  NodeManager manager=new NodeManager(group);

  Node dat=new Node();
  if(id!=0){
 	dat=manager.readOne(id);
  }
  dat.setName(name);
  dat.setTrain(train);
  
  dat.setNodeGroup(group);
  
  if(parentNodeId!=0){
  	Node parentNode=new Node();
	parentNode.setId(parentNodeId);
	dat.setParentNode(parentNode);
  }
  else{
	dat.setParentNode(null);
  }
  
  if(entityId!=0){
  	Entity entity=new Entity();
	entity.setId(entityId);
	dat.setEntity(entity);
  }
  else{
  	dat.setEntity(null);
  }
  
	if(id!=0)
	{
		if(manager.edit(dat))
		{
		    msg="菜单修改成功！点击“确定”转到菜单一览页面。";
		}
		else
		{
		    msg="菜单修改失败！请重新操作或联系系统管理员！点击“确定”转到菜单一览页面。";
		}
	}
	else
	{
		id=manager.add(dat);
		if(id!=0)
		{
			
		    msg="菜单新增成功！点击“确定”转到菜单一览页面。";
		}
		else
		{
		    msg="菜单新增失败！请重新操作或联系系统管理员！点击“确定”转到菜单一览页面。";
		}
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;菜单管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="javascript" type="text/javascript">
//window.alert("<%=id%>");
window.alert("<%=msg%>");
window.parent.location.href="<%=request.getContextPath()%><%=url%>";
</script>
<body>
</body>
</html>
