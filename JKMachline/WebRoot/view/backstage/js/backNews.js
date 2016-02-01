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
		
//		toolbar: '#tb_newsTools',
		
		toolbar: [{
			iconCls: 'icon-search',
			text : "查询",
			width :70,
			handler: function(){
				var rowData = $('#dg_news').datagrid("getSelected");
				if(rowData!=null){
					addNewsInfo(rowData.id);
				}else{
					alertMsgBox("提示","请选择要修改的数据!","info");
				}
				
			}
		},'-',{
			iconCls: 'icon-edit',
			text : "修改",
			width :70,
			handler: function(){
				var rowData = $('#dg_news').datagrid("getSelected");
				if(rowData!=null){
					openUpdateNewsInfo(rowData.id);
				}else{
					alertMsgBox("提示","请选择要修改的数据!","info");
				}
			}
		},'-',{
			iconCls: 'icon-add',
			text : "新增",
			width :70,
			handler: function(){
				var rowData = $('#dg_news').datagrid("getSelected");
				if(rowData!=null){
					openAddNewsInfo(rowData.id);
				}else{
					alertMsgBox("提示","请选择要修改的数据!","info");
				}
			}
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

function openAddNewsInfo(id){
	$('#dlg_news_add').dialog('open');
	$("#dlg_news_add_con").removeClass("hide");
	UE.getEditor('editor1');
	
}

/**
 * 修改资讯信息
 * @param id
 */
function openUpdateNewsInfo(id){
	$('#dlg_news_edit').dialog('open');
	$("#dlg_news_edit_con").removeClass("hide");
	var rowData = $('#dg_news').datagrid("getSelected");
	$("#title_edit").textbox("setValue",rowData.newTitle);
	$("#type_edit").textbox("setValue",rowData.newType);
	UE.getEditor('editor').setContent(rowData.newContent);
	
}


function updateNewsInfo(){
	var rowData = $('#dg_news').datagrid("getSelected");

	var tit = $("#title_edit").textbox("getValue");
	var type =  $("#type_edit").textbox("getValue");
	var con = UE.getEditor('editor').getContent();
	con = con.replace(/&nbsp;/g,'<KG>');
	alert(con);
	$.ajax({                                                                     
		url : "backNewsAction_updateBackNewsInfo",
		type : 'post',
		data :'news.newTitle='+tit+'&news.newType='+type+'&news.newContent='+con+'&news.id='+rowData.id,
		dataType : "json",
		async: false,
		success : function(root) {
			if(root.total==1){
				var content = "<div style='margin: 0 auto;'>添加成功！</div>";
				showMsgBox('提示', content, 2);
				$('#dd_dlg_enums').dialog('close');
				$('#dg_enumsParent').datagrid("reload");
				
			}else{
				var content = "<div style='margin: 0 auto;'>添加失败,请联系管理员！</div>";
				showMsgBox('提示', content, 2);
			}
		}
	});
}