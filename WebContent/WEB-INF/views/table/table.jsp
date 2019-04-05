<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>用户行业</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${jpath}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/font-awesome.min.css" />
		<script src="${jpath}/static/assets/js/jquery-2.0.3.min.js"></script>
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-skins.min.css" />

		<script src="${jpath}/static/assets/js/ace-extra.min.js"></script>
		<script src="${jpath}/js/CJxialakuang.js"></script>
	</head>

	<body>
		

					<div class="page-content">
						<div class="page-header">
							<h1>
								Tables
								<small>
									<i class="icon-double-angle-right"></i>
									Static &amp; Dynamic Tables
								</small>
							</h1>
						</div><!-- /.page-header -->
<div class="modal-footer no-margin-top"  id="">
<button onclick="javascript:window.location.href='${jpath}/insertwy';"  class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
<i class="icon-remove"></i>添加</button>
<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal" id="shanchuALL">
<i class="icon-remove"></i>批量操作</button>
</div>
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															<label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
														<th>ID</th>
														<th>名称</th>
														<th class="hidden-480">状态</th>

														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															上级
														</th>
														<!-- <th class="hidden-480">Status</th> -->

														<th></th>
													</tr>
												</thead>
	
												<tbody>
	
												</tbody>
	
											</table>
										</div><!-- /.table-responsive -->
									</div><!-- /span -->
							    </div><!-- /row -->
						    </div>
					    </div>
			         </div>


		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${jpath}/static/assets/js/bootstrap.min.js"></script>
		<script src="${jpath}/static/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="${jpath}/static/assets/js/jquery.dataTables.min.js"></script>
		<script src="${jpath}/static/assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->

		<script src="${jpath}/static/assets/js/ace-elements.min.js"></script>
		<script src="${jpath}/static/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">	
		
			jQuery(function($) {
				var oTable1 = $('#sample-table-2').dataTable( {
				"aoColumns": [
			      { "bSortable": false },
			      null, null,null, null, null,
				  { "bSortable": false }
				] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
		</script>
	<!--  -->

<script type="text/javascript">
	$(function(){
		$("#shanchuALL").click(function(){
		 var checkedList=new Array();
		 var checkedNum =$("input[name='subcheck']:checked").length;
		 if(checkedNum==0){
				alert("请至少选择一项");
				return;
		 }
		 $("input[name='subcheck']:checked").each(function(){
		 			var i= $(this).val();
                    checkedList.push(i);
                });
                alert(checkedList.toString());
                var js=checkedList.toString();
			$.post("${jpath}/shanchuAllyh",{item:js},function(data){
				  var json=$.parseJSON(data);
					if(json.res==0){
						window.location.reload(); 
					}
			})
		})
	})
	
	function editThis(id){
		var con=confirm("是否修改？");
		if(con==true){
			window.location.href="${jpath}/testyhhangye?id="+id;
		}
		
	}

	function delThis(id){
		var con=confirm("是否删除？");
		if(con==true){
			$.post("${jpath}/del",{id:id},function(data){
			//console.log(data);
				var json=$.parseJSON(data);
				//alert(json.res);
				if(json.res==0){
					//Loadtbl(1,4);
					window.location.reload() 
				}
			});
		}else{
			alert("这是一个明智的选择!");
		}
	}
	
		$(function(){
			//封装插件
			var shuzu=[
				{
					name:'id',
					cl:function(index,val){
						return '<label><input name="subcheck" type="checkbox" value="'+val+'" class="ace" /><span class="lbl"></span></label>';
					}
				},{
					name:'id'
				},{
					name:'mingcheng'
				},{
					name:'zhuangtai'
					
				},{
					name:'shangji'
				},{
					name:'id',
					cl:function(index,val){
						return '<div class="btn-group"><button title="修改数据"  class="btn btn-xs btn-info" onclick="editThis(\''+val+'\')"><i class="icon-edit bigger-120"></i></button><button title="删除数据" class="btn btn-xs btn-danger" onclick="delThis(\''+val+'\')"><i class="icon-trash bigger-120"></i></button></div>';
					}
				}	
			];
			var can1={pageNum:1,pageSize:4};
			$("#sample-table-1").loadTb1(shuzu,can1,"${jpath}/findbypage",true);
			
		})
</script>

</body>
</html>
