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
    //此处是扩展tree的两个方法.
    $.extend($.fn.tree.methods,{
        getCheckedExt: function(jq){//扩展getChecked方法,使其能实心节点也一起返回
            var checked = $(jq).tree("getChecked");
            var checkbox2 = $(jq).find("span.tree-checkbox2").parent();
            $.each(checkbox2,function(){
                var node = $.extend({}, $.data(this, "tree-node"), {
                    target : this
                });
                checked.push(node);
            });
            return checked;
        },
        getSolidExt:function(jq){//扩展一个能返回实心节点的方法
            var checked =[];
            var checkbox2 = $(jq).find("span.tree-checkbox2").parent();
            $.each(checkbox2,function(){
                var node = $.extend({}, $.data(this, "tree-node"), {
                    target : this
                });
                checked.push(node);
            });
            return checked;
        }
    });
});


function getCheckedExt(){
  var solids = $("#tt1").tree("getCheckedExt");
  var nodes = [];
  $.each(solids,function(){
    nodes.push(this.text);
  });
  $("#logs").text("选择的节点是(包括实心):"+nodes.join(","));

}

function getSolidExt(){
  var solids = $("#tt1").tree("getSolidExt");
  var nodes = [];
  $.each(solids,function(){
    nodes.push(this.text);
  });
  $("#logs").text("选择的实心节点是:"+nodes);
}
		
	</script>
	
  </head>
  
  <body>
  
  	<div style="margin:10px;">
      <a class="easyui-linkbutton" onclick="getCheckedExt()">获取checked节点(包括实心)</a>
      <a class="easyui-linkbutton"  onclick="getSolidExt()">获取实心节点</a>
  </div>
 <ul id="tt1" class="easyui-tree" animate="true" checkbox="true">
  <li>
   <span>Folder</span>
   <ul>
    <li state="closed">
     <span>Sub Folder 1</span>
     <ul>
      <li>
       <span><a href="#">File 11</a></span>
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
    <li>File 4</li>
    <li>File 5</li>
   </ul>
  </li>
  <li>
   <span>File21</span>
  </li>
 </ul>
 
  <div id="logs"></div>

  </body>
</html>
