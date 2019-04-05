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
		<title>产品</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${jpath}/static/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${jpath}/static/assets/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="${jpath}/static/plugins/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
		
		<script src="${jpath}/static/assets/js/jquery-2.0.3.min.js"></script>
		<script src="${jpath}/static/assets/js/ace-extra.min.js"></script>
		
		<!-- ztree样式与脚本 -->
		<script type="text/javascript" src="${jpath}/static/plugins/ztree/js/jquery.ztree.all.min.js"></script>
		
		
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
														<!-- 
														<th>ID</th>
														 -->
														<th>图片</th>
														<th>标题</th>
														<th>时限</th>
														<th>简介</th>
														<th>条件</th>
														<th>联系我们</th>	
														<th>产品状态</th>	
														
														<th>审核次数</th>
														<th>驳回原因</th>
														
														<th>发布人</th>	
														<th>发布时间</th>	
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
<button onclick="javascript:window.location.href='${jpath}/insertChanping';"  class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
		<i class="icon-remove"></i>
		添加
	</button>
	<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal" id="shanchuALL">
		<i class="icon-remove"></i>
		批量操作
	</button>
	<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal" id="goback">
		<i class="icon-remove"></i>
		返回产品列表
	</button>
<div class="modal-footer no-margin-top" style="display:none;" id="fy">
	<ul class="pagination pull-right no-margin" >
		
	</ul>
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
	
	$("#goback").click(function(){
			history.back(-1);
		})
	
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
			$.post("${jpath}/ChanpingAll",{item:js},function(data){
				  var json=$.parseJSON(data);
					if(json.res==0){
						Loadtbl(1,4);
					}
			})
		})
		
	})
	
	
	function prevBtn(nowpageNum,nowpageSize){
		if(nowpageNum>1){
			Loadtbl(nowpageNum-1,nowpageSize)
		}
	}
	function page(i,nowpageSize){
			Loadtbl(i,nowpageSize)
	}
	function nextBtn(nowpageNum,nowpageSize,totalPage){
		if(nowpageNum<totalPage){
			Loadtbl(nowpageNum+1,nowpageSize)
		}
	}
	
	function editThis(id){
		var con=confirm("是否修改？");
		if(con==true){
			window.location.href="${jpath}/testCp?id="+id;
		}
	}
	function delThis(id){
		var con=confirm("是否删除？");
		if(con==true){
			$.post("${jpath}/Chanpingdel",{id:id},function(data){
			//console.log(data);
				var json=$.parseJSON(data);
				//alert(json.res);
				if(json.res==0){
					Loadtbl(1,4);
				}
			});
		}else{
			alert("这是个明智的选择");
		}
	}
	
	function Loadtbl(nowpageNum,nowpageSize){
				$.post("${jpath}/Chanpingfindpage",{pageNum:nowpageNum,pageSize:nowpageSize},function(data){
						
						var json=$.parseJSON(data);
						if(json.res=="1"){
						var tR=json.obj.totalRecord;
						if(tR>0){
							$("#fy").show();
							var prevab="";
							if(nowpageNum==1){
								prevab="disabled";
							}
							var fyLi='<li class="prev '+prevab+'"><a href="javascript:void(0);" onclick="prevBtn('+nowpageNum+','+nowpageSize+')">';
							fyLi+='第一页</a></li>';
							
							fyLi+='<li class="prev '+prevab+'"><a href="javascript:void(0);" onclick="prevBtn('+nowpageNum+','+nowpageSize+')">';
							fyLi+='<i class="icon-double-angle-left"></i></a></li>';	
							for ( var i = 1; i <= json.obj.totalPage; i++) {
								var acStr='';
								if(json.obj.pageNum==i){
									acStr='class="active"';
								}
								fyLi+='<li '+acStr+'><a href="javascript:void(0);" onclick="page('+i+','+nowpageSize+')">'+i+'</a></li>';
							/**75:52 */
							}
							var nextab="";
							if(nowpageNum==json.obj.totalPage){
								nextab="disabled";
							}
							fyLi+='<li class="next '+nextab+'"><a href="javascript:void(0);" onclick="nextBtn('+nowpageNum+','+nowpageSize+','+json.obj.totalPage+')">';
							fyLi+='<i class="icon-double-angle-right"></i></a></li>';
							fyLi+='<li class="next '+nextab+'"><a href="javascript:void(0);" onclick="nextBtn('+(json.obj.totalPage-1)+','+nowpageSize+','+json.obj.totalPage+')">';
							fyLi+='最后一页</a></li>';
							$("#fy>ul").find("li").remove();
							$("#fy>ul").append(fyLi);
						}
						
						
						var trStr='';
						var result=json.obj.results;
						//console.log(result);
						if(result!=null && result!=""){
							for ( var i = 0; i < result.length; i++) {
								trStr+='<tr><td class="center"><label><input value="'+result[i].id+'" type="checkbox" name="subcheck" class="ace" /><span class="lbl"></span></label></td>';
								
								var gai=result[i].tupian;
							 	var zhi="请上传";
								if(gai!=""){
									var gi=gai.split("*");
										if(gi[0]!=""){
										trStr+='<td><img src="${jpath}'+gi[gi.length-2]+'"><a href="${jpath}'+gi[gi.length-2]+'" download="">下载它！</a></td>';
										}
								}else{
								trStr+='<td><img style="width:2.6rem" src="${jpath}/upload/file/chat.png">'+zhi+'</td>';
								}
								trStr+='<td>'+result[i].title+'</td>';
								trStr+='<td>'+result[i].shixian+'</td>';
								trStr+='<td>'+result[i].jianjie+'</td>';
								trStr+='<td>'+result[i].tiaojian+'</td>';
								trStr+='<td>'+result[i].lxwomen+'</td>';
								trStr+='<td>'+result[i].cpstatic+'</td>';
								trStr+='<td>'+result[i].shcishu+'</td>';
								trStr+='<td>'+result[i].bohuiyy+'</td>';
								trStr+='<td>'+result[i].faburen+'</td>';
								trStr+='<td>'+result[i].fabutime+'</td>';
								trStr+='<td><div class="visible-md visible-lg hidden-sm hidden-xs btn-group">';
								trStr+='<button title="修改数据" class="btn btn-xs btn-info" onclick="editThis(\''+result[i].id+'\')"><i class="icon-edit bigger-120"></i></button>';
								trStr+='<button title="删除数据" class="btn btn-xs btn-danger" onclick="delThis(\''+result[i].id+'\')"><i class="icon-trash bigger-120"></i></button></div></td></tr>';
							
							}
						}
							$("#sample-table-1>tbody").find("tr").remove();
							$("#sample-table-1>tbody").append(trStr);
							
							
						}
					});
					
			};
			
		$(function(){
	
			Loadtbl(1,4);

		})
		
		
</script>
</body>
</html>
