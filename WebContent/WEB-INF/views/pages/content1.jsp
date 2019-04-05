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
		<!-- basic styles -->
		<link href="${jpath}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-skins.min.css" />

		<script src="${jpath}/static/assets/js/ace-extra.min.js"></script>
		<script src="${jpath}/static/assets/js/jquery-2.0.3.min.js"></script>
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
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名 </label>
			
								<div class="col-sm-9">
									<input type="hidden" name="id" id="id" value="01">
									<input type="text" name="name" id="name" placeholder="姓名" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">性别 </label>
	
								<div class="col-sm-9">
									<input type="text" name="sex" id="sex" placeholder="性别 " class="col-xs-10 col-sm-5" />
								</div>
							</div>
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
			var json1=getFrom("#stuForm");
				$.post("${jpath}/add",json1,function(data){//已使用过add
					console.log(data);
					var json=$.parseJSON(data);
					alert(json.resMsg);
				});
			});
		})
	</script>
</body>
</html>
