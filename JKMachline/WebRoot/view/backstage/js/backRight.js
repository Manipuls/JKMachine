$(function(){
	
	$('#dg_rightParent').datagrid({    
		
	    url:'backRightChildAndParentAction_getParentRights',   
	    
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
		
		toolbar: '#tb_rightParent',
		
		onClickRow: function(rowIndex, rowData){
			onLoadChildRights(rowData.id);
		},
		columns:[[    
			        {
					field : 'id',
					title : '产品编号',
					width : 100,
					align : 'center'
				},{
					field : 'rightName',
					title : '权限名称',
					width : 100,
					align : 'center'
				},{
					field : 'parentIdStr',
					title : '所属上级权限',
					width : 100,
					align : 'center'
				},{
					field : 'location',
					title : 'Tab页签名称',
					width : 100,
					align : 'center'
				},{
					field : 'isDeleteStr',
					title : '状态(是否可用)',
					width : 100,
					align : 'center'
				},
				]],
		});
	page("rightParent");
});




onLoadChildRights("");
function onLoadChildRights(id){
	$('#dg_rights').datagrid({    
		
	    url:'backRightChildAndParentAction_getChildRights?id='+id,   
	    
	    loadMsg : '正在玩命的为您加载。。。', //加载数据是显示的提示 
		
//	    pagination : true, //是否显示分页工具栏
		
		fitColumns : true,  //真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动。
		
		rownumbers : false,  //是否显示行号
		
		singleSelect : true,  //只允许选择一行
		
		//fit:true, //自动适应高度和宽度
		
		striped : true,  //表格显示条纹
		
//		pageSize:5,  //初始页面显示数据条数
		
//		pageNumber:1, //当前页码
		
//		pageList:[1,5,10,15], // 选择当页显示数据显示条数
		
		scrollbarSize: 0,   //滚动条的宽度
		
		toolbar: '#tb_rights',
		
		columns:[[    
			        {
					field : 'id',
					title : '产品编号',
					width : 100,
					align : 'center'
				},{
					field : 'rightName',
					title : '权限名称',
					width : 100,
					align : 'center'
				},{
					field : 'parentIdStr',
					title : '所属上级权限',
					width : 100,
					align : 'center'
				},{
					field : 'location',
					title : 'Tab页签名称',
					width : 100,
					align : 'center'
				},{
					field : 'isDeleteStr',
					title : '状态(是否可用)',
					width : 100,
					align : 'center'
				},
				]],
		});
	page("rights");
}