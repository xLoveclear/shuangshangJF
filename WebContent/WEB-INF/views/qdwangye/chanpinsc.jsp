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
<title>产品上传</title>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/chanpincss.css"/>
<link rel="stylesheet" href="${jpath}/static/qdyangshi/css/bootstrap.min.css"/>
<script src="${jpath}/static/qdyangshi/js/bootstrap.min.js"></script>
<script src="${jpath}/static/qdyangshi/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	    function del(_this) {
	        var _this_img = $(_this);
	        _this_img.parent().remove();
	    }
	    $(function() {
	       	var file = $("#files_btn");
	        $(".addPic").click(function() {
				//alert("abc");
				file.click(); 
	        });
	       file[0].addEventListener('change', function() {
	            var file = this.files[0];
	            var reader = new FileReader();
	            reader.readAsDataURL(file);
	            reader.onload = function(e) {
	                var newUrl = this.result;
	                var img_str = '<div class="mainPic">';
	                img_str += '<img width="50px" src="' + newUrl + '" />';
	                img_str += '<img onclick="del(this)" class="del_btn" src="${jpath}/static/qdyangshi/assets/sc.png" />';
	                img_str += '</div>';
	                $(".addPic").after(img_str);
	                
	            };
	        });
	    });
</script>
</head>
<body>
<div class="container">
   <div class="row">
   	  <div class="col-xs-12 to">
      <span>产品上传</span>
      </div>
   </div>
</div>
<div class="container cen">
   <div class="row">
   	  <div class="col-xs-12 lie">
      	<img src="${jpath}/static/qdyangshi/assets/shuxian.png" />
      	<span class="cen1">产品简介</span><br />
     
      	<span class="cen2">产品名称：</span>
        <input type="text" name="title" id="title" placeholder="请输入产品名称" class="cen3" /><br />

      	<span class="cen2">产品金额：</span>
        <input type="text" name="jine" id="jine" placeholder="请输入产品金额" class="cen3" value="" onKeyUp="amount(this)" onBlur="overFormat(this)"/><br />
      	<span class="cen21">办理条件：</span>
        <textarea name="tiaojian" id="tiaojian" cols="40" rows="6" placeholder="请输入办理条件" class="cen4"></textarea><br />
        <span class="cen21">办理流程：</span>
        <textarea name="liucheng" id="liucheng" cols="40" rows="6" placeholder="请输入办理流程" class="cen4"></textarea><br />
        <span class="cen21">办理简介：</span>
        <textarea name="jianjie" id="jianjie" cols="40" rows="6" placeholder="请输入办理简介" class="cen4"></textarea>
      </div>
   </div>
    <div class="row">
   	  <div class="col-xs-12 lie">
      	<img src="${jpath}/static/qdyangshi/assets/shuxian.png" />
      	<span class="cen1">关于我们</span><br />
      	<span class="cen2">公司规模：</span>
        <input type="text" id="gy1" placeholder="请输入产品名称" class="cen3"/><br />
      	<span class="cen2">金融机构：</span>
        <input type="text" id="gy2" placeholder="请输入金融机构" class="cen3"/><br />
        <span class="cen2">融资周期：</span>
        <input type="date" name="shixian" id="shixian" onclick="times()" id="shixian" min="" max="2099-12-31" placeholder="请输入融资周期" class="cen3"/><br />
        <span class="cen2">联系部门：</span>
        <input type="text" name="aboutwomen" id="gy3" placeholder="请输入联系部门" class="cen3"/><br />
        <span class="cen2">联系电话：</span>
        <input type="text" name="lxwomen" id="lxwomen" placeholder="请输入联系电话" class="cen3"/><br />
        <span class="cen2">发布时间：</span>
        <input type="date" name="fbtime" onclick="times()" disabled="disabled" id="shixian" min="" max="2099-12-31" placeholder="请输入发布时间" class="cen3"/>
      </div>
   </div>
   <div class="row">
   	  <div class="col-xs-12 lie">
      	<img src="${jpath}/static/qdyangshi/assets/shuxian.png" />
      	<span class="cen1">图片上传</span><br />
      	<span class="cen2">上传照片：</span>
      </div>
    </div>
    <div class="row lie">  
      <div class="col-xs-4 last"> 
      <div class="last1 addPic">
      	<img src="${jpath}/static/qdyangshi/assets/jiahao.png" />
        <span>添加照片</span>
      </div>
      <input id="files_btn" type="file" style="display:none;"/>
      </div>
     
    </div>
      <div class="row lie">
          <div class="col-xs-12">
              <div class="last3" id="buttonAll">
              <button>保存预览</button>
              <button class="last4">发布</button>
              </div>
          </div>
      </div>
   </div>
</body>
<script type="text/javascript">
		function times(){//获取现在时间
			var d = new Date()
			var vYear = d.getFullYear()
			var vMon = d.getMonth() + 1
			var vDay = d.getDate()
			var h = d.getHours(); 
			var m = d.getMinutes(); 
			var se = d.getSeconds(); 
			var s=vYear+'-'+vMon+'-'+vDay;//+' '+h+':'+m+':'+se;
			$("#shixian").attr("min",s);
		}
