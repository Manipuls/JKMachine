<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String paths = request.getContextPath()+"/view/backstage/";
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理主页</title>
    
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
		html,body,div{margin: 0;padding: 0;font-family:"Microsoft YaHei";font-size: 12px; }
	</style> 
	<script type="text/javascript">
		function add(inParm,url){
			var topWid = ($('#top').panel('options').width);
			var leftWid = ($('#sys').panel('options').width);
			var cWid = topWid-leftWid;
			var hei = ($('#sys').panel('options').height);
			var tit = $("#"+inParm).text();
			var tab = $('#tt').tabs('exists',tit);
			var url = 'view/backstage/'+url;
			if(tab){
				$('#tt').tabs('select', tit);   
				var tab = $('#tt').tabs('getSelected');  // 获取选择的面板
				tab.panel('refresh', url+"?hei="+hei+"&wid="+cWid);
			}else{
				$('#tt').tabs("add" , { 
					title:tit,    
	   				closable:true, 
				    border:true,  
				    selected : true,
				    href:url+"?hei="+hei
				}); 
			}
		}
	</script>
	<style type="text/css">
	#menu li{line-height: 20px;	}
	</style>
  </head>
  
  
 <body class="easyui-layout" data-options="fit:true"	>
	    <div id='top'  data-options="region:'north',title:''" style="height:100px;">  </div>   
	    <div data-options="region:'south',title:''" style="height:30px;">
	    	<div>您好，[${sessionScope.user.name}]</div>
	    </div>   
	    <div id='sys' data-options="region:'west',title:'系统导航',split:true" style="width:200px;">
	    <div>
			<!-- <a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">后台管理</a> 
			<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">网站管理</a> --> 
	    </div>
		<div style="border-bottom: 1px red solid;"></div>
	    	<ul id="tree_menu" class="easyui-tree" data-options="animate:true">  
	    		<c:forEach items="${sessionScope.user.rights}" var='right'> 
				    <li>   
		                <c:if test="${right.parentId==null}"> <span>${right.rightName}</span></c:if>
		                <ul> 
		                  	<c:forEach items="${right.chRights}" var='ch'>
		                    <li>   
		                        <span><a id="${ch.id}" onclick="add(this.id,'${ch.location}')">${ch.rightName}</a></span>   
		                    </li>   
		                  	</c:forEach>
		                </ul>   
	            	</li> 
            	</c:forEach>  
        </ul>   

	    
	    </div>   
	    <div id="cen" data-options="region:'center',title:'操作区'" style="padding:0px;background:#eee;">
		    <div id="tt" class="easyui-tabs" data-options="fit:true" style="width:100%">   
			</div>  
	    </div> 
  </body>

</html>
