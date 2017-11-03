<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="java.util.*" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.accesscontrol.*"%>
<%
  long id;
  String name;
  String code;
  long parentDepartId;
  String phone;
  String email;
  String address;
  String note;
  int type;
  String sid;
  String startTime;
  String endTime;
  String[] entityids=null;
  String str_entityids;
  String[] roleids;
  String msg;
  String url="/itil/accesscontrol/depart_list.jsp";
  boolean blean=false;
  
  request.setCharacterEncoding("utf-8");
  
  id = Long.parseLong((request.getParameter("id")==null||request.getParameter("id").length()<=0)?"0":request.getParameter("id"));
  name = (request.getParameter("name")==null||request.getParameter("name").length()<=0)?"":request.getParameter("name");
  code = (request.getParameter("code")==null||request.getParameter("code").length()<=0)?"":request.getParameter("code");
  parentDepartId = Long.parseLong((request.getParameter("parentDepartId")==null||request.getParameter("parentDepartId").length()<=0)?"0":request.getParameter("parentDepartId"));
  phone = (request.getParameter("phone")==null||request.getParameter("phone").length()<=0)?"":request.getParameter("phone");
  email = (request.getParameter("email")==null||request.getParameter("email").length()<=0)?"":request.getParameter("email");
  address = (request.getParameter("address")==null||request.getParameter("address").length()<=0)?"":request.getParameter("address");
  note = (request.getParameter("note")==null||request.getParameter("note").length()<=0)?"":request.getParameter("note");
  type = Integer.parseInt((request.getParameter("departType")==null||request.getParameter("departType").length()<=0)?"0":request.getParameter("departType"));
  sid = (request.getParameter("sid")==null||request.getParameter("sid").length()<=0)?"":request.getParameter("sid");
  //sid = String.valueOf(id);
  startTime = (request.getParameter("starttime")==null||request.getParameter("starttime").length()<=0)?"":request.getParameter("starttime");
  endTime = (request.getParameter("endtime")==null||request.getParameter("endtime").length()<=0)?"":request.getParameter("endtime");
  //entityids = request.getParameterValues("entityid");
  str_entityids=request.getParameter("saveIds");
  if(!str_entityids.equals(""))entityids=str_entityids.split("\\|\\|"); 
  roleids = request.getParameterValues("roleid");

  DepartManager manager=new DepartManager();

  Depart dat=new Depart();
  if(id!=0){
 	dat=manager.readOne(id);
  }
  dat.setName(name);
  dat.setDepartCode(code);
  if(parentDepartId!=0){
 	Depart parentDepart=new Depart();
 	parentDepart.setId(parentDepartId);
 	dat.setParentDepart(parentDepart);
  }
  dat.setEmailList(email);
  dat.setPhoneList(phone);
  dat.setAddress(address);
  dat.setStartTime(startTime);
  dat.setEndTime(endTime);
  dat.setSid(sid);
  dat.setNote(note);
  dat.setDepartType(type);
  
  if(entityids!=null&&entityids.length>0){
  	Set entitySet=new HashSet();
  	for(int i=0;i<entityids.length;i++){
		String str_entityId="0";
		for(int j=0;j<=i;j++){
			if(entityids[j].equals(entityids[i])&&i!=j){
				break;
			}
			str_entityId=entityids[i];
		}
		if(str_entityId.equals("0")) continue;
  		Entity entity=new Entity();
  		entity.setId(Long.parseLong(str_entityId));
  		entitySet.add(entity);
  	}
  	dat.setEntities(entitySet);
  }
  else{
  	dat.setEntities(null);
  }
  
  if(roleids!=null&&roleids.length>0){
  	Set roleSet=new HashSet();
  	for(int i=0;i<roleids.length;i++){
  		Role role=new Role();
  		role.setId(Long.parseLong(roleids[i]));
  		roleSet.add(role);
  	}
  	dat.setRoles(roleSet);
  }
  else{
  	dat.setRoles(null);
  }

	if(id!=0)
	{
		if(manager.edit(dat))
		{
		    msg="部门修改成功！点击“确定”转到部门一览页面。";
		}
		else
		{
		    msg="部门修改失败！请重新操作或联系系统管理员！点击“确定”转到部门一览页面。";
		}
	}
	else
	{
		id=manager.add(dat);
		if(id!=0)
		{
			
		    msg="部门新增成功！点击“确定”转到部门一览页面。";
		}
		else
		{
		    msg="部门新增失败！请重新操作或联系系统管理员！点击“确定”转到部门一览页面。";
		}
	}
	
	//重置departIds session的值
	long departId=((Info)session.getAttribute(Config.KEY_LOGIN_INFO)).getDepartId(); 
	String departIds = DepartHelper.readChildDepartId(departId);
	if(departIds.length()>0){
		departIds = departIds.substring(1);
	}else{
		departIds = "-1";//如果没有子部门，则设置为－1
	}
	departIds = "("+departIds+")";
	session.setAttribute(Config.KEY_DEPARTIDS,departIds);
	
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.parent.navigate("<%=request.getContextPath()%><%=url%>?id=<%=id%>");
</script>
<body>
</body>
</html>

