<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String paths = request.getContextPath()+"/view/backstage/";
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'backNews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache" charset="utf-8">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=paths%>easyui/themes/default/easyui.css" />   
	<link rel="stylesheet" type="text/css" href="<%=paths%>easyui/themes/icon.css" />   
	<script type="text/javascript" src="<%=paths%>easyui/jquery-1.8.3.min.js"></script> 
	<script type="text/javascript" src="<%=paths%>easyui/jquery.easyui.min.js"></script> 
  </head>
  
  <body  >
	<style type="text/css">
	.hide{display: none}
	#dlg_news_edit_con{margin-top: 10px;margin-left: 30px;}
	</style>
  	<script type="text/javascript" src="<%=paths%>js/easyui_public.js"></script> 
  	<script type="text/javascript" src="<%=paths%>js/backNews.js"></script>
  	<script type="text/javascript" charset="utf-8" src="view/euditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="view/euditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="view/euditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript" src="view/euditor/index_js/euditor.js"></script>
	    <div style="height: ${param.hei}px;width:100%" >
    		<table id="dg_news"></table>  
		    <div id="dlg_news_edit" class="easyui-dialog" title="修改资讯信息"   
		        data-options="iconCls:'icon-save',resizable:true,modal:true,inline:true,width:850,height:520,closed:true,
		        buttons:[{ 
		        			text:'确定', iconCls:'icon-save', onClick:function(){ updateNewsInfo(); } 
		        		},{
							text:'取消', iconCls:'icon-cancel', onClick:function(){ $('#dlg_news_edit').dialog('close');}
					}]">   
				   <div id='dlg_news_edit_con' class='hide'  >
					  		<p>资讯标题：<input id='title_edit' class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </p>
					  		<p>资讯类型：<input id='type_edit' class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </p>
					  		<p ><span style="vertical-align: top;">资讯内容：</span>
									<div style="margin-left: 60px;margin-top: -28px;">
										<script id="editor" type="text/plain" style="width:650px;height:250px;"></script>
									</div>				
								</div>
							</p>
					</div>
			</div> 
			<div id="dlg_news_add" class="easyui-dialog" title="新增资讯信息"   
		        data-options="iconCls:'icon-save',resizable:true,modal:true,inline:true,width:850,height:520,closed:true,
		        buttons:[{ 
		        			text:'确定', iconCls:'icon-save', onClick:function(){ updateEnums(); } 
		        		},{
							text:'取消', iconCls:'icon-cancel', onClick:function(){ $('#dlg_news_add').dialog('close');}
					}]"> 
				<div id='dlg_news_add_con' class='hide'>
				  		<p>资讯标题：<input id='title_add' class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </p>
				  		<p>资讯类型：<input id='type_add' class="easyui-textbox" data-options="iconCls:''" style="width:300px"> </p>
				  		<p ><span style="vertical-align: top;">资讯内容：</span>
							<div style="margin-left: 60px;margin-top: -28px;">
								<script id="editor1" type="text/plain" style="width:650px;height:250px;"></script>
							</div>
						</p>
				</div>
			</div>
		</div>
  </body>
</html>
