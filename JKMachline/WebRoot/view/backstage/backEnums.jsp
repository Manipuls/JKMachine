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
    
    <title>枚举值信息维护</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=paths%>easyui/themes/default/easyui.css" />   
	<link rel="stylesheet" type="text/css" href="<%=paths%>easyui/themes/icon.css" />   
	<script type="text/javascript" src="<%=paths%>easyui/jquery-1.8.3.min.js"></script>   
	<script type="text/javascript" src="<%=paths%>easyui/jquery.easyui.min.js"></script> 
	<style type="text/css">
	#win_enumsParent div{
	display: none;
	}
	</style>
  </head>
  
<body>
<style type="text/css">
	.span_addEnumsParent{ display: none; }
	.s1{ margin-left: 60px;margin-top: 20px; }
	#toolBar_s1_enumsParent{margin-top: 30px;margin-left: 120px;}
	</style>
<script type="text/javascript" src="<%=paths%>js/easyui_public.js"></script> 
<script type="text/javascript" src="<%=paths%>js/backEnums.js"></script>
 	<div>
  		<div id='body_cen_enumsParent' style="margin-top: 10px;">
  			<span style="margin-left: 20px;">类别名称：<input class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </span>
  			<span style="margin-left: 20px;">类别名称：<input class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </span>
  			<div style="clear: both;"></div>
  		</div>
  		<div style="margin-top: 10px;">
			<div id="tb_enumsParent">
				<a href="#" class="easyui-linkbutton" data-options="iconCls: 'icon-search',width:70,plain:false">查询 </a>
				<a id='add_enumsParent' class="easyui-linkbutton" data-options="iconCls:'icon-add',width:70,plain:false">新增</a>
			</div>
			<table id="dg_enumsParent" width="100%" data-options=""></table> 
  		</div>
  	</div>
  	<div id="dd_enumsParent">
  		<div class='s1'>
	  		<p id='s1' class='span_addEnumsParent '>枚举码值：<input class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </p>
	  		<p id='s2' class='span_addEnumsParent '>枚举名称：<input class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </p>
			<div id="bb_enumsParent">
				<a href="#" class="easyui-linkbutton">保存</a>
				<a onclick="$('#dd_enumsParent').panel('close')" class="easyui-linkbutton">关闭</a>
			</div>
			
  			
  		</div>
  	</div>   
  		
	<div>
  		<div style="margin-top: 10px;">
			<div id="tb_enums">
				<a href="#" class="easyui-linkbutton" data-options="iconCls: 'icon-search',width:70,plain:false">查询 </a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',width:70,plain:false">新增</a>
			</div>
			<table id="dg_enums" width="100%" data-options=""></table> 
  		</div>
  	</div>
</body>  
</html>
