$(function(){
			var options={
				animation:true,
				trigger:'hover', //触发tooltip的事件
				//placement:"right"
			}
			$('.atip').tooltip(options);
			
		});


/**
 * 查看详细求职信息
 * @param thisobj
 */
function jobseekDetail(thisobj){
	var seekername = $(thisobj).closest('.publishedList').find(".seekerHidden").val();
	
	var expsalary = $(thisobj).closest('.publishedList').find(".expsalaryHidden").val();
	
	var expjob    = $(thisobj).closest('.publishedList').find(".expjobHidden").val();
	var appdegree = $(thisobj).closest('.publishedList').find(".appdegreeHidden").val();
	var appmajor  = $(thisobj).closest('.publishedList').find(".appmajorHidden").val();
	var appschool = $(thisobj).closest('.publishedList').find(".appschoolHidden").val();
	var appaddress = $(thisobj).closest('.publishedList').find(".appaddressHidden").val();
	var apppostcode = $(thisobj).closest('.publishedList').find(".apppostcodeHidden").val();
	var appphone = $(thisobj).closest('.publishedList').find(".appphoneHidden").val();
	var appmobile = $(thisobj).closest('.publishedList').find(".appmobileHidden").val();
	var apppubdate = $(thisobj).closest('.publishedList').find(".apppubdateHidden").val();
	
	
	var tableDiv = "";
	tableDiv +='<div>';
	tableDiv += '<table border="0" class="table">';
	tableDiv += '<tr style="border-bottom: solid 1px blue;">';
	tableDiv += '<td width="100px" align="left"><span style="font-weight:bold;color:#ff9955; ">求职者</span></td>';
	tableDiv += '<td width="150px" align="left" valign="middle"><span style="font-weight:bold;color:#ff9955; ">' + seekername+  '</span></td>';
	tableDiv += '<td width="100px">&nbsp;</td>';
	tableDiv += '<td width="200px">&nbsp;</td>';
	tableDiv += '</tr>';
	tableDiv += '<tr>';
	tableDiv += '<td class="tditem">学历</td>';
	tableDiv += '<td style="border-right: solid 1px #8B8B83;">' + appdegree + ' </td>';
	tableDiv += '<td>专业</td>';
	tableDiv += '<td>'+ appmajor + '</td>';
	tableDiv += '</tr>';
	tableDiv += '<tr>';
	tableDiv += '<td>毕业院校</td>';
	tableDiv += '<td style="border-right: solid 1px #8B8B83;">' + appschool+　'</td>';
	tableDiv += '<td>现居地址</td>';
	tableDiv += '<td>'+appaddress +'</td>';
	tableDiv += '</tr>';
	tableDiv += '<tr>';
	tableDiv += '<td>求职岗位</td>';
	tableDiv += '<td style="border-right: solid 1px #8B8B83;">' + expjob +'</td>';
	tableDiv += '<td>期望待遇</td>';
	tableDiv += '<td>' + expsalary + '</td>';
	tableDiv +='</tr>';
	tableDiv += '<tr>';
	tableDiv += '<td>邮编</td>';
	tableDiv += '<td style="border-right: solid 1px #8B8B83;">' + apppostcode + '</td>';
	tableDiv += '<td>电话</td>';
	tableDiv += '<td>'+ appphone +'</td>';
	tableDiv += '</tr>';
	tableDiv += '<tr>';
	tableDiv += ' <td>手机</td>';
	tableDiv += '<td style="border-right: solid 1px #8B8B83;">' + appmobile +'</td>';
	tableDiv += '<td>发布时间</td>';
	tableDiv += '<td>'+ apppubdate+ '</td>';
	tableDiv += '</tr>';
	tableDiv += '</table></div>';
	
	//调用dialog显示
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "求职详情",
				modal:true
			}).show();
}

/**
 * 查看农产品供应详细信息
 * @param thisobj
 */
