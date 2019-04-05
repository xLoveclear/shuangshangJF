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
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/rongzichanpin.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">

<title>融资状态</title>
<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
</head>


<body>
<div class="container back">
    <div class="row">
        <div class="col-xs-4 img1">
            <img src="${jpath}/static/qdyangshi/assets/fanhui3.png" />
        </div>
        <div class="col-xs-4 zi">
            <span>融资状态</span>
        </div>
        <div class="col-xs-4 img2">
			<img src="${jpath}/static/qdyangshi/duotu/yuanquan.png" />
        </div> 
    </div>
</div>
<div class="container shang">
    <div class="row">
        <div class="col-xs-3">
        	<div class="row row-right">
				<div class="col-xs-12 change">农业类</div>
				<div class="col-xs-12">工业类</div>
				<div class="col-xs-12">农业类</div>
				<div class="col-xs-12">工业类</div>
				<div class="col-xs-12">农业类</div>
				<div class="col-xs-12">工业类</div>
				<div class="col-xs-12">农业类</div>
				<div class="col-xs-12">工业类</div>
        	</div>
        </div>
        <div class="col-xs-9">
        	<div class="row row-left">
				<div class="col-xs-6 zuoshang zuoshang_left">
					<div class="cp_m">500万</div>
					<div class="cp_t">土地融资贷款</div>
				</div>
				<div class="col-xs-6 zuoshang youshang">
					<div class="font_c_o">公司规模:xxxx</div>
					<div class="font_c_o">资金周期:短期</div>
					<div class="font_c_o">联系电话:12345678910</div>
				</div>
				<div class="col-xs-8 font-color font_c_o">
					贷款倒计时：30天：23时：29分：29秒
				</div>
                <div class="col-xs-4 font-color font_c_o dui">
					<img src="${jpath}/static/qdyangshi/duotu/g.png" />
				</div>
        	</div>
            
            <div class="row row-left danhang">
				<div class="col-xs-6 zuoshang zuoshang_left">
					<div class="cp_m">500万</div>
					<div class="cp_t">土地融资贷款</div>
				</div>
				<div class="col-xs-6 zuoshang youshang">
					<div class="font_c_o">公司规模:xxxx</div>
					<div class="font_c_o">资金周期:短期</div>
					<div class="font_c_o">联系电话:12345678910</div>
				</div>
				<div class="col-xs-8 font-color font_c_o">
					贷款倒计时：30天：23时：29分：29秒
				</div>
                <div class="col-xs-4 font-color font_c_o dui">
					<img src="${jpath}/static/qdyangshi/duotu/x.png" />
				</div>
        	</div>
            
            <div class="row row-left">
				<div class="col-xs-6 zuoshang zuoshang_left">
					<div class="cp_m">500万</div>
					<div class="cp_t">土地融资贷款</div>
				</div>
				<div class="col-xs-6 zuoshang youshang">
					<div class="font_c_o">公司规模:xxxx</div>
					<div class="font_c_o">资金周期:短期</div>
					<div class="font_c_o">联系电话:12345678910</div>
				</div>
				<div class="col-xs-8 font-color font_c_o">
					贷款倒计时：30天：23时：29分：29秒
				</div>
                <div class="col-xs-4 font-color font_c_o dui">
					<img src="${jpath}/static/qdyangshi/duotu/g.png" />
				</div>
        	</div>
            
            <div class="row row-left danhang">
				<div class="col-xs-6 zuoshang zuoshang_left">
					<div class="cp_m">500万</div>
					<div class="cp_t">土地融资贷款</div>
				</div>
				<div class="col-xs-6 zuoshang youshang">
					<div class="font_c_o">公司规模:xxxx</div>
					<div class="font_c_o">资金周期:短期</div>
					<div class="font_c_o">联系电话:12345678910</div>
				</div>
				<div class="col-xs-8 font-color font_c_o">
					贷款倒计时：30天：23时：29分：29秒
				</div>
                <div class="col-xs-4 font-color font_c_o dui">
					<img src="${jpath}/static/qdyangshi/duotu/x.png" />
				</div>
        	</div>
            
            
        </div>
    </div>
</div>
</body>
</html>