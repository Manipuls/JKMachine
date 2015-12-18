<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath()+"/view/backstage/";
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path%>easyui/themes/default/easyui.css" />   
	<link rel="stylesheet" type="text/css" href="<%=path%>easyui/themes/icon.css" />   
	<script type="text/javascript" src="<%=path%>easyui/jquery-1.8.3.min.js"></script>   
	<script type="text/javascript" src="<%=path%>easyui/jquery.easyui.min.js"></script> 
	<style type="text/css">
		html,body,div{margin: 0;padding: 0}
	</style> 
	<script type="text/javascript">
	
		
		function add(){
			$('#tt').tabs("add" , { 
				title:'New Tab',    
   				content:'Tab Body',
   				closable:true, 
			    border:true,    
			    onSelect:function(title){    
			        alert(title+' is selected');    
			    }    
			}); 
		}
	</script>

  </head>
  
  
 <body class="easyui-layout" data-options="fit:true"	>
	    <div data-options="region:'north',title:'',split:true" style="height:100px;">
	    <%=path%>
	    <%=basePath%>
	    </div>   
	    <div data-options="region:'south',title:'',split:true" style="height:20px;"></div>   
	    <div id='sys' data-options="region:'west',title:'系统导航',split:true" style="width:250px;">

	    	<ul id="menu" class="easyui-tree">   
			    <li>   
			        <span>Folder</span>   
			        <ul>   
			            <li>   
			                <span>Sub Folder 1</span>   
			                <ul>   
			                    <li>   
			                        <span><a  onclick="add();">File 11</a></span>   
			                    </li>   
			                    <li>   
			                        <span>File 12</span>   
			                    </li>   
			                    <li>   
			                        <span>File 13</span>   
			                    </li>   
			                </ul>   
			            </li>   
			            <li>   
			                <span>File 2</span>   
			            </li>   
			            <li>   
			                <span>File 3</span>   
			            </li>   
			        </ul>   
			    </li>   
			    <li>   
			        <span>File21</span>   
			    </li>   
			</ul>  
	    
	    </div>   
	    <div id="cen" data-options="region:'center',title:'操作区'" style="padding:0px;background:#eee;">
		    <div id="tt" class="easyui-tabs" data-options="fit:true" style="width:100%">   
			</div>  
	    </div> 
  </body>

</html>