function productSupplyDetail(thisobj){
	
	var proSupPubdate = $(thisobj).closest('.spl').find(".proSupPubdateHidden").val();
	var proSupType = $(thisobj).closest('.spl').find(".proSupTypeHidden").val();
	var proSupName = $(thisobj).closest('.spl').find(".proSupNameHidden").val();
	var proSupContent = $(thisobj).closest('.spl').find(".proSupContentHidden").val();
	var proSupPrice = $(thisobj).closest('.spl').find(".proSupPriceHidden").val();
	var proSupNum = $(thisobj).closest('.spl').find(".proSupNumHidden").val();
	var proSupExpDate = $(thisobj).closest('.spl').find(".proSupExpDateHidden").val();
	var proSupFactory = $(thisobj).closest('.spl').find(".proSupFactoryHidden").val();
	var proSupContact = $(thisobj).closest('.spl').find(".proSupContactHidden").val();
	var proSupAddress = $(thisobj).closest('.spl').find(".proSupAddressHidden").val();
	var proSupPhone = $(thisobj).closest('.spl').find(".proSupPhoneHidden").val();
	var proSupEmail = $(thisobj).closest('.spl').find(".proSupEmailHidden").val();
	var proSupPostcode = $(thisobj).closest('.spl').find(".proSupPostcodeHidden").val();
	var proSupPhotoUrl = $(thisobj).closest('.spl').find(".proSupPhotoUrlHidden").val();
	
	var tableDiv = "";
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +='<td width="220" rowspan="7" align="center" valign="middle"><img style="width:220px;height:240px" src="' + proSupPhotoUrl+ '" onerror="this.src=\' ' +proSupPhotoUrl + '/theme/images/de_user.gif\' "/></td>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">产品类型：</td>';
	tableDiv +=    ' <td width="180">'+ proSupType + '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">产品名：</td>';
	tableDiv +=     '<td width="150">' + proSupName +'</td>';
	
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">价格：</td>';
	tableDiv +=     '<td width="180">' + proSupPrice +'&nbsp;RMB' + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">产量：</td>';
	tableDiv +=     '<td>'+ proSupNum+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">发布时间：</td>';
	tableDiv +=     '<td width="180">'+ proSupPubdate + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">供应截止时间：</td>';
	tableDiv +=     '<td>'+ proSupExpDate +'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">厂家：</td>';
	tableDiv +=     '<td width="180">'+ proSupFactory+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人：</td>';
	tableDiv +='    <td>'+ proSupContact +'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td align="left" valign="middle">联系地址：</td>';
	tableDiv +=     '<td>'+ proSupAddress +'</td>';
	tableDiv +=     '<td align="left" valign="middle">邮编：</td>';
	tableDiv +=     '<td>' + proSupPostcode + '</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱：</td>';
	tableDiv +=     '<td width="180">'+ proSupEmail + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td>' + proSupPhone　+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">产品描述：</td>';
	tableDiv +=     '<td colspan="3">'+ proSupContent +'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '</table>';
	
	
	//调用dialog显示
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "农产品供应详情",
			}).show();
	
}

/*edited by lijianmin begin-------------------------------------------------*/
function productBuyDetail(thisobj)
{
	var tableDiv="";
	var pubDate=$(thisobj).closest('.sbl').find('.proBuyPubDateHidden').val();
	var expDate=$(thisobj).closest('.sbl').find('.proBuyExpDateHidden').val();
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	//tableDiv +='<td width="220" rowspan="7" align="center" valign="middle">
	//	<img style="width:220px;height:240px" src="' + proSupPhotoUrl+ '" onerror="this.src=\' ' +proSupPhotoUrl + '/theme/images/de_user.gif\' "/></td>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布时间：</td>';
	tableDiv +=    ' <td width="180">'+ pubDate+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">截止时间：</td>';
	tableDiv +=     '<td width="150">' +expDate +'</td>';
	
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">产品名称：</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.sbl').find('.proBuyNameHidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">产品描述：</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.sbl').find(".proBuyContentHidden").val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">产品价格：</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.sbl').find('.proBuyPriceHidden').val()+'&nbsp;RMB'+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">产品数量</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.sbl').find('.proBuyNumHidden') .val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">物流方式</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.sbl').find('.proBuyLogisticsHidden'  ).val() + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">生产厂家</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.sbl').find('.proBuyFactoryHidden'  ) .val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">产品质量要求</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.sbl').find('.proBuyCertifyHidden'  ) .val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系方式</td>';
	tableDiv +=     '<td>'+ $(thisobj).closest('.sbl').find('.proBuyContactHidden'  ).val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.sbl').find('.proBuyAddressHidden'  ).val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮政编码</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.sbl').find( '.proBuyPostCodeHidden' ) .val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">电话</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.sbl').find('.proBuyPhoneHidden'  ).val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮箱地址</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.sbl').find('.proBuyEmailHidden'  ) .val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "农产品需求详情",
			}).show();
	
}


