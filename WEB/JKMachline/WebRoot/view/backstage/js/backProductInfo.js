$(function(){
	$('#dg_product').datagrid({    
		
	    url:'backProduct_getProductChildList',   
	    
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
		
		toolbar: '#tb_product',
		
	    columns:[[    
	        {
			field : 'id',
			title : '产品编号',
			width : 100,
			align : 'center'
		}, {
			field : 'productName',
			title : '产品名称',
			width : 100,
			align : 'center'
		}, {
			field : 'parentId',
			title : '产品类型',
			width : 100,
			align : 'center',
			text  : '123'
		}, {
			field : 'isShow',
			title : '是否显示',
			width : 100,
			align : 'center'
		}, {
			field : 'isDelete',
			title : '是否删除',
			width : 100,
			align : 'center'
		}, {
			field : 'produntThumbnail',
			title : '产品缩略图',
			width : 300,
			align : 'center'
		}, {
			field : 'operation',
			title : '操作',
			width : 200,
			align : 'center',
			formatter : function(value,row,index){
				var u ="<a id='btnE_info'  class='editclsE' >编辑</a>   ";
    			var d ="<a id='btnD_info'  class='editclsD' >删除</a> ";
    			return u +"  |  "+ d;
			}
		},
	    ]],
	    onLoadSuccess:function(data){  
	    	$('.editclsE').linkbutton({text:'编辑',plain:true,iconCls:'icon-edit'});
	    	$('.editclsD').linkbutton({text:'删除',plain:true,iconCls:'icon-edit'});
	    },
	    /*toolbar: [{
			iconCls: 'icon-search',
			text: '查询',
			width:100,
			handler: function(){
				
			}
		},'-',{
			iconCls: 'icon-search',
			text: '查询',
			width:100,
			handler: function(){
				
			}
		}],*/
	});
	page("product");   //翻页汉化
})


onLoanProductInfo("");
function onLoanProductInfo(id){
	$('#dg_productInfo').datagrid({    
		
	    url:'backProduct_getProductChildList',   
	    
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
		
		toolbar: '#tb_productInfo',
		
	    columns:[[    
	        {
			field : 'id',
			title : '产品编号',
			width : 100,
			align : 'center'
		}, {
			field : 'productName',
			title : '产品名称',
			width : 100,
			align : 'center'
		}, {
			field : 'parentId',
			title : '产品类型',
			width : 100,
			align : 'center',
			text  : '123'
		}, {
			field : 'isShow',
			title : '是否显示',
			width : 100,
			align : 'center'
		}, {
			field : 'isDelete',
			title : '是否删除',
			width : 100,
			align : 'center'
		}, {
			field : 'produntThumbnail',
			title : '产品缩略图',
			width : 300,
			align : 'center'
		}, {
			field : 'operation',
			title : '操作',
			width : 200,
			align : 'center',
			formatter : function(value,row,index){
				var u ="<a id='btnE_info'  class='editclsE' >编辑</a>   ";
    			var d ="<a id='btnD_info'  class='editclsD' >删除</a> ";
    			return u +"  |  "+ d;
			}
		},
	    ]],
	    onLoadSuccess:function(data){  
	    	$('.editclsE').linkbutton({text:'编辑',plain:true,iconCls:'icon-edit'});
	    	$('.editclsD').linkbutton({text:'删除',plain:true,iconCls:'icon-edit'});
	    },
	});
	
}


function uploadFile(){
	
	 $.get("backUploadFileAction_uploadFil", function (data) {  
         alert(data);  
         if (data == "Success") {  
             ImageHideFile.val("");  
             myimg.remove();  
         }  
     });  
	
	
	/*$.ajax({                                                                     
		url : 'backUploadFileAction_uploadFile',
		type : 'post',
		data :"upload="+$("#uploadFile").val(),
		dataType : "json",
		async: false,
		success : function(root) {
			if(root.total==1){
				var content = "<div style='margin: 0 auto;'>上传成功！</div>";
				showMsgBox('提示', content, 2);
				$("#dd_uploadFile").dialog('close');
				
			}else{
				var content = "<div style='margin: 0 auto;'>上传失败,请联系管理员！</div>";
				showMsgBox('提示', content, 2);
			}
		}
	});*/
}


function uploadFileBox(){
	 $.ajaxFileUpload({
          url:'uploadFileAction',            //需要链接到服务器地址
          secureuri:false,
          fileElementId:'file',                     //文件选择框的id属性
          dataType: 'json',                           //服务器返回的格式
          success: function (data, status) {
        	    var content = "<div style='margin: 0 auto;'>上传成功！</div>";
				showMsgBox('提示', content, 2);
				$("#dd_uploadFile").dialog('close');
    	  },
    	  error: function (data, status, e) {          //相当于java中catch语句块的用法
    		  var content = "<div style='margin: 0 auto;'>上传失败,请联系管理员！</div>";
			  showMsgBox('提示', content, 2);
          }
      })
}
