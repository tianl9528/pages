<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.* "%>
<%@ page import="sunit.accesscontrol.manager.*" %>
<%@ page import="sunit.accesscontrol.object.*" %>
<%@ page import="sunit.database.*"%>
<%@ page import="sunit.util.encrypt.MD5"%>
<%@ page import="sunit.util.eip.EipWebService"%>
<%
  long id;
  String name;
  String password;
  String fistName;
  String lastName;
  String nikName;
  long jobId;
  String phoneList;
  String emailList;
  String sid;
  String address;
  //String departIDs[]=new String[1];
  long departid;
  String note;
  String idCard;
  
  String sex;
  String birthday;
  String position;
  String jobcode;
  String category;
  String personsort;
  String personcode;
  String zzmm;
  String dzzw;
  String jszw;
  String grzwpr;
  String sort;
  
  String saveIds;
  
  String[] entityids=null;
  String[] roleids;
  boolean ok=false;
  String msg="";
  String url="user_list.jsp";
  request.setCharacterEncoding("utf-8");

  id=Long.parseLong(request.getParameter("id")==null?"0":request.getParameter("id"));
  name=request.getParameter("UserName")==null?"":request.getParameter("UserName");
  fistName=request.getParameter("FirstName")==null?"":request.getParameter("FirstName");
  lastName=request.getParameter("LastName")==null?"":request.getParameter("LastName");
  sid=request.getParameter("sid")==null?"":request.getParameter("sid");
  note=request.getParameter("Note")==null?"":request.getParameter("Note");
  jobId=Long.parseLong(request.getParameter("JobID")==null?"0":request.getParameter("JobID"));
  nikName=request.getParameter("NikName")==null?"":request.getParameter("NikName");
  phoneList=request.getParameter("PhoneList")==null?"":request.getParameter("PhoneList");
  password=request.getParameter( "Password" )==null?"":request.getParameter("Password");
  //MD5加密密码
  MD5 m = new MD5();
  password=m.getMD5ofStr(password);
  address=request.getParameter("Address")==null?"":request.getParameter("Address");
  //departIDs[0]=request.getParameter("DepartID");
  departid=Long.parseLong(request.getParameter("DepartID")==null?"0":request.getParameter("DepartID"));
  emailList=request.getParameter("EmailList")==null?"":request.getParameter("EmailList");
  idCard = request.getParameter("IDcard")==null?"":request.getParameter("IDcard");
  entityids = request.getParameterValues("entityid");
  roleids = request.getParameterValues("roleid");
  sex = request.getParameter("sex")==null?"":request.getParameter("sex");
  birthday = request.getParameter("birthday")==null?"":request.getParameter("birthday");
  position = request.getParameter("position")==null?"":request.getParameter("position");
  jobcode  = request.getParameter("jobcode") ==null?"":request.getParameter("jobcode");
  category = request.getParameter("category")==null?"":request.getParameter("category");
  personsort=request.getParameter("personsort")==null?"":request.getParameter("personsort");
  personcode=request.getParameter("personcode")==null?"":request.getParameter("personcode");
  zzmm = request.getParameter("zzmm")==null?"":request.getParameter("zzmm");
  dzzw = request.getParameter("dzzw")==null?"":request.getParameter("dzzw");
  jszw = request.getParameter("jszw")==null?"":request.getParameter("jszw");
  grzwpr=request.getParameter("grzwpr")==null?"":request.getParameter("grzwpr");
  sort = request.getParameter("sort")==null?"":request.getParameter("sort");
  
  saveIds=request.getParameter("saveIds");
  if(!saveIds.equals(""))entityids=saveIds.split("\\|\\|");

  UserManager manager=new UserManager();

  User user=new User();
  if(id!=0)
  	user=manager.readOne(id);
  user.setName(name);
  user.setFirstName(fistName);
  user.setLastName(lastName);
  user.setSid(sid);
  user.setNote(note);
  user.setSex(sex);
  if(birthday.length()>0){
  	user.setBirthday(birthday.replaceAll("-","")+"160000Z");
  }
  user.setPosition(position);
  user.setJobcode(jobcode);
  user.setCategory(category);
  user.setPersonsort(personsort);
  user.setPersoncode(personcode);
  user.setZzmm(zzmm);
  user.setDzzw(dzzw);
  user.setJszw(jszw);
  user.setGrzwpr(grzwpr);
  user.setSort(sort);
  
  if(jobId!=0){
	  Job job=new Job();
	  job.setId(jobId);
	  user.setJob(job);
  }
  else{
  	  user.setJob(null);
  }
  
  Depart depart=new Depart();
  depart.setId(departid);
  user.setDepart(depart);
  
  user.setNikName(nikName);
  user.setPhoneList(phoneList);
  
  if(id==0)
  	user.setPassword(password);
  
  user.setAddress(address);
  user.setEmailList(emailList);
  user.setIdCard(idCard);
  
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
  	user.setEntities(entitySet);
  }
  else{
  	user.setEntities(null);
  }
  
  if(roleids!=null&&roleids.length>0){
  	Set roleSet=new HashSet();
  	for(int i=0;i<roleids.length;i++){
  		Role role=new Role();
  		role.setId(Long.parseLong(roleids[i]));
  		roleSet.add(role);
  	}
  	user.setRoles(roleSet);
  }
  else{
  	user.setRoles(null);
  }

	if(id!=0)
	{
		ok=manager.edit(user);
		if(ok)
		{
			String eip = "[eip密码同步成功]";
			EipWebService eip2 = new EipWebService();
			String result = eip2.getfc("0045",user.getName(),user.getFirstName(),user.getPassword(),"update");
			if(!result.equals("0")){
				eip = "[eip密码同步失败]";
			}
			msg="用户修改成功"+eip+"！点击“确定”转到用户一览页面。";
		}
		else
		{
			msg="用户修改失败！请确认资料填写正确！点击“确定”转到用户一览页面。";
		}
	}
	else
	{
		User existUser=manager.getUserByName(name);
		if(existUser!=null)
		{
			msg="此用户名已存在！请重新填写用户名。";
		}
		else
		{
			id=manager.add(user);
			if(id!=0)
			{
				String eip = "[eip密码同步成功]";
				EipWebService eip2 = new EipWebService();
				String result = eip2.getfc("0045",user.getName(),user.getFirstName(),user.getPassword(),"add");
				if(!result.equals("0")){
					eip = "[eip密码同步失败]";
				}
				msg="用户新增成功"+eip+"！点击“确定”转到用户一览页面。";
			}
			else
			{
				msg="用户新增失败！请确认资料填写正确！点击“确定”转到用户一览页面。";
			}
		}
	}

%>
<html>
<head>
<title>权限管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<script language="javascript" type="text/javascript">
window.alert("<%=msg%>");
window.location.href="<%=url%>";
</script>
</body>
</html>