function techSupplyDetail(thisobj)
{
	var tableDiv="";
	
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布时间</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.tsl').find('.tsPubDatehidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">截止时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.tsl').find('.tsExpDatehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">技术名称</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tsl').find('.tsNamehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">技术信息类型</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.tsTechTypehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="200" align="left" valign="middle">技术信息描述</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.tsContenthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">技术领域</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tsl').find('.tsAreahidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">相关农产品类型</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.proTypehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">技术来源</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tsl').find('.tsSourcehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">技术获取渠道</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.tsGetwayhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">相关技术</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tsl').find('.tsRelatedhidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.tsContacthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.tsl').find('.tsAddresshidden').val() + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮编</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.tsPostCodehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tsl').find('.tsPhonehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tsl').find('.tsEmailhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "技术供应详情",
			}).show();
}
/*edited by lijianmin end-------------------------------------------------*/


/*add by cyq 2014-5-14 */
function techDemaDetail(thisobj)
{
	var tableDiv="";
	
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布时间</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.tdl').find('.tdPubDatehidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">截止时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.tdl').find('.tdExpDatehidden').val()+'</td>';
	
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">技术名称</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.tdl').find('.tdNamehidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">技术类型</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.tdl').find('.tdTechTypehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="50" align="left" valign="middle">技术信息描述</td>';
	tableDiv +=     '<td colspan="3">'+$(thisobj).closest('.tdl').find('.tdContenthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">技术领域</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tdl').find('.tdAreahidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">相关农产品类型</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tdl').find('.proTypehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tdl').find('.tdContacthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.tdl').find('.tdAddresshidden').val() + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮编</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tdl').find('.tdPostCodehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.tdl').find('.tdPhonehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.tdl').find('.tdEmailhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "技术需求详情",
			}).show();
}


function logiSupplyDetail(thisobj)
{
	var tableDiv="";
	
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布时间</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.lsl').find('.lsPubDatehidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">发车时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.lsl').find('.lsDepartureTimehidden').val()+'</td>';
	
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">出发地</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.lsl').find('.lsStartPlacehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">到达地</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.lsl').find('.lsArrivePlacehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">途经地</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.lsl').find('.lsWayPointhidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">价格</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.lsl').find('.lsPricehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">车辆识别码</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.lsl').find('.lsIdentiCodehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">详细说明</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.lsl').find('.lsExplanationhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.lsl').find('.lsContacthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.lsl').find('.lsAddresshidden').val() + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮编</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.lsl').find('.lsPostCodehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.lsl').find('.lsPhonehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.lsl').find('.lsEmailhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "物流供应详情",
			}).show();
}


