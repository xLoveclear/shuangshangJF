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
			<form class="form-horizontal" method="post" action="${jpath}/adds" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名 </label>
			
								<div class="col-sm-9">
									<input type="hidden" name="id" value="01">
									<input type="text" id="form-field-1" name="name" placeholder="姓名" class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
					
					<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">性别 </label>
	
								<div class="col-sm-9">
									<input type="text" id="form-field-1" name="sex" placeholder="性别 " class="col-xs-10 col-sm-5" />
								</div>
							</div>
					<div class="space-4"></div>
							
				<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" type="submit">
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
	

</body>
</html>
	