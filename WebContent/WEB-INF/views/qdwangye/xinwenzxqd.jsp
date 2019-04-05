<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻资讯</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/remenxiangmu.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
<style type="text/css">
.huan>.top-title{
	text-align: center;
	margin-left: 10%;
}
.top-title{
	color: #aeaeae;
}
.backco1{
	padding: 2px 15px;
	background-color: #f86941;
	border-radius: 10px;
	color: #fff;
}
.zuoyou {
    background-color: white;
    margin-left: 0px !important;
    margin-right: 0px !important;
    padding-top: 0px !important;
    padding-bottom: 10px;
}
#wenziqaq{
	width:94%;
	height:10%;
    word-wrap:break-word;
    word-break:break-all;
    overflow: hidden;
}
</style>
<body>
<div class="container xia">
    <div class="row" style="background-color:#f86941;">
       <div class="col-xs-4 img1">
         <img src="${jpath}/static/qdyangshi/assets/fanhui1.png" />
       </div>
       <div class="col-xs-4 zi">
         <span>新闻资讯</span>
       </div>
       <div class="col-xs-4 img2">
       	 <img src="${jpath}/static/qdyangshi/duotu/fl.png" />
       </div> 
    </div>
</div>
<div class="container">
    <div class="row xia huan" style="margin-left: -10px;">
    	<!-- 
    	<c:forEach var="newsTitle" items="${newsTitle }" varStatus="status">
          <span class="top-title <c:if test="${status.count==1 }">backco1</c:if>">${newsTitle.tltle_name }</span>
    	</c:forEach>
    	 -->
    	 <span class="top-title backco1" id="1">国际新闻</span>
    	 <span class="top-title" id="2">国内新闻</span>
    	 <span class="top-title" id="3">辖区新闻</span>
    </div>
</div>
<div class="container xia" id="xwzxqaq">
   	<div class="row zuoyou">
       	<div class="col-xs-12">
        	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol><br>   
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="First slide">
            			<div class="carousel-caption">标题1</div>
                    </div>
                    <div class="item">
                        <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="Second slide">
            			<div class="carousel-caption">标题2</div>
                    </div>
                    <div class="item">
                        <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="Third slide">
            			<div class="carousel-caption">标题3</div>
                    </div>
                </div>
            </div> 
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
	
	function Loadtbl(nowpageNum,a){
			$.post("${jpath}/qdxwfindbypage",{pageNum:nowpageNum,pageSize:4,xwlmbianhao:a},function(data){
				var json=$.parseJSON(data);
				var	str='';
				var result=json.obj.results;
				//console.log(result);
				if(result!=null){
					for ( var i = 0; i < result.length; i++) {
						str+='<div class="container bot" onclick="dj('+result[i].id+')"><div class="row zuoyou">';
   						str+='<div class="col-xs-4 img"><img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png"></div>';
   						str+='<div class="col-xs-8">';
       					str+='<div class="row"><div class="col-xs-12 font">'+result[i].title+'</div></div>';
       					str+='<div class="row"><div class="col-xs-12 font1">';
						str+='<p id="wenziqaq">'+result[i].xinwennr+'</p></div></div>';
						str+='<div class="row"><div class="col-xs-6 font2" style="text-align:left">'+result[i].fbtime+'</div>';
						str+='<div class="col-xs-6 font2" style="text-align:right">来源:'+result[i].fbren+'</div></div>'; 
						str+='</div></div></div>';
					}
				}
				$("#xwzxqaq").after(str);
			})
		}
		
		function dj(a){
			window.location.href="${jpath}/xiangqingqd?id="+a;
		}
		
		$(function(){
		Loadtbl(1,1);
		
		$(".huan>.top-title").click(function(){
		    var a_this = $(this);
		    $(".huan").find(".top-title").each(function(index,e){
		      $(e).removeClass("backco1");
		    }) 
		    a_this.addClass("backco1");
		    $("#xwzxqaq").nextAll().remove();
		    var can=a_this.attr("id");
		    Loadtbl(1,can);
		  })
		})
		
</script>
</html>