function logiDemaDetail(thisobj)
{
	var tableDiv="";
	
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布时间</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.ldl').find('.ldPubDatehidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">截止时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.ldl').find('.ldExpDatehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">出发地</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.ldl').find('.ldStartPlacehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">到达地</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldArrivePlacehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">货物名称</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.ldl').find('.ldGoodsNamehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">货物类型</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldGoodsTypehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="50" align="left" valign="middle">数量</td>';
	tableDiv +=     '<td width="90">' + $(thisobj).closest('.ldl').find('.ldCountTypehidden').val()+ '</td>';
	tableDiv +=    ' <td width="50" align="left" valign="middle">体积</td>';
	tableDiv +=     '<td width="90">' + $(thisobj).closest('.ldl').find('.ldVolumeTypehidden').val()+ '</td>';
	tableDiv +=     '<td width="50" align="left" valign="middle">重量</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldLoadTypehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">价格</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.ldl').find('.ldPriceTypehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">要求</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldRequirehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">运输类型</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.ldl').find('.ldTransTypehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">详细说明</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldExplanationhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldContacthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.ldl').find('.ldAddresshidden').val() + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮编</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldPostCodehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.ldl').find('.ldPhonehidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.ldl').find('.ldEmailhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "物流需求详情",
			}).show();
}


/**
 * 查看招商代理详细信息
 * @param thisobj
 */
function investDetail(thisobj){
	
	var inPubdate = $(thisobj).closest('.inl').find(".inPubdateHidden").val();
	var inCertify = $(thisobj).closest('.inl').find(".inCertifyHidden").val();
	var inQuality = $(thisobj).closest('.inl').find(".inQualityHidden").val();
	var inName = $(thisobj).closest('.inl').find(".inNameHidden").val();
	var inContent = $(thisobj).closest('.inl').find(".inContentHidden").val();
	var inPrice = $(thisobj).closest('.inl').find(".inPriceHidden").val();
	var inNum = $(thisobj).closest('.inl').find(".inNumHidden").val();
	var inExpDate = $(thisobj).closest('.inl').find(".inExpDateHidden").val();
	var inFactory = $(thisobj).closest('.inl').find(".inFactoryHidden").val();
	var inContact = $(thisobj).closest('.inl').find(".inContactHidden").val();
	var inAddress = $(thisobj).closest('.inl').find(".inAddressHidden").val();
	var inPhone = $(thisobj).closest('.inl').find(".inPhoneHidden").val();
	var inEmail = $(thisobj).closest('.inl').find(".inEmailHidden").val();
	var inPostcode = $(thisobj).closest('.inl').find(".inPostcodeHidden").val();
	var inPhotoUrl = $(thisobj).closest('.inl').find(".inPhotoUrlHidden").val();
	
	var tableDiv = "";
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +='<td width="220" rowspan="7" align="center" valign="middle"><img style="width:220px;height:240px" src="' + inPhotoUrl+ '" onerror="this.src=\' ' +inPhotoUrl + '/theme/images/de_user.gif\' "/></td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">产品名：</td>';
	tableDiv +=     '<td width="150">' + inName +'</td>';
	
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">价格：</td>';
	tableDiv +=     '<td width="180">' + inPrice +'&nbsp;RMB' + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">产量：</td>';
	tableDiv +=     '<td>'+ inNum+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">发布时间：</td>';
	tableDiv +=     '<td width="180">'+ inPubdate + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">供应截止时间：</td>';
	tableDiv +=     '<td>'+ inExpDate +'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">产品认证：</td>';
	tableDiv +=     '<td width="180">'+ inCertify+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">质量认证：</td>';
	tableDiv +='    <td>'+ inQuality +'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">厂家：</td>';
	tableDiv +=     '<td width="180">'+ inFactory+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人：</td>';
	tableDiv +='    <td>'+ inContact +'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td align="left" valign="middle">联系地址：</td>';
	tableDiv +=     '<td>'+ inAddress +'</td>';
	tableDiv +=     '<td align="left" valign="middle">邮编：</td>';
	tableDiv +=     '<td>' + inPostcode + '</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱：</td>';
	tableDiv +=     '<td width="180">'+ inEmail + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td>' + inPhone　+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="center" valign="middle">产品描述：</td>';
	tableDiv +=     '<td width="280">'+ inContent +'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=   '</table>';
	
	
	//调用dialog显示
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "招商代理详情",
			}).show();
	
}

