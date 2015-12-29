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
    
    <title>登录</title>
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
  </head>
  
  <body>
  <div id="win" class="easyui-window" title="登录" style="width:400px;height:250px"   
        data-options="minimizable:false,maximizable:false,closable:false,collapsible:false,draggable:false">  
        <ul style="margin-left: 120px;margin-top: 30px;line-height: 45px; list-style-type: none">
		    <form id="loginFrom" action="userLoginAction" method="post">
		    <li> 帐号：<input id="eName" class="easyui-textbox" name='user.name' data-options="iconCls:'icon-man'" style="width:150px">  </li>
		    <li> 密码：<input id="ePwd"class="easyui-textbox" name="user.password" data-options="iconCls:'icon-lock',type:'password'" style="width:150px">  </li> 
		    <div style="margin-left: 65px;" >
		    <a class="easyui-linkbutton" onclick="onClickLogin()" data-options="iconCls:'icon-man'">登录</a>  
		    <a style="margin-left: 10px;" id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">重置</a>  
		    </form>
		    </div>
        </ul> 
</div>  
  </body>
</html>
