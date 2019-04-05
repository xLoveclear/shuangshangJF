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
		<script src="${jpath}/js/CJxialakuang.js"></script>
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
							<div class="form-group">
								<c:if test="${canshu==0}">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">添加 </label>
								</c:if>
								<div class="col-sm-9">
									
									<input type="hidden" name="id" id="id" value="${yhh.id}" placeholder="名称" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">名称 </label>
	
								<div class="col-sm-9">
									<input type="text" name="name" id="name" value="${yhh.name}" placeholder="名称 " class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">待定.. </label>
								
								<div class="col-sm-9" >
									<input type="comboxSelect" 
									name="studentname" 
									id="aa" 
									value="" 
									Loadurl="${jpath}/xialk"/>
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">PHONE </label>
	
								<div class="col-sm-9">
									<input type="text" name="phone" id="phone" value="${yhh.phone}" placeholder="phone"  class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					<c:if test="${canshu==0}">
					<input type="hidden" name="canshu" id="canshu" value="${canshu }"/>
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">QIYE </label>
	
								<div class="col-sm-9">
									<input type="text" name="qiye" id="qiye" value="${yhh.qiye}" placeholder="qiye"  class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					</c:if>	
					<c:if test="${canshu!=0}">
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">附件</label>
	
								<div class="col-sm-9">
									<c:if test="${yhh.userfj!=''}">
									<img src="${jpath}/${yhh.userfj}"/>
									<p onclick="userfjdel()">删除?</p>
									</c:if>
									<c:if test="${yhh.userfj==''}">
									<p>还没有附件!</p>
									</c:if>
								</div>
							</div>
					<div class="space-4"></div>
					</c:if>			
					<!-- 上传图片 -->
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">头像 </label>
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
					<input type="hidden" name="fjid" id="fjid" value=""/>
					<input type="hidden" name="scren" id="scren" value="${yhh.id}"/>
					<input type="hidden" name="sctime" id="sctime" value=""/>
					<input type="hidden" name="userfj" id="userfj" value="${yhh.userfj}"/>
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
		
		function userfjdel(){
					var con=confirm("是否删除？");
					if(con==true){
					var scren=$("#scren").val();
					$.post("${jpath}/userfjdel",{scren:scren},function(data){
					//console.log(data);
						var json=$.parseJSON(data);
						//alert(json.res);
						/**window.location.href="${jpath}/wangye";*/
						if(json.res==0){
							window.location.reload()
						}
					})
				}
			}
		
		
		$(function(){
			$("#subBtn").click(function(){
				var idval=$("#name").val();
				if(idval=="" || idval==null){
					alert("请填写用户名称")
					return;
				}
				var qiye=$("#qiye").val();
				var canshu=$("#canshu").val();
				//判断电话是否符合规则
				var isMobile=/^1[34578]\d{9}$/; 
				var lxwomen=$("#phone").val();
				if(!isMobile.test(lxwomen)){
					alert("请输入正确的电话号码");
					return;
				}
				
				if(canshu!=0){
				var json1=getFrom("#stuForm");
					$.post("${jpath}/userxiugai",json1,function(data){
						//console.log(data);
						var json=$.parseJSON(data);
						alert(json.resMsg);
						window.location.href="${jpath}/findbypageuser";
					})
				}else{
					var json1=getFrom("#stuForm");
					$.post("${jpath}/user",json1,function(data){
						//console.log(data);
						var json=$.parseJSON(data);
						alert(json.resMsg);
						window.location.href="${jpath}/findbypageuser";
					})
				}//1
				
			})
		})
	
	</script>
</body>
</html>
