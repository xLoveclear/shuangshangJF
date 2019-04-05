
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
								xlstr+='<option value="'+comboxJson[i].id+'">'+comboxJson[i].lmname+'</option>';
							}else{
								var selected='';
								if(selvalue==comboxJson[i].id){
									selected='selected="selected"';
								}
								xlstr+='<option value="'+comboxJson[i].id+'" '+selected+'>'+comboxJson[i].lmname+'</option>';
							}
						}
						$("#"+selid+"_selects").append(xlstr);
					})
					$("#"+selid+"_selects").change(function(){
						var zhi=$(this).val();
						$(_this).attr("value",zhi);
					})
				})
		}
		
});
});