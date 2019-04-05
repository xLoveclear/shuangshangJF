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
<meta name="viewport" content="width=device-width,minimum-scale=1,maximum-scale=1,initial-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/shouye.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${jpath}/static/qdyangshi/js/liMarquee.css">
<title>首页</title>
<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
<!-- 轮播样式插件js -->
<script src="${jpath}/static/qdyangshi/js/jquery-1.8.3.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/jquery.liMarquee.js"></script>

<!--<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
	
</head>

<body>
<div class="container">
	<div class="row bkcolor">
    	<div class="col-xs-4 width width1">
        	<img src="${jpath}/static/qdyangshi/assets/menu_hamburger.png" />
        </div>
        <div class="col-xs-4 width">
        	<h5>首页</h5>
        </div>
        <div class="col-xs-4 width width2">
        	<img src="${jpath}/static/qdyangshi/assets/plus.png" />
        </div>
    </div>
</div>
<script>
	$(".width2").children().click(function(){
		window.location.href="${jpath}/qdwangye/cpsc";
	});
</script>
<div class="container center">
	<div class="row">
    	<div class="col-xs-12">
        	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>  
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="daxiao" src="${jpath}/upload/file/tu1.jpg" alt="First slide">
                        <div class="carousel-caption">请关注</div>
                    </div>
                    <div class="item">
                        <img class="daxiao" src="${jpath}/upload/file/tu2.jpg" alt="Second slide">
                        <div class="carousel-caption">请关注</div>
                    </div>
                    <div class="item">
                        <img class="daxiao" src="${jpath}/upload/file/tu3.jpg" alt="Third slide">
                        <div class="carousel-caption">请关注</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
	</div>
</div>
<div class="container san0">
	<div class="row" id="djfloat">
    	<div class="float">
        	<img src="${jpath}/static/qdyangshi/daohang/businessman.png" />
        	<span>关于我们</span>
        </div>
        <div class="float">
        	<img src="${jpath}/static/qdyangshi/daohang/zczx.png" />
        	<span>新闻资讯</span>
        </div>
        <div class="float float3">
        	<img src="${jpath}/static/qdyangshi/daohang/tjcp.png" />
        	<span>推荐产品</span>
        </div>
        <div class="float">
        	<img src="${jpath}/static/qdyangshi/daohang/exchange.png" />
        	<span>融资需求</span>
        </div>
        <div class="float">
        	<img src="${jpath}/static/qdyangshi/daohang/payment.png" />
        	<span>帮助中心</span>
        </div><br class="clear" />
    </div>
</div>
<div class="container san">
	<div class="row">
    	<div class="col-xs-3 font">
        <h3>通知<br />公告</h3>
        </div>
        <div class="col-xs-9" id="lunbo" style="height:82px">
        	<ul style="list-style-type: none;">
	        	<li>
	        	<div class="sp">
	            	<span class="span">最新</span>
	                <span class="span1">国务院关于白皮书</span>
	            </div>
	            </li>
	            <li>
	            <div class="sp">
	            	<span class="span">围观</span>
	                <span class="span1">国务院经济白皮书</span>
	            </div>
	            </li>
	            <li>
	            <div class="sp">
	            	<span class="span">围观</span>
	                <span class="span1">国务院经济白皮书</span>
	            </div>
	            </li>
            </ul>
        </div>
    </div>
</div>
<center>
<div class="container duijie">
	<div class="row">
        <div class="col-xs-4 towhr1">
        <p></p>
        </div>
        <div class="col-xs-4  towhr">
        	<span>对接查询</span>
        </div>
        <div class="col-xs-4 towhr2">
        <p></p>
        </div>
    </div>
    <div class="row totow">
    	<div class="col-xs-5 bgtow" id="qydj">
        	<div class="bk1">
            	<span class="xian"></span>
                <span>企业融资对接</span>
            </div>
            <div class="list litop">
            	<img src="${jpath}/static/qdyangshi/duotu/zezt.png" />
                <span>注册状态</span>
            </div>
            <div class="list">
            	<img src="${jpath}/static/qdyangshi/duotu/xyjf.png" />
                <span>信用积分</span>
            </div>
            <div class="list">
            	<img src="${jpath}/static/qdyangshi/duotu/jrjg.png" />
                <span>金融机构</span>
            </div>
            <div class="list">
            	<img src="${jpath}/static/qdyangshi/duotu/rzcp.png" />
                <span>融资产品</span>
            </div>
            <div class="list">
            	<img src="${jpath}/static/qdyangshi/duotu/shzt.png" />
                <span>审核状态</span>
            </div>
            <div class="list">
            	<img src="${jpath}/static/qdyangshi/duotu/djjg.png" />
                <span>对接结果</span>
            </div>
        </div>
        <div class="col-xs-2">
        </div>
        <div class="col-xs-5 bgtow1" id="yhdj">
            <div class="bk1">
                    <span class="xian2"></span>
                    <span>金融机构对接</span>
                </div>
                <div class="list litop">
                    <img src="${jpath}/static/qdyangshi/duotu/zezt.png" />
                    <span>注册状态</span>
                </div>
                <div class="list">
                    <img src="${jpath}/static/qdyangshi/duotu/djjf.png" />
                    <span>对接积分</span>
                </div>
                <div class="list">
                    <img src="${jpath}/static/qdyangshi/duotu/shzt.png" />
                    <span>审核状态</span>
                </div>
                <div class="list">
                    <img src="${jpath}/static/qdyangshi/duotu/djqy.png" />
                    <span>对接企业</span>
                </div>
                <div class="list libottom">
                    <img src="${jpath}/static/qdyangshi/duotu/djjg.png" />
                    <span>对接结果</span>
                </div>
            </div>
        </div>
