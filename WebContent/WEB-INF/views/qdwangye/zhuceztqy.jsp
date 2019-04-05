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
<title>注册状态企业</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/zhuceztyh.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--/*<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">*/-->
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
<style>
.backc {
    background-color: #F86941;
}
.container>.row>.col>.nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
    border: none;
    color: white;
    border: 1px solid #F86941;
    border-radius: 20px;
    background-color: #F86941;
}
</style>
<body>
<div class="container backc">
    <div class="row wid">
        <div class="col-xs-3 img1">
            <img src="${jpath}/static/qdyangshi/assets/fanhui1.png"/>
        </div>
        <div class="col-xs-6 zi">
            <span>注册状态</span>
        </div>
        <div class="col-xs-3">
        </div> 
    </div>
</div>

<div class="container top">
    <div class="row">
    	<div class="col-xs-12 col">
         <ul id="myTab" class="nav nav-tabs">
            <li>
                <a href="#a1" data-toggle="tab">我的</a>
            </li>
            <li class="active"><a href="#a5" data-toggle="tab">所有</a></li>
       	 </ul>
        
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade" id="a1">
                    	登录名<h1>${qdname.loginid}</h1>
                    	密码<h1>******</h1>
                </div>
                <div class="tab-pane fade in active" id="a5">
        			<input type="hidden" value="${yhh}" id="panduan"/>
                    <div class="row zuoyou" id="after">
                                <div class="col-xs-12">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                        </ol>   
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="First slide">
                                                <div class="carousel-caption">展示1</div>
                                            </div>
                                            <div class="item">
                                                <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="Second slide">
                                                <div class="carousel-caption">展示2</div>
                                            </div>
                                            <div class="item">
                                                <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="Third slide">
                                                <div class="carousel-caption">展示3</div>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                    		
                    </div>
                    
                    
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
	function dj(a){//点击跳转到产品详情页面
		window.location.href="${jpath}/qdwangye/qyztxq?id="+a;
	}
	var pd=$("#panduan").val();
	function Loadtbl(nowpageNum,a,a_this){
			if(pd!='jrjg'){
				$.post("${jpath}/qdxwfindbypage",{pageNum:nowpageNum,pageSize:4,cpfenlei:a},function(data){
					var json=$.parseJSON(data);
					var	str='';
					var result=json.obj.results;
					//console.log(result);
					if(result!=null){
						for ( var i = 0; i < result.length; i++) {
							str+='<div class="row zuoyou" onclick="dj('+result[i].id+')">';
	   						str+='<div class="col-xs-4 img"><img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png"></div>';
	   						str+='<div class="col-xs-8">';
	       					str+='<div class="row"><div class="col-xs-12 font">'+result[i].title+'</div></div>';
	       					str+='<div class="row"><div class="col-xs-12 font1">';
							str+='<p id="wenziqaq">'+result[i].xinwennr+'</p></div></div>';
							str+='<div class="row"><div class="col-xs-12 font2" style="text-align:right">'+result[i].fbtime+'</div>';
							str+='</div>'; 
							str+='</div></div>';
						}
					}
					$("#after").after(str);
					
				})
			}else{
				$.post("${jpath}/qdwangye/jrjgoverride1",{pageNum:nowpageNum,pageSize:4,cpfenlei:a},function(data){
					var json=$.parseJSON(data);
					var	str='';
					var result=json.obj.results;
					//console.log(result);
					if(result!=null){
						for ( var i = 0; i < result.length; i++) {
							str+='<div class="row zuoyou">';
	   						str+='<div class="col-xs-12">';
	       					str+='<div class="row"><div class="col-xs-12" style="font-size:30px;">'+result[i].name+'</div></div>';
	       					str+='<div class="row"><div class="col-xs-12" style="font-size:30px;">';
							str+='<p id="wenziqaq">'+result[i].phone+'</p></div></div>';
							str+='<div class="row"><div class="col-xs-12" style="text-align:center;font-size:30px;">'+result[i].qiye+'</div>';
							str+='</div>'; 
							str+='</div></div>';
						}
					}
					$("#after").after(str);
					
				})
			}
		}
	
	$(function(){
		Loadtbl(1,1,"a5");
		$("#after").nextAll().remove();
		$("#myTab").children().eq(0).click(function(){
			var canshu=$(this).children().attr("href");
			data=canshu.replace("#","");
			Loadtbl(1,1,data);
			$("#after").nextAll().remove();
		})
		$("#myTab").children().eq(1).click(function(){
		})
	})
</script>
</html>