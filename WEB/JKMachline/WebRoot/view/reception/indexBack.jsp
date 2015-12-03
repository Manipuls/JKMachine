<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'indexBack.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">

  </head>
  
  <body>
<div id="bottom">
  <div style="width:1000px; margin:auto; height:50px;">
  <div id="bottom_l">
    <img src="view/reception/images/icon_tel.png" style="position:absolute; left:10px; top:10px;">总机：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62733333</span>　　
    传真：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62726666</span>　　
    服务热线：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">400-8263-733</span>　　
   <!--  销售热线：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62729666</span> -->
  </div>
  <div id="bottom_r" ><!-- onclick="location.href=&#39;bossmail.php&#39;;"   -->
    <img src="view/reception/images/icon_mail.png" style="margin-right:8px;">董事长信箱
  </div>
  </div>
</div>
<script type="text/javascript">
$("#bottom_r").hover(function(){
	$(this).stop().animate({'backgroundColor':'#D90000'},450);
},function(){
	$(this).stop().animate({'backgroundColor':'#F90'},300);
});
</script>
<div id="foot">
  <div style="width:1000px; margin:auto; padding-top:20px; padding-bottom:10px;">
    <div style="width:620px; float:left;">
      <p style="font-size:16px; color:#333; border-bottom:1px dotted #AAA; padding-bottom:10px;">关于劲凯</p>
      <p style="line-height:190%; color:#999; margin-top:10px;">
      
      华通机电股份有限公司创办于1998年，是华通机电集团下属控股子公司，是国内最大的高、低压电器、仪器仪表、电力变压器等机电产品制造商之一，拥有800多家销售网点。现有员工1200多人，厂房面积8万平方米，总资产5.8亿元。公司连续多年跻身中国民营企业500强、中国机械工业500强、浙江百强企业前列，荣获了高新技术企业、省质量奖、省科技奖、AAA标准化良好行为企业、全国用户满意企业、全国用户满意产品等荣誉称号。</p>
      
      <p style="margin-top:20px;">© 2014~2015 劲凯机电设备有限公司 版权所有　<a href="http://www.miibeian.gov.cn/" target="_blank">浙ICP备11056149号</a></p>    
    </div>
    <div class="fMenu">
      <a href="./images/index.html">首页</a>
      <a href="####/about.php">关于劲凯</a>
      <a href="####/news.php">新闻资讯</a>
      <a href="####/product.php">产品设计</a>
    </div>
    <div class="fMenu">
      <a href="####/network.php">产品中心</a>
      <a href="####/service.php">服务支持</a>
      <a href="####/contact.php">联系我们</a>
      <a href="http://www.eshion.cn/" target="_blank" style="color:#999;">劲凯科技 技术支持</a>
    </div>
  </div>
</div><div id="qr">
  <a href="javascript:$('#qr').slideUp(450);void(0);" id="qr_close"></a>
  <p><img src="view/reception/images/qr.png"></p>
  <p style="padding-left:6px; padding-top:3px; color:#333;">在这里，了解华通</p>
  <p style="padding-left:6px; padding-top:5px; color:#999; font-size:11px;">扫描二维码添加华通微信订阅号<br>及时获取更多华通资讯</p>
</div>
<div style="background:#EEEEEE; text-align:center;">
</div>
  </body>
</html>
