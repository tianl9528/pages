

var dlg;

var mapdlg; //地图 dialog

var lon='';
var lat='';


$(function(){
	var options={
		animation:true,
		trigger:'hover', //触发tooltip的事件
		//placement:"right"
	}
	$('.atip').tooltip(options);
	
	$(".mappop").popover({
		title: '在地图上标识您的企业位置', 
		content: '点此按钮打开地图，在地图上标识您的企业地址以便其他人查看!',
		trigger:'hover',
		placement:'bottom'
		});
	
	
	
	
});

function searchAddress(){
	 var addr = $('#test-address').val();
     if ( !addr || !addr.length ) return;
     $("#map").gmap3({
         getlatlng:{
           address:  addr,
           callback: function(results){
             if ( !results ) return;
          
             var map = $(this).gmap3({get:"map"});
             var marker = $(this).gmap3({get:"marker"});
             //alert(marker.getAddress());
             var infowindow = $(this).gmap3({get:"infowindow"});
             if (infowindow){
                 infowindow.open(map, marker);
                 infowindow.setContent(addr);
               } 
             marker.setPosition(results[0].geometry.location);
           
             map.setCenter(results[0].geometry.location);
           }
         }
         
       });
}
function editproduct(obj)
{
	var prodname = $(obj).closest('tr').find(".prodname").val();
	var prodannual =  $(obj).closest('tr').find(".prodannual").val();
	var proddescri =  $(obj).closest('tr').find(".proddescri").val();
	var prodid = $(obj).closest('tr').find(".prodid").val();
	

	var tableDiv = '';
	tableDiv += '<form class="form-horizontal" role="form" method="post"  action="featuredprod-update.action?prodid='+ prodid +'">';
	tableDiv += '<table border="0" class="table">';
		tableDiv += '<tr>';
		tableDiv += '<td width="133" height="40" align="center" valign="middle" class="title">特色产品名</td>';
		tableDiv += '<td width="300" height="40" align="center" valign="middle"><input name="featuredprod.prodname" type="text" class="form-control"  value="' + prodname + '"></td>';
		tableDiv += '</tr>';
		tableDiv += '<tr>';
		tableDiv += ' <td width="150" height="40" align="center" valign="middle" class="title">年产量</td>';
		tableDiv += ' <td width="300" height="40" align="center" valign="middle"><input type="text" name="featuredprod.annual" class="form-control"  value="' + prodannual + '"></td>';
		tableDiv += '</tr>'; 
		tableDiv += '<tr>';
		tableDiv += '<td width="150" height="61" align="center" valign="middle" class="title"><p>描述</p></td>';
		tableDiv += '<td width="300" height="61" align="center" valign="middle"><textarea name="featuredprod.proddescri" class="form-control" rows="8">'+proddescri+'</textarea></td>';
		tableDiv += '</tr>';
		tableDiv += ' <tr>';
		tableDiv += '<td width="150" height="40" align="center" valign="middle" class="title">宣传资料</td>';
	    tableDiv += '<td width="300" height="40" align="center" valign="middle">资料</td>';
		tableDiv += '</tr>';
		
		tableDiv += ' <tr>';
		tableDiv += '<td width="150" height="40" align="center" valign="middle">';
		tableDiv += '<button type="submit" class="btn btn-success ">确定</button>&nbsp;&nbsp;&nbsp;';
		tableDiv += '<button type="reset" class="btn btn-danger" onclick="hide(this)">取消</button>';
		tableDiv += '</td>';
		tableDiv += '</tr>';
		
		
		tableDiv += '</table>';
		
		
		//调用dialog显示
		dlg = new Dialog(tableDiv,
			    {
					id:'dlg',
					title : "特色产品信息编辑",
				});
		dlg.show();
}



//点击取消按钮 隐藏弹出层dialog
function hide(obj){
	dlg.hide();
}

//地图显示 

function showMap(){
	

	
	
	/*
	$("#test").dialog({
		height:700, 
		width:800,
		 modal: true,
		 buttons: {
		        "确定": function() {
		          $('#addressLat').attr('value',lat);
		          $('#addressLon').attr('value',lon);
		          $( this ).dialog( "close" );
		        },
		        "取消": function() {
		          $( this ).dialog( "close" );
		        }
		      },
	});
	*/
	var mapdiv = '';
	mapdiv +='<div id="test" >';
	
	mapdiv +='<p style="font-weight:bold;font-size:17px;color:#70A415">Tips : 请在地图上标识您的企业地址</p>';
	mapdiv +='<div id="ctrl"><span style="font-weight:bold;font-size:16px;color:#F5AA1A;">搜索地址 </span>: <input style="height:33px;" placeholder="输入企业大致方位以便在地图查找" type="text" id="test-address" size="60"> <button type="button" class="btn btn-primary" id="test-ok" onclick="searchAddress()">开始搜索</button></div>  ';
	mapdiv +='<div id="map" class="gmap3"></div>';
	mapdiv +='<div class="form-group">';
	mapdiv +='<label style="width:200px;"><i>Lat : </i><span id="Lat" style="color:#C62626"></span></label>';
	mapdiv +='<label><i>Lon : </i><span id="Lon" style="color:#C62626"></span></label><br/> ';
	mapdiv +='</div>';
	mapdiv +='<button type="button" class="btn btn-success" onclick="mark()">确定</button>';
	mapdiv +='<button type="button" style="margin-left:20px;" class="btn btn-danger" onclick="cancer()">取消</button>';
	mapdiv +='</div>';
	//调用dialog显示
	mapdlg = new Dialog(mapdiv,
		    {
				id:'mapdlg',
				title : "标记企业地址",
	
			});
	mapdlg.show();
	
	$('#test-address').keypress(function(e){
        if (e.keyCode == 13){
          searchAddress();
        }
      });
	
	$("#map").gmap3({
	      marker:{
	        latLng: [21.662999,110.9255],
	        options:{
	          draggable:true,
	          icon: "http://maps.google.com/mapfiles/marker_green.png"
	        },
	        events:{
	          dragend: function(marker){
	            $(this).gmap3({
	              getaddress:{
	                latLng:marker.getPosition(),
	                callback:function(results){
	                  var map = $(this).gmap3("get"),
	                    infowindow = $(this).gmap3({get:"infowindow"}),
	                    content = results && results[1] ? results && results[1].formatted_address : "no address";
	                  if (infowindow){
	                    infowindow.open(map, marker);
	                    infowindow.setContent(content);
	                  } else {
	                    $(this).gmap3({
	                      infowindow:{
	                        anchor:marker, 
	                        options:{
	                       
	                        	content: content
	                        	}
	                      }
	                    });
	                  }
	                }
	              }
	            });
	            
	            var LatLng = marker.getPosition();
	            
	            $('#Lat').html(LatLng.k);
	            $('#Lon').html(LatLng.A);
	            
	            lon = LatLng.A;
	            lat = LatLng.k;
	         
	          }
	        }
	      },
	      map:{
	        options:{
	          zoom: 8
	        }
	      }
	    });
	
	
}

//确认地图标记
function mark(){
	
	$('#addressLat').attr('value',lat);
    $('#addressLon').attr('value',lon);
    //关闭dialog
    mapdlg.close();
}

//cancer按钮
function cancer(){
	
	mapdlg.close();
}
