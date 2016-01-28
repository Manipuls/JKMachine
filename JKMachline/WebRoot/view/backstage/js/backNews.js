$(function(){
	$('#dg_news').datagrid({    
		
		url:'backNewsAction_getBackNewsForList',   
	    
	    loadMsg : '正在玩命的为您加载。。。', //加载数据是显示的提示 
		
	    pagination : true, //是否显示分页工具栏
		
		fitColumns : true,  //真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动。
		
		rownumbers : false,  //是否显示行号
		
		singleSelect : true,  //只允许选择一行
		
	//	fit:true, //自动适应高度和宽度
		
		striped : true,  //表格显示条纹
		
		pageSize:5,  //初始页面显示数据条数
		
		pageNumber:1, //当前页码
		
		pageList:[1,5,10,15], // 选择当页显示数据显示条数
		
		scrollbarSize: 0,   //滚动条的宽度
		
		fitColumns : true,
		
		toolbar: [{
			iconCls: 'icon-search',
			text : "查询",
			width :70,
			handler: function(){alert('编辑按钮')}
		},'-',{
			iconCls: 'icon-edit',
			text : "修改",
			width :70,
			handler: function(){
				var rowData = $('#dg_news').datagrid("getSelected");
				if(rowData!=null){
					updateNewsInfo(rowData.id);
				}else{
					alertMsgBox("提示","请选择要修改的数据!","info");
				}
			}
		},'-',{
			iconCls: 'icon-add',
			text : "新增",
			width :70,
			handler: function(){alert('帮助按钮')}
		},],  
		
		columns:[[    
			        {
					field : 'id',
					title : '编号',
					align : 'center',
					width : 50,
				},  {
					field : 'newTitle',
					title : '资讯标题',
					align : 'center',
					text  : '123',
					width : 50,
				}, {
					field : 'newType',
					title : '资讯类型',
					align : 'center',
					width : 50,
				}, {
					field : 'newContent',
					title : '资讯内容',
					align : 'center',
					width : 50,
				}, {
					field : 'createStrTime',
					title : '发布时间',
					align : 'center',
					width : 50,
				}]],
	}); 
	page("news");
})


/**
 * 修改资讯信息
 * @param id
 */
function updateNewsInfo(id){
	$('#dlg_news_edit').dialog('open');
	$("#dlg_news_edit_con").removeClass("hide");
}