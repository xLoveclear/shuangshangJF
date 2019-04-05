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
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/duijieokxm.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--/*<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">*/-->

<title>对接成功项目</title>
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container back">
    <div class="row">
        <div class="col-xs-3 img1">
            <img src="${jpath}/static/qdyangshi/assets/fanhui1.png" />
        </div>
        <div class="col-xs-6 zi">
            <span>对接成功项目</span>
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
                <a href="#a1" data-toggle="tab">融资</a>
            </li>
            <li><a href="#a2" data-toggle="tab">机构</a></li>
            <li><a href="#a3" data-toggle="tab">企业</a></li>
            <li><a href="#a4" data-toggle="tab">产品</a></li>
            <li class="active"><a href="#a5" data-toggle="tab">项目</a></li>
            
       	 </ul>
        
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade" id="a1">
                    
                </div>
                <div class="tab-pane fade" id="a2">
                    
                </div>
                <div class="tab-pane fade" id="a3">
                    
                </div>
                <div class="tab-pane fade" id="a4">
                    
                </div>
                <div class="tab-pane fade in active" id="a5">
                	<div class="row">
                    	<div div class="col-xs-12">
                    		<span class="span1">对接成功项目</span><br />
                            <span class="span2">231<span class="span3">个</span></span>
                    	</div>
                    </div>
                    <div class="row zuoyou">
                    	<div class="col-xs-4 img">
                                <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                            </div>
                            <div class="col-xs-8">
                                <div class="row">
                                    <div class="col-xs-12 font">
                                        华西集团
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font1">
                                        <p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font2" style="text-align:right;">
                                        2018-9-29 10:44:04
                                    </div>
                                </div>
                            </div>
                    </div>
                    
                    <div class="row zuoyou">
                    	<div class="col-xs-4 img">
                                <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                            </div>
                            <div class="col-xs-8">
                                <div class="row">
                                    <div class="col-xs-12 font">
                                        华西集团
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font1">
                                        <p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font2" style="text-align:right;">
                                        2018-9-29 10:44:04
                                    </div>
                                </div>
                            </div>
                    </div>
                    
                    <div class="row zuoyou">
                    	<div class="col-xs-4 img">
                                <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                            </div>
                            <div class="col-xs-8">
                                <div class="row">
                                    <div class="col-xs-12 font">
                                        华西集团
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font1">
                                        <p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font2" style="text-align:right;">
                                        2018-9-29 10:44:04
                                    </div>
                                </div>
                            </div>
                    </div>
                    
                    <div class="row zuoyou">
                    	<div class="col-xs-4 img">
                                <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                            </div>
                            <div class="col-xs-8">
                                <div class="row">
                                    <div class="col-xs-12 font">
                                        华西集团
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font1">
                                        <p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font2" style="text-align:right;">
                                        2018-9-29 10:44:04
                                    </div>
                                </div>
                            </div>
                    </div>
                    
                    <div class="row zuoyou">
                    	<div class="col-xs-4 img">
                                <img style="width: 100%;" src="${jpath}/static/qdyangshi/assets/xqdt.png">
                            </div>
                            <div class="col-xs-8">
                                <div class="row">
                                    <div class="col-xs-12 font">
                                        华西集团
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font1">
                                        <p>这是内容这是内容这是内容这是内容这是内容这是内容这这是内容容这是内容这是内容这是内容这是内容是内容</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 font2" style="text-align:right;">
                                        2018-9-29 10:44:04
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

</html>
