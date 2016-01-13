$(function(){
	/*enumsParent*/
	$('#dg_enumsParent').datagrid({    
		
		onBeforeLoad : function(param){
			//$("#dd_dlg_parent").dialog('close');
		},
		
	    url:'backEnumsAction_getBackEnmusParentForList',   
	    
	    loadMsg : '正在玩命的为您加载。。。', //加载数据是显示的提示 
		
	    pagination : true, //是否显示分页工具栏
		
		fitColumns : true,  //真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动。
		
		rownumbers : false,  //是否显示行号
		
		singleSelect : true,  //只允许选择一行
		
		//fit:true, //自动适应高度和宽度
		
		striped : true,  //表格显示条纹
		
		pageSize:5,  //初始页面显示数据条数
		
		pageNumber:1, //当前页码
		
		pageList:[1,5,10,15], // 选择当页显示数据显示条数
		
		scrollbarSize: 0,   //滚动条的宽度
		
		toolbar: '#tb_enumsParent',
		
		onClickRow: function(rowIndex, rowData){
			onloadBackEnums(rowData.evalue);
		},
		
	    columns:[[    
	       /* {
			field : 'id',
			title : '产品编号',
			width : 100,
			align : 'center'
		}, */{
			field : 'evalue',
			title : '枚举KEY',
			width : 100,
			align : 'center'
		}, {
			field : 'ename',
			title : '枚举名称',
			width : 100,
			align : 'center',
			text  : '123'
		}, {
			field : 'edesc',
			title : '枚举描述',
			width : 100,
			align : 'center',
			text  : '123'
		}, {
			field : 'isDeleteStr',
			title : '状态(是否可用)',
			width : 100,
			align : 'center'
		}, {
			field : 'createUser',
			title : '创建人',
			width : 100,
			align : 'center'
		}, {
			field : 'createTimeStr',
			title : '创建时间',
			width : 100,
			align : 'center'
		},{
			field : 'updateUser',
			title : '修改人',
			width : 100,
			align : 'center'
		}, {
			field : 'updateTimeStr',
			title : '修改时间',
			width : 100,
			align : 'center'
		},
	    ]],
	    onLoadSuccess : function(data){
	    	$("#dd_dlg_parent").dialog('close');
	    	$("#dd_dlg_enums").dialog('close');
	    }
	});
	
	page("enumsParent");   //翻页汉化
	
	/*$("#add_enumsParent").linkbutton({
		onClick:function(){
			$('#win_enumsParent').dialog({    
			    width : 500,
			    height : 200,
			    title : '新增枚举值',
			    onClose : function(){
			    	$("#s1,#s2,#toolBar_s1_enumsParent").addClass("span_addEnumsParent");
			    },
			}); 
			$("#s1,#s2,#toolBar_s1_enumsParent").removeClass("span_addEnumsParent");
		}
	});*/
	$("#add_enumsParent").linkbutton({
		onClick:function(){
			//$("#dd_dlg_parent").css({display:"block"});
			$('#dd_dlg_parent').panel('open');
		}
	});
	

});







//-----------------------------初始化枚举值datagrid------------------------------------------------
onloadBackEnums(0);
function onloadBackEnums(queryId){
	/*enums*/
	$('#dg_enums').datagrid({    
		
	    url:'backEnumsAction_getBackEnmusByQueryId?queryId='+queryId,   
	    
	    loadMsg : '正在玩命的为您加载。。。', //加载数据是显示的提示 
		
	    pagination : true, //是否显示分页工具栏
		
		fitColumns : true,  //真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动。
		
		rownumbers : false,  //是否显示行号
		
		//fit:true, //自动适应高度和宽度
		
		singleSelect : true,  //只允许选择一行
		
		striped : true,  //表格显示条纹
		
		pageSize:5,  //初始页面显示数据条数
		
		pageNumber:1, //当前页码
		
		pageList:[1,5,10,15], // 选择当页显示数据显示条数
		
		scrollbarSize: 0,   //滚动条的宽度
		
		toolbar: '#tb_enums',
		
		
	    columns:[[    
	       /* {
			field : 'id',
			title : '产品编号',
			width : 100,
			align : 'center'
		}, */
	       {
			field : 'key',
			title : '枚举KEY',
			width : 100,
			align : 'center'
		}, {
			field : 'value',
			title : '枚举描述',
			width : 100,
			align : 'center',
			text  : '123'
		}, {
			field : 'createUser',
			title : '创建人',
			width : 100,
			align : 'center'
		}, {
			field : 'createTimeStr',
			title : '创建时间',
			width : 100,
			align : 'center'
		},{
			field : 'updateUser',
			title : '修改人',
			width : 100,
			align : 'center'
		}, {
			field : 'updateTimeStr',
			title : '修改时间',
			width : 100,
			align : 'center'
		},
	    ]],
	});
	page("enums");   //翻页汉化
	
	$("#add_backEnums").linkbutton({
		onClick:function(){
			$('#dd_dlg_enums').panel('open');
		}
	});
}
/**
 * 
 * 新增枚举值类型
 * 
 */
function saveEnumsParent(){
	var s1_text = $("#s1_text").val();
	var s2_text = $("#s2_text").val();
	var s3_text = $("#s3_text").val();
	if(s1_text!=null && s1_text!='' && s2_text!=null && s2_text!=''){
		$.ajax({                                                                     
			url : "backEnumsAction_saveEnumsParent",
			type : 'post',
			data :'enumsParent.evalue='+s1_text+'&enumsParent.ename='+s2_text+'&enumsParent.edesc'+s3_text,
			dataType : "json",
			async: false,
			success : function(root) {
				if(root.total==1){
					var content = "<div style='margin: 0 auto;'>添加成功！</div>";
					showMsgBox('提示', content, 2);
					$('#dd_dlg_parent').dialog('close');
					$('#dg_enumsParent').datagrid("reload");
					
				}else{
					var content = "<div style='margin: 0 auto;'>添加失败,请联系管理员！</div>";
					showMsgBox('提示', content, 2);
				}
			}
		});
	}else{
		alertMsgBox("提示","码值和名称不能为空");
	}
}

/**
 * 
 * 新增详细枚举值
 * 
 */
function saveEnumsParent(){
	var s1_text = $("#s1_text").val();
	var s2_text = $("#s2_text").val();
	var s3_text = $("#s3_text").val();
	if(s1_text!=null && s1_text!='' && s2_text!=null && s2_text!=''){
		$.ajax({                                                                     
			url : "backEnumsAction_saveBackEnums",
			type : 'post',
			data :'enumsParent.evalue='+s1_text+'&enumsParent.ename='+s2_text+'&enumsParent.edesc'+s3_text,
			dataType : "json",
			async: false,
			success : function(root) {
				if(root.total==1){
					var content = "<div style='margin: 0 auto;'>添加成功！</div>";
					showMsgBox('提示', content, 2);
					$('#dd_dlg_parent').dialog('close');
					$('#dg_enumsParent').datagrid("reload");
					
				}else{
					var content = "<div style='margin: 0 auto;'>添加失败,请联系管理员！</div>";
					showMsgBox('提示', content, 2);
				}
			}
		});
	}else{
		alertMsgBox("提示","码值和名称不能为空");
	}
}


function onLoanPageStyle(){
	
}

