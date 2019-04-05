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
<title>相关产品</title><!-- 产品对接详情 -->
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/xinwenxq2.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>

<body>
<div class="container" style="background-color:#F86941;">
    <div class="row">
       <div class="col-xs-4 img1">
         <img src="${jpath}/static/qdyangshi/assets/fanhui3.png" />
       </div>
       <div class="col-xs-4 zi">
         <span>相关产品</span>
       </div>
       <div class="col-xs-4 img2">
       	<img src="${jpath}/static/qdyangshi/assets/shou1.png" />
       </div> 
    </div>
</div>
<div class="container">
	<input type="hidden" value="${yhh.fabutime}" id="time"/>
	<input type="hidden" value="${yhh.aboutwomen}" id="women"/>
	<input type="hidden" value="${yhh.cpfenlei}" id="cpfl"/>
    <div class="row">
       <div class="col-xs-12 datu">
      	    <c:if test="${yhh.tupian==''}">
       		<img src="${jpath}/static/qdyangshi/assets/Image.png" />
       		</c:if>
       		<c:if test="${yhh.tupian!=''}">
       		<img src="${jpath}${yhh.tupian}" />
       		</c:if>
       </div>
    </div>
    <div class="row">
       <div class="col-xs-12 zi1">
       		<span></span>
       </div>
    </div>
    <div class="row">
       <div class="col-xs-12 zi2">
       		<h2>融资限额:${yhh.jine}</h2>
            <h4></h4>
       </div>
    </div>
    <div class="row">
       <div class="col-xs-12 zi3">
       		<h4>办理条件</h4>
       		<p>${yhh.tiaojian}</p>
       		<!-- 
            <p>1.企业的打扎实你等哈说的话迪萨卡付款看看附件是的解放军解放</p>
            <p>2.企业的打扎实你等哈说的话迪萨卡付款看看附件是的解放军解放</p>
            <p>3.企业的打扎实你等哈说的话迪萨卡付款看看附件是的解瑟东2的</p>
            <p>4.企业的打扎实你等哈说的话迪萨卡付款看看撒旦iaf阿瑟东2的</p>
             -->
            <h4>办理流程</h4>
            <p>${yhh.liucheng}</p>
            <!--  
            <p>请向业务办理部门详询</p>
            -->
            <h4>产品简介</h4>
            <p>${yhh.jianjie}</p>
            <!--<p>1.企业的打扎实你等哈说的话迪萨卡付款看看附件iaf阿瑟东2的</p>
            <p>2.企业的打扎实你等哈说的话迪萨卡付款苏打撒旦iaf阿瑟东2的</p>
            <p>3.企业的打扎实你等哈说的话迪萨间大苏打撒旦iaf阿瑟东2的</p>
            <p>4.企业的打扎实你等哈说的付款时间大苏打撒旦iaf阿瑟东2的</p>-->
            <hr />
            <h4>关于我们</h4>
            <ul class="zi4">
            	<li></li>
                <li></li>
                <li></li>
                <li></li>
                <li>联系电话：  <span>${yhh.lxwomen}</span></li>
            </ul>
            <div class="tijiao">
            <input type="submit" value="对接"/>
            </div>
       </div>
    </div>
</div>
<div class="container">
    <div class="row xia1 botxian">
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
		//定时器
function run(enddate){
    //如果enddate为后台传入的Date类型，这里直接转化为毫秒数
    enddate=new Date(enddate.replace("T"," ")).getTime();
    //以500毫秒的速度执行（可以避免方法执行速度慢会影响展示效果的情况）0
    var time = 1000; 
    setInterval("dateDif('"+enddate+"')",time);
}
//计算时间相差
function dateDif(enddate){
    var date = enddate - new Date().getTime(); 
    var days    = date / 1000 / 60 / 60 / 24;
    var daysRound   = Math.floor(days);
    var hours    = date/ 1000 / 60 / 60 - (24 * daysRound);
    var hoursRound   = Math.floor(hours);
    var minutes   = date / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound);
    var minutesRound  = Math.floor(minutes);
    var seconds   = date/ 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound);
    var secondsRound  = Math.floor(seconds);
    var time = "贷款倒计时:"+daysRound+"天"+hoursRound +"时"+minutesRound+"分"+secondsRound+"秒";
    $(".zi1").children().text(time);
	   	if(daysRound>='100'){
	   		$(".zi4").children().eq(2).text("融资规模:长期");
	   	}else{
	   		$(".zi4").children().eq(2).text("融资规模:短期");
	   	}
    } 
    $(function(){
    	var time=$("#time").val();
		var women=$("#women").val();
		var cpfl=$("#cpfl").val();
		if(cpfl!='null'){
			$(".zi2").children().eq(1).text("产品名称:"+cpfl);
		}else{
			$(".zi2").children().eq(1).text("产品名称:敬请期待");
		}
    	run(time);
    	var fg=women.split("&&");
    	$(".zi4").children().eq(0).text("公司规模:"+fg[0]);
    	$(".zi4").children().eq(1).text("金融机构:"+fg[1]);
    	if(fg[2]==null){
    		var a='敬请期待';
    	}
    	$(".zi4").children().eq(3).text("联系部门:"+a);
    })
    $("input[type='submit']").click(function(){
    	var tr=confirm("是否对接？");
    	if(tr){
    		alert("对接成功");
    	}
    })
</script>
</html>