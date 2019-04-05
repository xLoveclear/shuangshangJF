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
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bangzhuzhongxin.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--/*<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">*/-->

<title>帮助中心</title>
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container back">
    <div class="row">
        <div class="col-xs-4 img1">
            <img src="${jpath}/static/qdyangshi/assets/fanhui3.png" />
        </div>
        <div class="col-xs-4 zi">
            <span>帮助中心</span>
        </div>
        <div class="col-xs-4 img2">
			<img src="${jpath}/static/qdyangshi/duotu/fl.png" />
        </div> 
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-xs-12 bk">
        	<span class="span1">财经</span>
            <h4>严以宁：民企就怕算老帐  后人官员不认前任承诺</h4>
            <span>来源：财经新闻</span>
            <span>2017-12-21  21:21:59</span>
        </div>
 	</div>
    <div class="row">
        <div class="col-xs-12 bk bk1">
        	<span class="span1">财经</span>
            <h4>严以宁：民企就怕算老帐  后人官员不认前任承诺</h4>
            <p>d的撒点卡收费款福克斯卡夫卡方式开发商的萨格管理是</p><br />
            <span>来源：财经新闻</span>
            <span>2017-12-21  21:21:59</span>
        </div>
 	</div>
    <div class="row">
        <div class="col-xs-12 bk">
        	<span class="span1">财经</span>
            <h4>严以宁：民企就怕算老帐  后人官员不认前任承诺</h4>
            <span>来源：财经新闻</span>
            <span>2017-12-21  21:21:59</span>
        </div>
 	</div>
    <div class="row">
        <div class="col-xs-12 bk bk1">
        	<span class="span1">财经</span>
            <h4>严以宁：民企就怕算老帐  后人官员不认前任承诺</h4>
            <p>d的撒点卡收费款福克斯卡夫卡方式开发商的萨格管理是</p><br />
            <span>来源：财经新闻</span>
            <span>2017-12-21  21:21:59</span>
        </div>
 	</div>
</div>
</body>
</html>
