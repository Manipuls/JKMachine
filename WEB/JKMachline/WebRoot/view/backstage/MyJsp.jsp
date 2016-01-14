<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String paths = request.getContextPath()+"/view/backstage/";
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=paths%>easyui/themes/default/easyui.css" />   
	<link rel="stylesheet" type="text/css" href="<%=paths%>easyui/themes/icon.css" />   
	<script type="text/javascript" src="<%=paths%>easyui/jquery-1.8.3.min.js"></script>   
	<script type="text/javascript" src="<%=paths%>easyui/jquery.easyui.min.js"></script>  
	<script type="text/javascript" src="<%=paths%>js/login.js"></script> 
  	<script type="text/javascript" src="<%=paths%>js/easyui_public.js"></script>
	<style type="text/css">
	</style>
	<script type="text/javascript">
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
				
		//		pageSize:5,  //初始页面显示数据条数
				
		//		pageNumber:1, //当前页码
				
		//		pageList:[1,5,10,15], // 选择当页显示数据显示条数
				
				scrollbarSize: 0,   //滚动条的宽度
				
				width : 240,
				
				height : 400,
			    columns : [{
					field : 'id',
					title : '角色编号',
					width : 100,
					align : 'center',
				},{
					field : 'name',
					title : '角色名称',
					width : 100,
					align : 'center',
				}]   
			});
		})
	</script>
	
  </head>
  
  <body>
  
  	<table id="dg_right_role"></table> 
</div> 

  </body>
</html>
