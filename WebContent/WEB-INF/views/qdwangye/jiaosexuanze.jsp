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
<title>无标题文档</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/jiaosexuanze.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--/*<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">*/-->
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container back">
    <div class="row">
        <div class="col-xs-3 img1">
            <img src="${jpath}/static/qdyangshi/duotu/Back.png" />
        </div>
        <div class="col-xs-6 zi">
            <span>选择</span>
        </div>
        <div class="col-xs-3">
			
        </div> 
    </div>
</div>
<div class="container zuoyou">
    <div class="row">
        <div class="col-xs-12 bg1">
            <img src="${jpath}/static/qdyangshi/duotu/rzxq1.png" />
            <div class="div">
            	<span style="color:#F86941;">我有融资需求</span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 bg1 bk2">
            <img src="${jpath}/static/qdyangshi/duotu/jrjg1.png" />
            <div class="div" style="border-color:white;">
            	<span style="border-bottom:3px solid #FFFFFF;">我是金融机构</span>
            </div>
        </div>
    </div>
</div>
</body>

</html>