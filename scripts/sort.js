/*
function init(column_param,sort_param,condition_param){
	createElement("column",column_param);
	createElement("sort",sort_param);	
	var showStr="";
	if($("sort").value=="desc"){
		showStr="&darr;";
	}
	if($("sort").value=="asc"){
		showStr="&uarr;";
	}
	if($("column").value!=""){
		$($("column").value).innerHTML+=showStr;
	}
	document.thisForm.condition.value=condition_param;
	createElement("condition",document.thisForm.condition.value);
	createElement("search","search");
}

function init(column_param,sort_param){
	createElement("column",column_param);
	createElement("sort",sort_param);	
	var showStr="";
	if($("sort").value=="desc"){
		showStr="<font color='red'>&darr;</font>";
	}
	if($("sort").value=="asc"){
		showStr="<font color='red'>&uarr;</font>";
	}
	if($("column").value!=""){
		$($("column").value).innerHTML+=showStr;
	}
	createElement("search","search");
}

function tdClick(tdSelf){
	if($("sort").value==""||$("sort").value=="asc"||$("column").value!=tdSelf.id){
		$("sort").value="desc";
	}else{
		$("sort").value="asc";
	}
	$("column").value=tdSelf.id;
	document.paginationForm.submit();
}

function $(elementName){
	return document.getElementById(elementName);
}
*/
function createElement(name,value){
	var aElement=document.createElement("input");
	aElement.type="hidden";
  	aElement.id=name;
	aElement.name=name;
  	aElement.value=value;
  	document.getElementById("paginationForm").appendChild(aElement);
}

function createElement(name,value,formname){
	var aElement=document.createElement("input");
	aElement.type="hidden";
  	aElement.id=name;
	aElement.name=name;
  	aElement.value=value;
  	document.getElementById(formname).appendChild(aElement);
}
