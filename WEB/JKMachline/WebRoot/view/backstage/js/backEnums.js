$(function(){
	/*enumsParent*/
	$('#dg_enumsParent').datagrid({    
		
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
			field : 'edesc',
			title : '枚举描述',
			width : 100,
			align : 'center',
			text  : '123'
		}, {
			field : 'isDelete',
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
			$('#dd_enumsParent').dialog({    
			    width : 500,
			    height : 200,
			    title : '新增枚举值',
			    buttons : "#bb_enumsParent",
			   /* buttons:[{
			    	text:'保存',
			    	iconCls:'icon-save',
			    	onClick:function(){
						
					}
				},{
					text:'关闭',
					iconCls:'icon-cancel',
					onClick:function(){
						//;panel 
						$("#dd_enumsParent").panel('close');
						//$("#dd_enumsParent").window('close');
						$("#s1,#s2").addClass("span_addEnumsParent");
					}
				}],*/
			    onClose : function(){
			    	$("#s1,#s2,#bb_enumsParent").addClass("span_addEnumsParent");
			    },
			}); 
			$("#s1,#s2,#bb_enumsParent").removeClass("span_addEnumsParent");
		}
	});

});



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
}
function saveEnumsParent(){
	
}

