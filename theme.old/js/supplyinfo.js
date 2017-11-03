$(document).ready(function(){
	var page;
	page=$('#spanpage span:eq(0)').text();
	page=page.replace(/\s+/g,"");
	SelectPage(page);
})

//根据page获得不同的select
function SelectPage(page){
	$('#selectpage').html($('#spanpage span:eq('+page+')').html());
}
