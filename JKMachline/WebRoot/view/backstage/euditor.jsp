<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'euditor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
  </head>
  
  <body>
  <link href="view/euditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
    
    <script type="text/javascript" src="view/euditor/third-party/jquery.min.js"></script>
   
    <script type="text/javascript" charset="utf-8" src="view/euditor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="view/euditor/umeditor.min.js"></script>
    <script type="text/javascript" src="view/euditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/plain" id="myEditor" style="width:1000px;height:240px;"></script>
	<script type="text/javascript" src="view/euditor/index_js/euditor.js"></script>
  </body>
</html>
