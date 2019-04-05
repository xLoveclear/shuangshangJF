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
<title>诉求建议</title>
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
            <span>诉求建议</span>
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
                    <p>敬请期待！</p>
                </div>
                <div class="tab-pane fade in active" id="a5">
        	
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
						str+='<div class="row zuoyou" onclick="dj('+result[i].id+')">';
   						str+='<div class="col-xs-4 img"><img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png"></div>';
   						str+='<div class="col-xs-8">';
       					str+='<div class="row"><div class="col-xs-12 font">'+result[i].title+'</div></div>';
       					str+='<div class="row"><div class="col-xs-12 font1">';
						str+='<p id="wenziqaq">'+result[i].xinwennr+'</p></div></div>';
						str+='<div class="row"><div class="col-xs-12 font2" style="text-align:left">'+result[i].fbtime+'</div>';
						str+='</div>'; 
						str+='</div></div>';
					}
				}
				$("#a5").append(str);
			})
		}
		
		function dj(a){
			window.location.href="${jpath}/qdwangye/sqjyxq?id="+a;
		}
		
		$(function(){
		Loadtbl(1,1);
		})
		
</script>
</html>