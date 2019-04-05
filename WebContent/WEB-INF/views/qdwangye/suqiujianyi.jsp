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
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/fuwupingjia.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--/*<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">*/-->
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container back">
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
<div class="container">
	<div class="row zuoyou">
            <div class="col-xs-4 img">
                    <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                </div>
                <div class="col-xs-8">
                    <div class="row">
                        <div class="col-xs-12 font">
                            ${yhh.title}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 font1">
                            <p>${yhh.xinwennr}</p>
                        </div>
                    </div>
                </div>
    </div>
    <div class="row zuoyou dianji">
            <div class="col-xs-4 xin" id="a">
            	<img src="${jpath}/static/qdyangshi/duotu/fcmy.png" /><br />
                <span>非常满意</span>
            </div>
            <div class="col-xs-4 xin" id="b">
                <img src="${jpath}/static/qdyangshi/duotu/my.png" /><br />
                <span>满意</span>
            </div>
            <div class="col-xs-4 xin" id="c">
                <img src="${jpath}/static/qdyangshi/duotu/bmy.png" /><br />
                <span>不满意</span>
            </div>
    </div>
    <div class="row pjj">
            <div class="col-xs-4 pj">
                    <span class="">非常专业</span><br />
                    <span>非常专业</span>
            </div>
            <div class="col-xs-4 pj">
                    <span>非常专业</span><br />
                    <span>非常专业</span>
            </div>
            <div class="col-xs-4 pj">
                    <span>非常专业</span><br />
                    <span>非常专业</span>
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
$(".dianji").children().click(function(){
		var b=$(this).attr("id");
		if(b=='a'){
			if($(this).children().attr("src")=="${jpath}/static/qdyangshi/duotu/fcmy.png"){
				$("#b").children().attr("src","${jpath}/static/qdyangshi/duotu/my.png");
				$("#c").children().attr("src","${jpath}/static/qdyangshi/duotu/bmy.png");
				$(this).children().attr("src","${jpath}/static/qdyangshi/duotu/fcmy1.png");
			}else{
				$(this).children().attr("src","${jpath}/static/qdyangshi/duotu/fcmy.png");
				$("#b").children().attr("src","${jpath}/static/qdyangshi/duotu/my.png");
				$("#c").children().attr("src","${jpath}/static/qdyangshi/duotu/bmy.png");
			}
		}
		if(b=='b'){
			if($(this).children().attr("src")=="${jpath}/static/qdyangshi/duotu/my.png"){
				$("#a").children().attr("src","${jpath}/static/qdyangshi/duotu/fcmy1.png");
				$("#c").children().attr("src","${jpath}/static/qdyangshi/duotu/bmy.png");
				$(this).children().attr("src","${jpath}/static/qdyangshi/duotu/my1.png");
			}else{
				$(this).children().attr("src","${jpath}/static/qdyangshi/duotu/my.png");
			}
		}
		if(b=='c'){
			if($(this).children().attr("src")=="${jpath}/static/qdyangshi/duotu/bmy.png"){
				$("#a").children().attr("src","${jpath}/static/qdyangshi/duotu/fcmy1.png");
				$("#b").children().attr("src","${jpath}/static/qdyangshi/duotu/my.png");
				$(this).children().attr("src","${jpath}/static/qdyangshi/duotu/bmy1.png");
			}else{
				$(this).children().attr("src","${jpath}/static/qdyangshi/duotu/bmy.png");
			}
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