/**
 * 企业招聘详情
 * @param thisobj
 */

function recruitDetail(thisobj)
{
	var tableDiv="";
	
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布时间</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.rl').find('.pubdatehidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">截止时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.rl').find('.enddatehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">职位名称</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.rl').find('.jobhidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">招聘人数</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.rl').find('.numhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">工作性质</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.rl').find('.propertieshidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">信息来源</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.rl').find('.resourcehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="50" align="left" valign="middle">待遇</td>';
	tableDiv +=     '<td width="90">' + $(thisobj).closest('.rl').find('.treatmenthidden').val()+ '</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">工作描述</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.rl').find('.jobDetailhidden').val()+ '</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">工作要求</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.rl').find('.jobRequirehidden').val()+ '</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系人</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.rl').find('.contacthidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=     '<td width="180">' +$(thisobj).closest('.rl').find('.addresshidden').val() + '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">邮编</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.rl').find('.postcodehidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=     '<td width="180">' + $(thisobj).closest('.rl').find('.phoneNumberhidden').val()+ '</td>';
	tableDiv +=     '<td width="100" align="left" valign="middle">联系邮箱</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.rl').find('.emailhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=     '<td width="100" align="left" valign="middle">备注</td>';
	tableDiv +=     '<td>'+$(thisobj).closest('.rl').find('.remarkhidden').val()+'</td>';
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "企业招聘详情",
			}).show();
}

/**
 * 企业快讯详情
 * @param thisobj
 */

function cnDetail(thisobj)
{
	var tableDiv="";
	
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="200" align="left" valign="middle">发布时间</td>';
	tableDiv +=    ' <td width="380">'+ $(thisobj).closest('.cnl').find('.pubdatehidden').val()+ '</td>';
	tableDiv +=   '</tr>';
	
	
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="200" align="left" valign="middle">标题</td>';
	tableDiv +=     '<td width="380">' + $(thisobj).closest('.cnl').find('.tittlehidden').val()+ '</td>';
	tableDiv +=   '</tr>';
	
	tableDiv +=   '<tr>';
	tableDiv +=    ' <td width="200" align="left" valign="middle">内容</td>';
	tableDiv +=     '<td width="380">' + $(thisobj).closest('.cnl').find('.contenthidden').val()+ '</td>';
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
		    {
				id:'dlg',
				title : "企业快讯详情",
			}).show();
}

function trainDetail(thisobj){
	var tableDiv="";
	tableDiv += '<table class="table" width="100%" border="0">';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">发布机构</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.exidhidden').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">发布时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.tdpubdate').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">技术领域</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.istypeid').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">农产品</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.pid').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">培训目的</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.target').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">培训方式</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.ttype').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">开始时间</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.tbegin').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">结束时间</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.tend').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">培训费用</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.tfee').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">联系人</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.tcontact').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">联系地址</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.taddress').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">邮编</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.tpostcode').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="middle">联系电话</td>';
	tableDiv +=    ' <td width="180">'+ $(thisobj).closest('.trainList').find('.tphone').val()+ '</td>';
	tableDiv +=     '<td width="120" align="left" valign="middle">电子邮箱</td>';
	tableDiv +=     '<td width="150">' + $(thisobj).closest('.trainList').find('.temail').val()+'</td>';
	tableDiv +=   '</tr>';
	tableDiv +=  ' <tr>';
	tableDiv +=   '  <td width="100" align="left" valign="top">培训内容</td>';
	tableDiv +=    ' <td colspan="3"><div style="width:450px;height:100px;">'+ $(thisobj).closest('.trainList').find('.tcontent').val()+ '</div></td>';
	
	tableDiv +=   '</tr>';
	
	tableDiv+='</table>';
	new Dialog(tableDiv,
	{
		id:"dlg",tittle:"培训信息详情"
	}		
	).show();
}


 