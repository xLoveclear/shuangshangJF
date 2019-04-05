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
<title>信用评价</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/fuwupingjia.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">-->

</head>
<!--<script src="js/jquery-3.3.1.js"></script>-->
<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container back">
    <div class="row wid">
        <div class="col-xs-3 img1">
            <img src="${jpath}/static/qdyangshi/assets/fanhui1.png"/>
        </div>
        <div class="col-xs-6 zi">
            <span>信用评价</span>
        </div>
        <div class="col-xs-3">
        </div> 
    </div>
</div>
<div class="container">
	<div class="row zuoyou">
            <div class="col-xs-4 img">
                    <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                </div>
                <div class="col-xs-8">
                    <div class="row">
                        <div class="col-xs-12 font">
                            红旗连锁
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 font1">
                            <p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
                        </div>
                    </div>
                </div>
    </div>
    <div class="row zuoyou">
            <div class="col-xs-12 xin xin1">
                    <span>服务评级</span>
                    <div class="dianji">
                    	<img src="${jpath}/static/qdyangshi/duotu/Shape Copy31.png">
                        <img src="${jpath}/static/qdyangshi/duotu/Shape Copy31.png">
                        <img src="${jpath}/static/qdyangshi/duotu/Shape Copy31.png">
                        <img src="${jpath}/static/qdyangshi/duotu/Shape Copy31.png">
                        <img src="${jpath}/static/qdyangshi/duotu/Shape Copy31.png">
                    </div>
            </div>
    </div>
    <div class="row pjj">
            <div class="col-xs-4 pj">
                    <span class="">态度良好</span><br />
                    <span>态度良好</span>
            </div>
            <div class="col-xs-4 pj">
                    <span>态度良好</span><br />
                    <span>态度良好</span>
            </div>
            <div class="col-xs-4 pj">
                    <span>态度良好</span><br />
                    <span>态度良好</span>
            </div>
    </div>
    <div class="row write">
            <div class="col-xs-12 bot">
            	<textarea placeholder="请输入你的评价"></textarea><br />
                <input type="submit" value="提交"/>
            </div>
    </div>
</div>
</body>

<script type="text/javascript">
var geshu=-1;
$(".dianji").children().click(function(){
		if($(this).attr("src")=="${jpath}/static/qdyangshi/duotu/Shape Copy31.png"){
			$(this).prevAll().attr("src","${jpath}/static/qdyangshi/duotu/Shape Copy3.png");
			$(this).attr("src","${jpath}/static/qdyangshi/duotu/Shape Copy3.png");
			geshu=$(this).index()+1;		
		}else{
			$(this).nextAll().attr("src","${jpath}/static/qdyangshi/duotu/Shape Copy31.png");
			$(this).attr("src","${jpath}/static/qdyangshi/duotu/Shape Copy31.png");
			geshu=$(this).index();	
		}
	});
for ( var i = 0; i < 3; i++) {
	var xz=0;//用于判断选中了几个
	$(".pjj").children().eq(i).children().click(function(){
		if($(this).attr("class")=='pj1'){
			$(this).removeClass("pj1");
			xz--;
		}else{
			$(this).addClass("pj1");
			xz++;
		}
	})
}


$("[type='submit']").click(function(){
	alert("敬请期待!");
	});
</script>
</html>