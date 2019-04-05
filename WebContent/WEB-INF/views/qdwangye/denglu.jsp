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

<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/dengluCss.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap1.min.css">
<!--/*<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">*/-->

<title>登录</title>
</head>

<script src="${jpath}/static/qdyangshi/js/jquery.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/bootstrap1.min.js"></script>
<body>
<div class="container">
      <div class="row back">
      <img src="${jpath}/static/qdyangshi/assets/login1.png" />
      </div>
      <div class="row">
      	<div class="col-xs-12">
                    <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#zhuce" data-toggle="tab">
                     注册
                </a>
            </li>
            <li>
            	<a href="#denglu" data-toggle="tab">登录</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="zhuce">
            	<div class="tuding">
                <img src="${jpath}/static/qdyangshi/assets/sja1.png" />
                </div>
                    <div class="deng">
                    <img src="${jpath}/static/qdyangshi/assets/deng.png" />
                    <input type="email" id="email" placeholder="邮箱号码"/>
                     </div>  
                     <div class="deng">
                    	<img src="${jpath}/static/qdyangshi/duotu/xiaoren.png" />
                    	<input type="text" id="loginid" placeholder="用户名"/>
                     </div>  
                     <div class="deng xia">
                        <img src="${jpath}/static/qdyangshi/assets/mima.png" />
                        <input type="password" id="pass" placeholder="密码"/>
                     </div>  
                     <div class="deng xia">
                        <img src="${jpath}/static/qdyangshi/assets/mima.png" />
                        <input type="password" id="pass1" placeholder="确认密码"/>
                     </div>  
                     <div class="deng zi" id="qdzhuce">
                        注册
                     </div>  
                     <div class="deng zi1">
                         <div class="row">
                         
                         		<div class="col-xs-4">
                            		<img src="${jpath}/static/qdyangshi/assets/shouji.png" />
                                </div>
                                <div class="col-xs-8">
                                	<center>
                            		<span>快速注册喔</span></center>
                                </div>
                            </div>
                         </div> 
                     <div class="deng1">
                        注册问题？<a href="#" class="zi3">请点击</a>
                     </div>
            </div>
            <div class="tab-pane fade " id="denglu">
                        <div class="tuding1">
               			 <img src="${jpath}/static/qdyangshi/assets/sja1.png" />
               			 </div>
                        <div class="deng">
                        <img src="${jpath}/static/qdyangshi/assets/deng.png" />
                        <input type="text" id="yonghm" placeholder="邮箱/用户名"/>
                         </div>  
                         <div class="deng xia">
                            <img src="${jpath}/static/qdyangshi/assets/mima.png" />
                            <input type="password" id="mima" placeholder="密码"/>
                         </div>  
                         <div class="deng zi" id="login">
                            登录
                         </div>  
                        <div class="deng zi1">
                         <div class="row">
                         
                         		<div class="col-xs-4">
                            		<img src="${jpath}/static/qdyangshi/assets/shouji.png" />
                                </div>
                                <div class="col-xs-8">
                                	<center>
                            		<span>手机号登录</span></center>
                                </div>
                            </div>
                         </div> 
                         <div class="deng1">
                            忘记密码？<a href="#" class="zi3">请点击</a>
                         </div>
            </div>
        </div>
       </div>
      </div>
</div>
</body>
<script type="text/javascript">
	$(function(){
		$("#login").click(function(){//登录验证
			var yonghm=$("#yonghm").val();
			var mima=$("#mima").val();
			if(yonghm==null || yonghm==""){
				alert("请输入用户名");
				return;
			}
			if(mima==null || mima==""){
				alert("请输入密码");
				return;
			}
			$.post("${jpath}/qdlogin",{loginid:yonghm,pass:mima},function(data){
				var json=$.parseJSON(data);			
				if(json.resMsg=="验证成功"){
					alert(json.resMsg);
					location.href="${jpath}/qdwangye/shouye";
				}else{
					alert(json.resMsg);
				}
			})
		})
		
		$(function(){//前端注册
			$("#qdzhuce").click(function(){
				var email=$("#email").val();
				var loginid=$("#loginid").val();
				var pass=$("#pass").val();
				var pass1=$("#pass1").val();
				var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
									isok= reg.test(email);
				if(!isok){
					alert("请输入正确的邮箱");
					return;
				}
				if(loginid==null || loginid==""){
					alert("请输入用户名");
					return;
				}
				if(pass==null || pass==""){
					alert("请输入密码");
					return;
				}
				if(pass1!=pass){
					alert("两次密码输入不同");
					return;
				}
				$.post("${jpath}/loginzhuce",{email:email,loginid:loginid,pass:pass},function(data){
					var json=$.parseJSON(data);
					if(json.resMsg=="注册成功"){
						alert(json.resMsg+"-快去登录吧QAQ");
						$("#email").val("");
						$("#loginid").val("");
						$("#pass").val("");
						$("#pass1").val("");
					}else{
						alert(json.resMsg);
					}
				})
			})
		})
		
	
	})//结束
	
</script>
</html>
