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
<title>最新政策</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/remenxiangmu.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
<body>
<div class="container xia">
    <div class="row" style="background-color:#f86941;">
       <div class="col-xs-4 img1">
         <img src="${jpath}/static/qdyangshi/assets/fanhui1.png" />
       </div>
       <div class="col-xs-4 zi">
         <span>${a}</span>
       </div>
       <div class="col-xs-4 img2">
       </div> 
    </div>
</div>
<div class="container xia">
   	<div class="row zuoyou">
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
<div class="container bot">
   	<div class="row zuoyou">
       	<div class="col-xs-4 img">
       		<img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
       	</div>
       	<div class="col-xs-8">
       		<div class="row">
				<div class="col-xs-12 font">
					李嘉诚说过
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-12 font1">
					<p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-6 font2" style="text-align:left">
					2018-9-29 10:44:04
				</div>
				<div class="col-xs-6 font2" style="text-align:right">
					来源:新华网网友
				</div>
       		</div>
       	</div>
    </div>
</div>
<div class="container bot">
   	<div class="row zuoyou">
       	<div class="col-xs-4 img">
       		<img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
       	</div>
       	<div class="col-xs-8">
       		<div class="row">
				<div class="col-xs-12 font">
					李嘉诚说过
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-12 font1">
					<p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-6 font2" style="text-align:left">
					2018-9-29 10:44:04
				</div>
				<div class="col-xs-6 font2" style="text-align:right">
					来源:新华网网友
				</div>
       		</div>
       	</div>
    </div>
</div>
<div class="container bot">
   	<div class="row zuoyou">
       	<div class="col-xs-4 img">
       		<img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
       	</div>
       	<div class="col-xs-8">
       		<div class="row">
				<div class="col-xs-12 font">
					李嘉诚说过
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-12 font1">
					<p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-6 font2" style="text-align:left">
					2018-9-29 10:44:04
				</div>
				<div class="col-xs-6 font2" style="text-align:right">
					来源:新华网网友
				</div>
       		</div>
       	</div>
    </div>
</div>
<div class="container bot">
   	<div class="row zuoyou">
       	<div class="col-xs-4 img">
       		<img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
       	</div>
       	<div class="col-xs-8">
       		<div class="row">
				<div class="col-xs-12 font">
					李嘉诚说过
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-12 font1">
					<p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-6 font2" style="text-align:left">
					2018-9-29 10:44:04
				</div>
				<div class="col-xs-6 font2" style="text-align:right">
					来源:新华网网友
				</div>
       		</div>
       	</div>
    </div>
</div>
<div class="container bot">
   	<div class="row zuoyou">
       	<div class="col-xs-4 img">
       		<img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
       	</div>
       	<div class="col-xs-8">
       		<div class="row">
				<div class="col-xs-12 font">
					李嘉诚说过
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-12 font1">
					<p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
				</div>
       		</div>
       		<div class="row">
				<div class="col-xs-6 font2" style="text-align:left">
					2018-9-29 10:44:04
				</div>
				<div class="col-xs-6 font2" style="text-align:right">
					来源:新华网网友
				</div>
       		</div>
       	</div>
    </div>
</div>

</body>

</html>