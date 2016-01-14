$(function(){
	
	$('#dg_right_role').datagrid({   
		
	    url:'backRoleAction_getAllRoles',    
	    
	    loadMsg : '正在玩命的为您加载。。。', //加载数据是显示的提示 
		
	    pagination : false, //是否显示分页工具栏
		
		fitColumns : true,  //真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动。
		
		rownumbers : false,  //是否显示行号
		
		singleSelect : true,  //只允许选择一行
		
		//fit:true, //自动适应高度和宽度
		
		striped : true,  //表格显示条纹
		
		fit : true,
		
		scrollbarSize: 0,   //滚动条的宽度
		
		width : 240,
		
		height : 400,
		
	    columns : [[
	      {
			field : 'id',
			title : '角色编号',
			width : 50,
			align : 'center',
		},{
			field : 'name',
			title : '角色名称',
			width : 100,
			align : 'center',
		},
		]],
		
		onClickRow : function(rowIndex, rowData){
			onLoadTree(rowData.id);
		}
	});

});


function onLoadTree(id){
	
	$('#tt_tree').tree({   
		url  : 'backRightAction_getAllRights?id='+id,
	});
}