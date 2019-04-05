
$(function(){
	$.fn.extend({
		loadCombox:function(){
			this.find("input[type=comboxSelect]").each(function(index,_this){
				var selid=$(_this).attr("id");
				var selname=$(_this).attr("name");
				var selvalue=$(_this).attr("value");
				var Loadurl=$(_this).attr("Loadurl");
				$(_this).hide();
				var selr='<select id="'+selid+'_selects" class="col-xs-10 col-sm-5"></select>'
				$(_this).after(selr);
					//多选下拉框
					$.post(Loadurl,{},function(data){
						var json=$.parseJSON(data);		
						console.log(json);
						var comboxJson=json.obj;
						var xlstr='<option value="-1">请选择</option>';
						for ( var i = 0; i < comboxJson.length; i++) {
							if(selvalue=="" || selvalue==null){
								xlstr+='<option value="'+comboxJson[i].id+'">'+comboxJson[i].name+'</option>';
							}else{
								var selected='';
								if(selvalue==comboxJson[i].id){
									selected='selected="selected"';
								}
								xlstr+='<option value="'+comboxJson[i].id+'" '+selected+'>'+comboxJson[i].name+'</option>';
							}
						}
						$("#"+selid+"_selects").append(xlstr);
					})
					$("#"+selid+"_selects").change(function(){
						var zhi=$(this).val();
						$(_this).attr("value",zhi);
					})
				})
		},
		loadfy:function(json,cl,can1,url){
			$("#fy").remove();
			var zh_this=this;

			zh_this.after('<div class="modal-footer no-margin-top" style="display:none;" id="fy"></div>');
			$("#fy").append('<ul class="pagination pull-right no-margin" ></ul>');
			var tR=json.obj.totalRecord;
			if(tR>0){
				$("#fy").show();
				var prevab="";
				if(json.obj.pageNum==1){
					prevab="disabled";
				}
				var fyLi='<li class="diyi '+prevab+'"><a href="javascript:void(0);" onclick="">';
				fyLi+='第一页</a></li>';
				fyLi+='<li class="prev '+prevab+'"><a href="javascript:void(0);" onclick="">';
				fyLi+='<i class="icon-double-angle-left"></i></a></li>';
				for ( var i = 1; i <= json.obj.totalPage; i++) {
					var acStr='';
					if(json.obj.pageNum==i){
						acStr='active';
					}
					fyLi+='<li class="dangqian '+acStr+'" name="'+i+'"><a href="javascript:void(0);" onclick="">'+i+'</a></li>';
				/**75:52 */
				}
				var nextab="";
				if(json.obj.pageNum==json.obj.totalPage){
					nextab="disabled";
				}
				fyLi+='<li class="next '+nextab+'"><a href="javascript:void(0);" onclick="">';
				fyLi+='<i class="icon-double-angle-right"></i></a></li>';
				fyLi+='<li class="zuihou '+nextab+'"><a href="javascript:void(0);" onclick="">';
				fyLi+='最后一页</a></li>';
				$("#fy>ul").find("li").remove();
				$("#fy>ul").append(fyLi);
				
				$(".diyi").click(function(){
					if(can1.pageNum>1){
						can1.pageNum=1;
						zh_this.loadTb1(cl,can1,url,true);
					}
				})
				$(".prev").click(function(){
					if(can1.pageNum>1){
						can1.pageNum=can1.pageNum-1;
						zh_this.loadTb1(cl,can1,url,true);
					}
				})
				$(".dangqian").click(function(){
					var i=$(this).attr("name");
					can1.pageNum=i;
					zh_this.loadTb1(cl,can1,url,true);
				})
				$(".next").click(function(){
					if(json.obj.totalPage>can1.pageNum){
						can1.pageNum=can1.pageNum+1;
						zh_this.loadTb1(cl,can1,url,true);
					}
					
				})
				$(".zuihou").click(function(){
					if(json.obj.totalPage>can1.pageNum){
						can1.pageNum=json.obj.totalPage;
						zh_this.loadTb1(cl,can1,url,true);
					}
					
				})
			}
		},
		//插件2（User）
		loadTb1:function(cl,can1,url,isfy){
			var zh_this=this;
			$.post(url,can1,function(data){
				var json=$.parseJSON(data);
			if(isfy){
				zh_this.loadfy(json,cl,can1,url);	
			}

				
				if(json.res=="1"){
					var result=json.obj.results;
					var str='<tr>';
					for ( var i = 0; i < result.length; i++) {
						for ( var j = 0; j < cl.length; j++) {
							//console.log(cl);	
							var ro=cl[j].name;
							var rw=cl[j].cl;
							var can='';
							if(typeof rw=="function" && rw!=null){
								 can=rw(j,result[i][""+ro+""]);	
							}
							if(can!=''){
								str+='<td class="center">'+can+'</td>';
							}else{
								str+='<td>'+result[i][""+ro+""]+'</td>';
							}
							
						}
						str+='</tr>';
					}
					zh_this.children("tbody").eq(0).children("tr").remove();
					zh_this.children("tbody").eq(0).append(str);
				}
			});			
		}
	});
	
});