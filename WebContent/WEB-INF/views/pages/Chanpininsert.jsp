<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset=" charset="utf-8" />
		<title>界面框架</title>
		<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0"/>
		<link rel="stylesheet" href="${jpath}/static/plugins/uploader/css/webuploader.css" />
		<link rel="stylesheet" href="${jpath}/static/plugins/uploader/style.css" />
		
		<!-- basic styles -->
		<link href="${jpath}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-skins.min.css" />

		<script src="${jpath}/static/assets/js/ace-extra.min.js"></script>
		<script src="${jpath}/static/assets/js/jquery-2.0.3.min.js"></script>
		<script src="${jpath}/js/CJxwxialakuang.js"></script>
		<script type="text/javascript">
			var jpath='${jpath}';
		</script>
		<script type="text/javascript" src="${jpath}/static/plugins/uploader/dist/webuploader.js"></script>
    	<script type="text/javascript" src="${jpath}/static/plugins/uploader/upload.js"></script>
	</head>

	<body style="background-color:#fff;">
	<div class="page-header">
		<h1> 
			ac控制台 
			<small>
				
				 查看
			</small>
		</h1>
	</div><!-- /.page-header -->
	<div class="row">
		<div class="col-xs-12">
			<form class="form-horizontal" id="stuForm"  role="form">
					<c:if test="${canshu==0}">
						<input type="hidden" id="canshu" value="${canshu }"/>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 添加 </label>
			
								<div class="col-sm-9">
									
									<input type="hidden" name="id" id="id" value="${yhh.id }" placeholder="名称" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					</c:if>	
					<c:if test="${canshu!=0}">
					<input type="hidden" name="id" id="id" value="${yhh.id }"/>
					</c:if>	
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品标题 </label>
	
								<div class="col-sm-9">
									<input type="text" name="title" id="title" value="${yhh.title}" placeholder="产品标题" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">时限</label>
	
								<div class="col-sm-9">
									<input type="date" onclick="times()" name="shixian" id="shixian" min="" max="2099-12-31" class="col-xs-10 col-sm-5"/>
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">简介</label>
	
								<div class="col-sm-9">
									<input type="text" name="jianjie" id="jianjie" value="${yhh.jianjie}" placeholder="简介" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">条件</label>
	
								<div class="col-sm-9">
									<input type="text" name="tiaojian" id="tiaojian" value="${yhh.tiaojian}" placeholder="条件" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">联系我们</label>
	
								<div class="col-sm-9">
									<input type="text" name="lxwomen" id="lxwomen" value="${yhh.lxwomen}" placeholder="联系我们" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					<c:if test="${cs==0}">
					<input type="hidden" id="cs" value="${cs}"/>
					<input type="hidden" name="shcishu" id="shcishu" value="${yhh.shcishu}"/>
					<input type="hidden" name="shtime" id="shtime" value="${yhh.shtime}"/>
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">驳回原因</label>
	
								<div class="col-sm-9">
									<input type="hidden" name="bohuiyy" id="bohuiyy" value="${yhh.bohuiyy}" placeholder="驳回原因" class="col-xs-10 col-sm-5" />
									<textarea rows="6" cols="45" id="dian" onkeydown="func()">${yhh.bohuiyy}</textarea>
								
								</div>
							</div>
					<div class="space-4"></div>
					</c:if>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">发布人</label>
	
								<div class="col-sm-9">
									<input type="text" name="faburen" id="faburen" value="${name.loginid}" placeholder="发布人" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					<c:if test="${canshu!=0}">	
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品状态</label>
	
								<div class="col-sm-9">
									<input type="text" name="cpstatic" id="cpstatic" value="${yhh.cpstatic}" placeholder="产品状态" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					</c:if>	
					<!-- 上传图片 -->
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">产品图片</label>
						<div class="col-sm-9">
							<div id="wrapper" style="width:400px">
						        <div id="container">
						            <!--头部，相册选择和格式选择-->
						
						            <div id="uploader">
						                <div class="queueList">
						                    <div id="dndArea" class="placeholder">
						                        <div id="filePicker"></div>
						                        或将照片拖到这里，单次最多可选300张
						                    </div>
						                </div>
						                <div class="statusBar" style="display:none;">
						                    <div class="progress">
						                        <span class="text">0%</span>
						                        <span class="percentage"></span>
						                    </div><div class="info"></div>
						                    <div class="btns">
						                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
						                    </div>
						                </div>
						            </div>
						        </div>
						    </div>
					   	</div>
					</div>
					<input type="hidden" name="tupian" id="tupian" value="${yhh.tupian}"/>
					<div class="space-4"></div>
					
				<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" id="subBtn" type="button">
									<i class="icon-ok bigger-110"></i>
									提交
								</button>

								&nbsp; &nbsp; &nbsp;
								<button class="btn" type="reset">
									<i class="icon-undo bigger-110"></i>
									还原
								</button>
							</div>
						</div>
							
					</form>
		</div>
	</div>
	<!--	method="post" action="${jpath}/add"-->
	<script type="text/javascript">
		function func(){
			var a=$("#dian").val();
			$("#bohuiyy").val(a);
		}
						
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
			$("#stuForm").loadCombox();
			}) 
	
		function getFrom(_form){
				var dataJSON = "";
				var dataArr = [];
				$(_form).find("input").each(function(index,_this){
					var iptName=$(_this).attr("name");
					if(iptName!="" && iptName!=null){
						dataArr.push(iptName+":'"+$(_this).val()+"'");
					}
				});
				dataJSON ="{"+dataArr.join(",")+"}";
				var jsonFroms=eval('('+dataJSON+')');
				return jsonFroms;
		}
		
		$(function(){
			
			$("#subBtn").click(function(){
				var canshu=$("#canshu").val();
				var cs=$("#cs").val();
				//alert($("#shcishu").val());
				var shcishu=$("#shcishu").val();
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
					alert("时限至少大于一天");
					return;
				}
				//判断电话是否符合规则
				var isMobile=/^1[34578]\d{9}$/; 
				var lxwomen=$("#lxwomen").val();
				if(!isMobile.test(lxwomen)){
					alert("请输入正确的电话号码");
					return;
				}
				if(cs==0){
					if(shcishu!="" && shcishu!=null){
						shcishu=parseInt(shcishu)+1;
					}
					$("#shcishu").val(shcishu);
				}
				if(canshu!=0){
				var json1=getFrom("#stuForm");
					$.post("${jpath}/Chanpingxiugai",json1,function(data){
						console.log(data);
						var json=$.parseJSON(data);
						alert(json.resMsg);
						window.location.href="${jpath}/Chanpingwy";
					})
				}else{
					var json1=getFrom("#stuForm");
					$.post("${jpath}/Chanping",json1,function(data){
						console.log(data);
						var json=$.parseJSON(data);
						alert(json.resMsg);
						window.location.href="${jpath}/Chanpingwy";
					})
				}//1
				
			})
		});
	</script>
</body>
</html>
