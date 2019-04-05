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
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 新闻资讯 </label>
			
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
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻标题 </label>
	
								<div class="col-sm-9">
									
									<input type="text" name="title" id="title" value="${yhh.title}" placeholder="标题 " class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">发表人</label>
	
								<div class="col-sm-9">
									<input type="text" name="fbren" id="fbren" value="${name.loginid}" placeholder="发表人" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					<!-- 富文本标签 -->
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻内容 </label>
								<!-- 
								<div class="col-sm-9">
									<input type="hidden" name="xinwennr" id="xinwennr" value="${yhh.xinwennr}" placeholder="新闻内容"  class="col-xs-10 col-sm-5" />
									<textarea rows="6" cols="45" id="dian" onkeydown="func()">${yhh.xinwennr}</textarea>
								</div>
								 -->
								<div class="col-sm-9" >
							 	<script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/UEditor/ueditor.config.js"></script>
		    					<script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/UEditor/ueditor.all.min.js"> </script>
		    					<script type="text/javascript" charset="utf-8" src="${jpath}/static/plugins/UEditor/lang/zh-cn/zh-cn.js"></script>
								<script id="editor" type="text/plain" style="width:500px;height:140px;"></script>
								<script type="text/javascript">
									var ue = UE.getEditor('editor');
									
								</script>
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">新闻栏目编号 </label>
								
								<div class="col-sm-9" >
									<input type="comboxSelect" 
									name="xwlmbianhao" 
									id="aa" 
									value="${yhh.xwlmbianhao }" 
									Loadurl="${jpath}/Xinwencxxialk"/>
								</div>
							</div>
					<div class="space-4"></div>
					
					<!-- 上传图片 -->
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right" for="form-field-1">发表封面图片</label>
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
					<input type="hidden" name="fmtupian" id="fmtupian" value="${yhh.fmtupian}"/>
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
							$("#xinwennr").val(a);
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
				
				//富文本框
				var contentpar={};
				var content=UE.getEditor('editor').getContent();
				contentpar.xinwennr=content;
				
				var canshu=$("#canshu").val();
				if(canshu!=0){
					var json1=getFrom("#stuForm");
					var json2=$.extend(contentpar,json1);
					$.post("${jpath}/Xinwencxxiugai",json2,function(data){
						//console.log(data);
						var json=$.parseJSON(data);
						alert(json.resMsg);
						window.location.href="${jpath}/Xinwencxwy";
					})
				}else{
					var json1=getFrom("#stuForm");
					var json2=$.extend(contentpar,json1);
					$.post("${jpath}/Xinwencx",json2,function(data){
						//console.log(data);
						var json=$.parseJSON(data);
						alert(json.resMsg);
						window.location.href="${jpath}/Xinwencxwy";
					})
				}//1
				
			})
		});
	</script>
</body>
</html>
