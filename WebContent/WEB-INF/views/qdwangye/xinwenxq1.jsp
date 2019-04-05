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
<title>新闻详情1</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/xinwenxq1.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container xia">
    <div class="row">
       <div class="col-xs-4 img1">
         <img src="${jpath}/static/qdyangshi/assets/fanhui21.png" />
       </div>
       <div class="col-xs-4 zi">
         <span>详情</span>
       </div>
       <div class="col-xs-4 img2">
       	<img src="${jpath}/static/qdyangshi/assets/shou.png" />
       </div> 
    </div>
</div>
<div class="container">
    <div class="row shang">
       <div class="col-xs-6 zi1">
         <span>${yhh.xwlmbianhao}</span><!-- 保证数据库必须存在数据（不做数据为空时显示默认值） -->
       </div>
       <div class="col-xs-6 zi2">
         <span>${yhh.fbtime}</span>
       </div>
    </div>
    <div class="row shang1">
       <div class="col-xs-12">
         <h3>${yhh.title}</h3>
       </div>
    </div>
    <div class="row shang1">
       <div class="col-xs-12 zi3">
       	<!-- 
         <p>看点一："稳中求进"仍是"主基调"还需"长期坚持"</p>
         <p>坚持社会主义共和国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上。</p>
         <p>国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义。</p>
         <p>国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义。</p>
       	 -->
       	 <p>${yhh.xinwennr}</p>
       </div>
    </div>
</div>
<div class="container">
    <div class="row">
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
                    </div>
                    <div class="item">
                        <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="Second slide">
                    </div>
                    <div class="item">
                        <img src="${jpath}/static/qdyangshi/assets/aee.png" alt="Third slide">
                    </div>
                </div>
            </div> 
       </div>
    </div>
</div>
<div class="container">
    <div class="row shang2">
       <div class="col-xs-12 zi3">
       <!--  
         <p>看点二："稳中求进"仍是"主基调"还需"长期坚持"</p>
         <p>坚持社会主义共和国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上。</p>
         <p>国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义。</p>
         <p>国的基本方针，在共产主义的道路上国的基本方针，在共产主义的道路上国的基本方针，在共产主义。</p>
         -->
         <p>${yhh.xinwennr}</p>
         <h6>文/${yhh.fbren}</h6>
       </div>
    </div>
    <div class="row shang2 xia1">
   		 <center>
                <div class="box">
                    <div class="dian">
                        <img src="${jpath}/static/qdyangshi/duotu/dz.png" />
                        <span>点赞</span>
                    </div>
                    <div class="dian">
                        <img src="${jpath}/static/qdyangshi/duotu/ly.png" />
                        <span>留言</span>
                    </div>
                    <div class="dian dandu">
                        <img src="${jpath}/static/qdyangshi/duotu/fx.png" />
                        <span>分享</span>
                    </div><br class="clear" />
                </div>
          </center>
    </div> 
</div>
				
</body>
<script type="text/javascript">
	$(function(){
		//待定  //解决新闻内容的显示问题
	})
</script>
</html>