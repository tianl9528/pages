  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>tab切换+分页</title>
    <style type="text/css">
       	body{margin:0; font:12px/1.5 '\5b8b\4f53',sans-serif; color:#333;background:#eeefd3;padding:10px 10px 10px 50px;}
		h1,h2,h3,h4,h5,p,ul,ol,dl,dd{margin:0;}
	    ul,ol{padding-left:0;list-style-type:none;}
	   .tab_nav ul{zoom:1;}
       .tab_nav ul:after{clear: both;display: block;content:'';font-size:0;visibility: hidden;}
       .tab_nav li{float:left;width:100px;line-height:30px;cursor: pointer;border: red solid 1px;margin-right:10px;text-align: center;}
       .tab_nav .current{color: green;background: red;}
       .tab_content{margin-top:20px;width: 440px;height:170px;overflow: hidden;position: relative;}
       .tab_content p{margin-bottom: 10px;}
       .page{position: absolute;right:10px;bottom:0;text-align: right;}
       .page a{display: inline-block;padding: 0 5px;margin: 0 3px;}
       .page .current{color:red;}
    </style>
</head>
<body>
   <div class="tab_nav">
       <ul>
           <li class="current">A</li>
           <li>B</li>
           <li>C</li>
           <li>D</li>
       </ul>
   </div>
   <div id="content1" class="tab_content">
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <div id="page1" class="page"></div>
   </div>
   <div id="content2" class="tab_content" style="display: none">
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <div id="page2" class="page"></div>
   </div>
   <div id="content3" class="tab_content" style="display: none">
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <div id="page3" class="page"></div>
   </div>
   <div id="content4" class="tab_content" style="display: none">
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第一条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第二条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第三条数据</p>
       <p>第四条数据</p>
       <p>第四条数据</p>
       <p>第四条数据</p>
       <div id="page4" class="page"></div>
   </div>
   <script type="text/javascript" src="http://pc1.gtimg.com/js/jquery-1.4.4.min.js"></script>
   <script type="text/javascript">
       $(function(){
           //tab切换的代码
           $(".tab_nav li").click(function(){
               $(this).addClass("current").siblings().removeClass("current");
               var index = $(".tab_nav li").index($(this));
               $(".tab_content").css("display","none");
               $(".tab_content").eq(index).css("display","block");
           });
           //分页代码
           var pageinfo = [];
           var maxpagenum = 6;//一页最多显示6条
           function pageList(num){
              var totalpage = $("#content"+num+" p").length/maxpagenum;
              //向上舍入，比如有8条数据，8除6是1点几，Math.ceil的作用是让它变成2
              totalpage = Math.ceil(totalpage);
              //如果只有一页，那么没必要有这个分页的内容
              if(totalpage == 1){
                  return;
              }
              //定义一个对象，来区分各个容器，用来存储当前页和总页数，避免干扰其他内容块
              pageinfo[num] = {};
              pageinfo[num].current = 1;//存储当前页
              pageinfo[num].totalpage = totalpage;//存储总页数
              var str = "";
              for(var i = 0;i<pageinfo[num].totalpage;i++){
                  var c = "";
                  if(i == 0){
                     c = "current";
                  }
                 str += '<a href="javascript:;" onclick="goPage('+num+','+(i+1)+')" class="'+c+'">'+(i+1)+'</a>';
              }
              str = '<a class="prebtn" href="javascript:;" onclick="goPrev('+num+')">&lt;&lt;&nbsp;上一页</a>'+str+'<a class="nextbtn" href="javascript:;" onclick="goNext('+num+')">下一页&nbsp;&gt;&gt;</a>';
              $("#page"+num).html(str);
            }
           var tabcontlength = $(".tab_content").length;
           //初始化每个内容块下的分页容器
           for(var i = 1;i<tabcontlength+1;i++){
               pageList(i);
           }
           //pagenum为当前页
           function goPage(num,pagenum){
               pageinfo[num].current = pagenum;
               $("#page"+num+" a").removeClass("current");
               $("#page"+num+" a").eq(pagenum).addClass("current");
               //分页的真正代码
               $("#content"+num+" p").css("display","none");
               //0 6
               for(var i = (pagenum-1)*maxpagenum;i<pagenum*maxpagenum;i++){
                   $("#content"+num+" p").eq(i).css("display","block");
               }
           }
           function goPrev(num){
               if(pageinfo[num].current == 1){
                   return;
               }
               pageinfo[num].current --;
               goPage(num, pageinfo[num].current);
           }
           function goNext(num){
               if(pageinfo[num].current == pageinfo[num].totalpage){
                   return;
               }
               pageinfo[num].current ++;
               goPage(num, pageinfo[num].current);
           }
           window["goPage"] = goPage;
           window["goPrev"] = goPrev;
           window["goNext"] = goNext;
       })
   </script>
</body>
</html>
