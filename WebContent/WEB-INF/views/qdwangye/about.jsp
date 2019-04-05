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
<title>关于我们</title>
	<link rel="stylesheet" type="text/css" href="${jpath}/static/qdyangshi/css/aboutus.css"/>
	<link rel="stylesheet" type="text/css" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css"/>
</head>
	<script type="text/javascript" src="${jpath}/static/qdyangshi/js/jquery1.min.js"></script>
    <script type="text/javascript" src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
    <script type="text/javascript">
			function see(_this){
					$(_this).siblings("li").children("img.jiao").addClass("hidden");
					$(_this).siblings("li").children("img.jiao").removeClass("show");
					$(_this).children("img.jiao").addClass("show");
					$(_this).children("img.jiao").removeClass("hidden");
					
			}
	</script>
<body>
		<div class="container"> 
        	  <div class="row top">
             		<div class="col-xs-4 left">
                         <img src="${jpath}/static/qdyangshi/duotu/Back.png" />
        	  		</div>
                    <div class="col-xs-4 center">
                         关于我们
        	  		</div>
                    <div class="col-xs-4 right">
                         <img src="${jpath}/static/qdyangshi/duotu/plus.png" />
        	  		</div>
              </div>
        </div>
        <div class="container" style="margin-top:2rem !important;"> 
        	  <div class="row">
             		<div class="col-xs-3 list">
                    	<ul id="myTab" class="nav nav-tabs">
                            <li onclick="see(this)">
                                <a  href="#jianjie" data-toggle="tab">
                                	 <img src="${jpath}/static/qdyangshi/duotu/jj.png" /><br />
                                     简介
                                </a>
                                <img class="jiao show" src="${jpath}/static/qdyangshi/duotu/ysj.png" width="50px"/>
                            </li>
                            <li onclick="see(this)"><a href="#zhidu" data-toggle="tab">
                            		 <img src="${jpath}/static/qdyangshi/duotu/zd.png" /><br />
                                     制度
                            	</a>
                                <img class="jiao hidden" src="${jpath}/static/qdyangshi/duotu/ysj.png" width="50px"/>
                            </li>
                             <li onclick="see(this)"><a  id="see" href="#tuandui" data-toggle="tab">
                            		 <img src="${jpath}/static/qdyangshi/duotu/td.png" /><br />
                                     团队
                            	</a>
                                 <img class="jiao hidden"  src="${jpath}/static/qdyangshi/duotu/ysj.png" width="50px"/>
                            </li>
                            <li onclick="see(this)"><a   id="see" href="#goujia" data-toggle="tab">
                            		 <img src="${jpath}/static/qdyangshi/duotu/jg.png" /><br />
                                     架构
                            	</a>
                                  <img class="jiao hidden" src="${jpath}/static/qdyangshi/duotu/ysj.png" width="50px"/>
                            </li>
                            <li onclick="see(this)"><a  id="see" href="#lianxi" data-toggle="tab">
                            		  <img src="${jpath}/static/qdyangshi/duotu/lx.png" /><br />
                                     联系
                            	</a>
                                  <img class="jiao hidden" src="${jpath}/static/qdyangshi/duotu/ysj.png" width="50px"/>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-8" id="wordbox">
                    	<div id="myTabContent" class="tab-content">
                        	<div class="tab-pane fade in active" id="jianjie">
                                <span>简介</span>
                                <p>${yhh.jianjie}</p>
                            </div>
                            <div class="tab-pane fade" id="zhidu">
                           		<span>制度</span>
                                <p>${yhh.zhidu}</p>
                            </div>
                            <div class="tab-pane fade" id="tuandui">
                           		<span>团队</span>
                                <p>${yhh.tuandui}</p>
                            </div>
                            <div class="tab-pane fade" id="goujia">
                           		<span>构架</span>
                                <p>${yhh.jiagou}</p>
                            </div>
                            <div class="tab-pane fade" id="lianxi">
                           		<span>联系</span>
                                <p>${yhh.lianxi}</p>
                            </div>
                        </div>
                        <div class="row" id="bottom">
             				<div class="col-xs-4">
                            	 <img src="${jpath}/static/qdyangshi/duotu/dz.png" />点赞
                            </div>
                            <div class="col-xs-4">
                            	 <img src="${jpath}/static/qdyangshi/duotu/ly.png" />留言
                            </div>
                            <div class="col-xs-4" id="san">
                            	 <img src="${jpath}/static/qdyangshi/duotu/fx.png" />分享
                            </div>
                        </div> 
                    </div>
                    <div class="col-xs-1">		
                    </div>
              </div>
        </div>
       
</body>
</html>
