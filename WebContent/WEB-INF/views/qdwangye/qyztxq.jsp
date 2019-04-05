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
<title>用户详情</title>
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
         <span>用户详情</span>
       </div>
       <div class="col-xs-4 img2">
       	<img src="${jpath}/static/qdyangshi/assets/shou.png" />
       </div> 
    </div>
</div>

<div class="container">
    <div class="row shang2">
       <div class="col-xs-12 zi2">
         <h1>${yhh.fbren}</h1>
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