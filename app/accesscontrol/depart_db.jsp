<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%
  String id;
  String name;
  String code;
  String parentDepartId;
  String phone;
  String email;
  String address;
  String note;
  String type;
  String msg;
  String url="depart_list.jsp";
  boolean blean=false;
  
  request.setCharacterEncoding("utf-8");
  
  id = (request.getParameter("id")==null||request.getParameter("id").length()<=0)?"":request.getParameter("id");
  name = (request.getParameter("name")==null||request.getParameter("name").length()<=0)?"":request.getParameter("name");
  code = (request.getParameter("code")==null||request.getParameter("code").length()<=0)?"":request.getParameter("code");
  parentDepartId = (request.getParameter("parentDepartId")==null||request.getParameter("parentDepartId").length()<=0)?"":request.getParameter("parentDepartId");
  phone = (request.getParameter("phone")==null||request.getParameter("phone").length()<=0)?"":request.getParameter("phone");
  email = (request.getParameter("email")==null||request.getParameter("email").length()<=0)?"":request.getParameter("email");
  address = (request.getParameter("address")==null||request.getParameter("address").length()<=0)?"":request.getParameter("address");
  note = (request.getParameter("note")==null||request.getParameter("note").length()<=0)?"":request.getParameter("note");
  type = (request.getParameter("departType")==null||request.getParameter("departType").length()<=0)?"":request.getParameter("departType");

  Depart dat=new Depart();
  dat.setId(id);
  dat.setName(name);
  dat.setDepartCode(code);
  dat.setParentDepartID(parentDepartId);
  dat.setEmailList(email);
  dat.setPhoneList(phone);
  dat.setAddress(address);
  dat.setNote(note);
  dat.setDepartType(Integer.parseInt(type));

  Manager manager=ManagerFactory.getManager(ManagerFactory.Manager_Depart);
	if(id!=null&&id.length()>0)
	{
		if(manager.edit((Object)dat))
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
		if(manager.add((Object)dat).length()>0)
		{
		    msg="部门新增成功！点击“确定”转到部门一览页面。";
		}
		else
		{
		    msg="部门新增失败！请重新操作或联系系统管理员！点击“确定”转到部门一览页面。";
		}
	}
%>
<html>
<head>
<title>权限管理&gt;&gt;部门管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.navigate("<%=url%>");
</script>
<body>
</body>
</html>