</div>
</center>
<div class="container huanhang">
	<div class="row">
    	<div class="col-xs-12">
             <ul id="myTab" class="nav nav-tabs">
                  <li class="active">
                      <a href="#home" data-toggle="tab">
                           最新政策
                      </a>
                  </li>
                  <li onclick="rztj()">
                       <a href="#ios" data-toggle="tab">
                            融资统计
                       </a>
                  </li>
              </ul>
         </div>
          <center>
          <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="home">
                <div class="huan float">
        			<img src="${jpath}/static/qdyangshi/duotu/gjzc.png" /><br />
        			<span>国家政策</span>
        		</div>
                <div class="huan float">
        			<img src="${jpath}/static/qdyangshi/duotu/bdzc.png" /><br />
        			<span>本地政策</span>
        		</div>
                <div class="huan float">
        			<img src="${jpath}/static/qdyangshi/duotu/rmxm.png" /><br />
        			<span>热门项目</span>
        		</div>
                <div class="huan float">
        			<img src="${jpath}/static/qdyangshi/duotu/jrzc.png" /><br />
        			<span>金融政策</span>
        		</div>
                <div class="huan float">
        			<img src="${jpath}/static/qdyangshi/duotu/jrzs.png" /><br />
        			<span>金融知识</span>
        		</div><br class="clear" />
            </div>
            <div class="tab-pane fade" id="ios">
                
            </div>
        </div>
        </center>
    </div>
</div>
<div class="container bottom">
	<div class="row">
    	<center>
            <div class="bot" id="diduan">
                <img src="${jpath}/static/qdyangshi/duotu/a1.png" />
                <img src="${jpath}/static/qdyangshi/duotu/a2.png" />
                <img src="${jpath}/static/qdyangshi/duotu/a3.png" />
                <img src="${jpath}/static/qdyangshi/duotu/a4.png" />
            </div>
        </center>
    </div>
</div>
</body>
<script type="text/javascript">

	$(function(){
		$("#lunbo").liMarquee({
			direction:'up',
			hoverstop:true,
			loop:'-1',
			circular:true,
			scrollamount:'30'
		}); 
		
	});
	
	//跳转页面（关于我们，新闻资讯这一行）
	$(function(){
		$("#djfloat").children().click(function(){
			var index=$(this).index();
			if(index==0){
				window.location.href="${jpath}/qdwangye/qdaboutwomen";
			}
			if(index==1){
				window.location.href="${jpath}/qdwangye/xwzx";
			}
			if(index==2){
				window.location.href="${jpath}/qdwangye/tjcp";
			}
			if(index==3){
				window.location.href="${jpath}/qdwangye/rzxq";
			}
			if(index==4){
				window.location.href="${jpath}/qdwangye/bzzx";
			}
		})
	});
	//跳转页面（企业融资对接这一板块）
	$(function(){
		$("#qydj").children().click(function(){
			var index=$(this).index();
			if(index==1){
				window.location.href="${jpath}/qdwangye/zcztqy";
			}
			if(index==2){
				//window.location.href="${jpath}/qdwangye/xwzx";
				alert("敬请期待!");
			}
			if(index==3){
				window.location.href="${jpath}/qdwangye/jrjgoverride";
			}
			if(index==4){
				window.location.href="${jpath}/qdwangye/rzcp";
			}
			if(index==5){
				window.location.href="${jpath}/qdwangye/qyshzt";
			}
			if(index==6){
				window.location.href="${jpath}/qdwangye/djokqy";
			}
		})
	});
	//跳转页面（金融机构对接这一板块）
	$(function(){
		$("#home").children().click(function(){
			var index=$(this).index();
			window.location.href="${jpath}/qdwangye/zxzcall?id="+index;	
		})
	});
	//跳转页面（最新政策模块）
	$(function(){
		$("#yhdj").children().click(function(){
			var index=$(this).index();
			if(index==1){
				window.location.href="${jpath}/qdwangye/zcztyh";
			}
			if(index==2){
				//window.location.href="${jpath}/qdwangye/xwzx";
				alert("敬请期待!");
			}
			if(index==3){
				window.location.href="${jpath}/qdwangye/shztyh";
			}
			if(index==4){
				window.location.href="${jpath}/qdwangye/djqyyh";
			}
			if(index==5){
				window.location.href="${jpath}/qdwangye/djjgyh";
			}
		})
	});
	//跳转页面（最底端）
	$(function(){
		$("#diduan").children().click(function(){
			var index=$(this).index();
			if(index==0){
				window.location.href="${jpath}/qdwangye/xqdt";
			}
			if(index==1){
				window.location.href="${jpath}/qdwangye/sqjydyg";
			}
			if(index==2){
				window.location.href="${jpath}/qdwangye/xypj";
			}
			if(index==3){
				window.location.href="${jpath}/qdwangye/qdfwpj";
			}
			
		})
	});
	function rztj(){
		$.post("${jpath}/qdwangye/rztjall",function(data){
			var json=$.parseJSON(data);
			var result=json.obj.results;
			var str='<div class="huan float"><span>'+"0个"+'</span><br /><span>累计融资金额</span></div>';
				str+='<div class="huan float"><span>'+"0个"+'</span><br /><span>注册金融机构</span></div>';
                str+='<div class="huan float"><span>'+"0个"+'</span><br /><span>注册企业会员</span></div>';	
        		str+='<div class="huan float"><span>'+"0个"+'</span><br /><span>融资产品服务</span></div>';	
        		str+='<div class="huan float"><span>'+"0个"+'</span><br /><span>对接成功项目</span></div><br class="clear" />';	
        	$("#ios").empty(str);	
            $("#ios").append(str);	
		})
	}
</script>
</html>