</script>
<script type="text/javascript">
	
	$(function(){
		function huoqu(){//获取所有的数据的方法(初始版，请优化成获取所有数据的方法)
			var qtitle=$("#title").val();
			var title=$("#title").attr("name");
			var qjine=$("#jine").val();
			var jine=$("#jine").attr("name");
			var qtiaojian=$("#tiaojian").val();
			var tiaojian=$("#tiaojian").attr("name");
			var qliucheng=$("#liucheng").val();
			var liucheng=$("#liucheng").attr("name");
			var qjianjie=$("#jianjie").val();
			var jianjie=$("#jianjie").attr("name");
			//拼接字符串（以&&拼接）
			var gy1=$("#gy1").val();
			var gy2=$("#gy2").val();
			var gy3=$("#gy3").val();
			var qaboutwomen=gy1+"&&"+gy2+"&&"+gy3;
			var aboutwomen=$("#gy3").attr("name");
			var qshixian=$("#shixian").val();
			var shixian=$("#shixian").attr("name");
			var qlxwomen=$("#lxwomen").val();
			var lxwomen=$("#lxwomen").attr("name");
			var json1="";
				json1='{'+title+':"'+qtitle+'",'+jine+':"'+qjine+'",'+
				tiaojian+':"'+qtiaojian+'",'+liucheng+':"'+qliucheng+'",'+jianjie
				+':"'+qjianjie+'",'+aboutwomen+':"'+qaboutwomen+'",'+shixian
				+':"'+qshixian+'",'+lxwomen+':"'+qlxwomen+'"}';
			var obj = eval('(' + json1 + ')');
			return obj;
			
		}
		$("#buttonAll").children().eq(0).click(function(){
			var a=huoqu();
			alert("敬请期待");
		})
		$("#buttonAll").children().eq(1).click(function(){
			
				var shixian=$("#shixian").val();
				if(shixian=="" || shixian==null){
					alert("日期格式不正确,请选择正确日期"+shixian);
					return;
				}
				var datime=$("#shixian").attr("min");
				var dtime=$("#shixian").val();
				var t1=new Date(datime.replace("-","/"));
				var t2=new Date(dtime.replace("-","/"));
				if(t1>=t2){
					alert("周期至少大于一天");
					return;
				}
				//判断电话是否符合规则
				var isMobile=/^1[34578]\d{9}$/; 
				var lxwomen=$("#lxwomen").val();
				if(!isMobile.test(lxwomen)){
					alert("请输入正确的电话号码");
					return;
				}
				
				var qtitle=$("#title").val();
				var qjine=$("#jine").val();
				var qtiaojian=$("#tiaojian").val();
				var qliucheng=$("#liucheng").val();
				var qjianjie=$("#jianjie").val();
				//拼接字符串（以&&拼接）
				var gy1=$("#gy1").val();
				var gy2=$("#gy2").val();
				var gy3=$("#gy3").val();
				var qaboutwomen=gy1+"&&"+gy2+"&&"+gy3;
				var qshixian=$("#shixian").val();
				var qlxwomen=$("#lxwomen").val();
			
				$.post("${jpath}/qdChanping",{title:qtitle,jine:qjine,tiaojian:qtiaojian,liucheng:qliucheng,
				jianjie:qjianjie,aboutwomen:qaboutwomen,shixian:qshixian,lxwomen:qlxwomen},function(data){
					var json=$.parseJSON(data);
					alert(json.resMsg);
					//window.location.href="${jpath}/Chanpingwy";
				})
		})
	})
</script>
<script type="text/javascript">
	/**  
* 实时动态强制更改用户录入  
* arg1 inputObject  
**/  
function amount(th){  
    var regStrs = [  
        ['^0(\\d+)$', '$1'], //禁止录入整数部分两位以上，但首位为0  
        ['[^\\d\\.]+$', ''], //禁止录入任何非数字和点  
        ['\\.(\\d?)\\.+', '.$1'], //禁止录入两个以上的点  
        ['^(\\d+\\.\\d{2}).+', '$1'] //禁止录入小数点后两位以上  
    ];  
    for(var i=0; i<regStrs.length; i++){  
        var reg = new RegExp(regStrs[i][0]);  
        th.value = th.value.replace(reg, regStrs[i][1]);  
    }  
}  
   
/**  
* 录入完成后，输入模式失去焦点后对录入进行判断并强制更改，并对小数点进行0补全  
* arg1 inputObject  
**/  
function overFormat(th){  
    var v = th.value;  
    if(v === ''){  
        v = '0.00';  
    }else if(v === '0'){  
        v = '0.00';  
    }else if(v === '0.'){  
        v = '0.00';  
    }else if(/^0+\d+\.?\d*.*$/.test(v)){  
        v = v.replace(/^0+(\d+\.?\d*).*$/, '$1');  
        v = inp.getRightPriceFormat(v).val;  
    }else if(/^0\.\d$/.test(v)){  
        v = v + '0';  
    }else if(!/^\d+\.\d{2}$/.test(v)){  
        if(/^\d+\.\d{2}.+/.test(v)){  
            v = v.replace(/^(\d+\.\d{2}).*$/, '$1');  
        }else if(/^\d+$/.test(v)){  
            v = v + '.00';  
        }else if(/^\d+\.$/.test(v)){  
            v = v + '00';  
        }else if(/^\d+\.\d$/.test(v)){  
            v = v + '0';  
        }else if(/^[^\d]+\d+\.?\d*$/.test(v)){  
            v = v.replace(/^[^\d]+(\d+\.?\d*)$/, '$1');  
        }else if(/\d+/.test(v)){  
            v = v.replace(/^[^\d]*(\d+\.?\d*).*$/, '$1');  
            ty = false;  
        }else if(/^0+\d+\.?\d*$/.test(v)){  
            v = v.replace(/^0+(\d+\.?\d*)$/, '$1');  
            ty = false;  
        }else{  
            v = '0.00';  
        }  
    }  
    th.value = v+"万元";   
}  
</script>
</html>
