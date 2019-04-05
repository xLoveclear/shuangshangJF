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

<title>融资需求</title>
<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
</head>
<style type="text/css">
	a:focus,a:hover{
    color: black;
    text-decoration: none;
	}
	a{
    color: white;
	}
</style>

<body>
<div class="container back">
    <div class="row">
        <div class="col-xs-4 img1">
            <img src="${jpath}/static/qdyangshi/assets/fanhui3.png" />
        </div>
        <div class="col-xs-4 zi">
            <span>融资需求</span>
        </div>
        <div class="col-xs-4 img2">
			<img src="${jpath}/static/qdyangshi/duotu/yuanquan.png" />
        </div> 
    </div>
</div>
<div class="container shang">
    <div class="row">
        <div class="col-xs-3">
        	<div class="row row-right nav nav-tabs" id="myTab">
				<div class="col-xs-12 change active"><a href="#a1" data-toggle="tab">农业类</a></div>
				<div class="col-xs-12"><a href="#a2" data-toggle="tab">工业类 </a></div>
				<div class="col-xs-12"><a href="#a3" data-toggle="tab">农业类</a></div>
				<div class="col-xs-12"><a href="#a4" data-toggle="tab">工业类</a></div>
				<div class="col-xs-12"><a href="#a5" data-toggle="tab">农业类</a></div>
				<div class="col-xs-12"><a href="#a6" data-toggle="tab">工业类</a></div>
				<div class="col-xs-12"><a href="#a7" data-toggle="tab">农业类</a></div>
				<div class="col-xs-12"><a href="#a8" data-toggle="tab">工业类</a></div>
        	</div>
        </div>
       	<div class="col-xs-9 tab-content" id="myTabContent">
        	<div class="row row-left tab-pane fade in active" id="a1">
        	</div>
        	<div class="row row-left tab-pane fade" id="a2">
        	</div>
        	<div class="row row-left tab-pane fade" id="a3">
        	</div>
        	<div class="row row-left tab-pane fade" id="a4">
        	</div>
        	<div class="row row-left tab-pane fade" id="a5">
        	</div>
        	<div class="row row-left tab-pane fade" id="a6">
        	</div>
        	<div class="row row-left tab-pane fade" id="a7">
        	</div>
        	<div class="row row-left tab-pane fade" id="a8">
        	</div>
       	</div>
    </div>
</div>
</body>
<script type="text/javascript">
	
//计算时间相差
function dateDif(enddate){
	var can = new Date();//防止加载多个时间（出现时间一直刷新的bug）
    var date = enddate - can.getTime(); 
    var days    = date / 1000 / 60 / 60 / 24;
    var daysRound   = Math.floor(days);
    var hours    = date/ 1000 / 60 / 60 - (24 * daysRound);
    var hoursRound   = Math.floor(hours);
    var minutes   = date / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound);
    var minutesRound  = Math.floor(minutes);
    var seconds   = date/ 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound);
    var secondsRound  = Math.floor(seconds);
    var time = "贷款倒计时:"+daysRound+"天"+hoursRound +"时"+minutesRound+"分"+secondsRound+"秒";
	return time;
    } 
    
    function td(){//给数据赋值
    	$(".djs").each(function(index,n){
    		var c=$(n).attr("id");
    		c=new Date(c.replace("T"," ")).getTime();
    		var d=dateDif(c);
    		$(n).text(d);
    	})
    }

    
	function dj(a){//点击跳转到产品详情页面
		window.location.href="${jpath}/cpxqd?id="+a;
	}
	function Loadtbl(nowpageNum,a,a_this){
			$.post("${jpath}/qdfindbypage",{pageNum:nowpageNum,pageSize:4,cpfenlei:a},function(data){
				var json=$.parseJSON(data);
				var	str='';
				var result=json.obj.results;
				//console.log(result);
				if(result!=null){
					for ( var i = 0; i < result.length; i++) {
						str+='<div class="col-xs-6 zuoshang zuoshang_left" onclick="dj('+result[i].id+')">';
   						str+='<div class="cp_m">'+result[i].jine+'</div>';
   						str+='<div class="cp_t">国内订单融资</div></div>';
       					str+='<div class="col-xs-6 zuoshang youshang">';
       					var gsguimo="未定义";
       					if(result[i].aboutwomen!=null && result[i].aboutwomen!=''){
       						var list=result[i].aboutwomen
       						var li=list.split("&&");
       						gsguimo=li[0];
       					}
       					
						str+='<div class="font_c_o">公司规模:'+gsguimo+'</div>';
						str+='<div class="font_c_o">资金周期:短期</div><div class="font_c_o">联系电话:'+result[i].lxwomen+'</div></div>';
						str+='<div id="'+result[i].fabutime+'" class="col-xs-12 font-color font_c_o djs"></div>'; 
						str+='<input type="hidden" value="'+result[i].fabutime+'" class="timeall">'; 
						//贷款倒计时
					}
					
				}
				$('#'+a_this).empty();
				$('#'+a_this).append(str);
				setInterval(function(){//一秒钟加载一次
					td();
				},1000);
				
			})
		}
	
	$(function(){
		Loadtbl(1,1,"a1");
		$("#myTab").find("a").click(function(){
			$("#myTab").children().removeClass("change");
			$(this).parent().addClass("change");
			var canshu=$(this).attr("href");
			data=canshu.replace("#","");
			Loadtbl(1,1,data);
		})
	})
</script>
</html>