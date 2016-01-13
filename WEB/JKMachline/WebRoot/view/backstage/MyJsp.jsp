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
	.s{border:1px #D3D3D3 solid;border-radius:5px;height: 15px; text-align: center;
	}
	</style>
  </head>
  
  <body>
	<input  class="easyui-textbox" data-options="iconCls:'icon-search'" style="width:300px">  
	<script type="text/javascript">
	
	$(function(){
		$.messager.show({
			width:350,
			height:150,
			title:'我的消息',
			msg:'消息将在5秒后关闭。',
			timeout:5000,
			showType:'slide'
		});
	})
	</script>


  </body>
</html>
