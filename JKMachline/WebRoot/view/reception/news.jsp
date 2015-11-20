<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">

<title>重庆劲凯机电-新闻资讯</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="view/reception/js/jquery.min.1.7.js"></script>
<script type="text/javascript" src="view/reception/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="view/reception/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="view/reception/js/diy_index/public-all.js"></script>
<script type="text/javascript" src="view/reception/js/public.js"></script>
<script type="text/javascript" src="view/reception/js/diy_index/news.js"></script>
<script type="text/javascript" src="view/reception/js/diy_index/js.js"></script>

</head>
<body onload="onLoadNewsData()">
	<jsp:include page="indexHeader.jsp"></jsp:include>
<div id="banner">
  <div id="bannerCon">
    <img src="view/reception/images/banner_text.png" id="bannerText">
    <p id="bannerTit"><a href="http://#####/" class="aGray">首页</a> - <a href="./news_files/news.html" class="aGray">资讯动态</a> - <a href="http://#####/news.php?partid=12" class="aGray">企业新闻</a><span>资讯动态</span></p>
  </div>
</div>
<div id="menuSon">
  <ul id="menuSonList">   
    <li><a href="http://#####/video.php">视频中心</a></li>
    <li><a href="http://#####/news.php?partid=13">行业动态</a></li>
    <li class="A" style="background-color: rgb(204, 0, 0);"><a href="./news_files/news.html">企业新闻</a></li>
  </ul>
</div>
<script type="text/javascript">
$("#menuSonList li").hover(function(){
	$(this).stop().animate({'backgroundColor':'#CC0000'},450);
},function(){
	if($(this).attr("class")!="A"){
	  $(this).stop().animate({'backgroundColor':'#0066AC'},350);
	}
});
</script>
<div id="main">
 	<ul class="newslist" id = "newstit" style="margin-top:20px;">
	    <li>
		      <a href="http://#####/news_view.php?id=709&partid=12&mpid=0">
		        <div class="tim" style="background-color: rgb(238, 238, 238);"><p style="font-size: 46px; font-family: Arial; color: rgb(136, 136, 136);">10</p><p style="color: rgb(136, 136, 136);">2015年11月</p></div>
				<div class="con"><p style="font-size: 14px; color: rgb(0, 102, 204);">华通国家级火炬计划项目通过验收</p><p style="color:#999; margin-top:9px; line-height:180%;">10月30 日，受浙江省科技厅委托，由温州市科技局组织举行的国家级火炬计划项目验收会在乐清金鼎大酒店隆重召开。华通承担实施的国家级火炬计划项目“S13-M.RL立体三角形卷铁心变压器”顺利通过验收。会上，公司总工程师高文乐向与会领导、专家详细介绍了华通发展现况及未来发展蓝图。华通将以此次国家火炬计划项目的验收为契机，不断深化基础管理，持续推进科技创新，优化产品结构，努力促进...</p></div>
		      </a>
	    </li>
	    <li class="clear"></li>
	</ul>
  <div style="margin-top:20px; padding-bottom:10px;"><style type="text/css">.pageleft{float:left; height:30px;}.pageright{float:right; width:160px; text-align:right; height:30px;}.pagebtn{display:inline-block; width:26px; height:26px; line-height:25px; text-align:center; border:1px solid #EEE; margin-right:8px; vertical-align:middle;}.pagebtn:hover{border:1px solid #DDD; background:#F7F7F7;}.pagebtn:active{border:1px solid #DDD; background:#E1E1E1;}.pageprev{display:inline-block; width:26px; height:26px; border:1px solid #EEE; margin-right:8px; vertical-align:middle; background:url(images/page_left.gif) no-repeat center center;}.pageprev:hover,.pagenext:hover{background-color:#F7F7F7; border:1px solid #DDD;}.pageprev:active,.pagenext:active{background-color:#E1E1E1; border:1px solid #DDD;}.pagebtnA{display:inline-block; width:26px; height:26px; line-height:25px; text-align:center; border:1px solid #CCC; background:#FFFFCC; margin-right:8px; vertical-align:middle; color:#FF6600; font-weight:bold;}.pagenext{display:inline-block; width:26px; height:26px; border:1px solid #EEE; margin-right:8px; vertical-align:middle; background:url(images/page_right.gif) no-repeat center center;}.pageinfo{display:inline-block; height:26px; line-height:25px; margin-right:8px; vertical-align:middle;}.trunpage{font-size:12px; padding:4px 4px 5px 4px; border:1px solid #EEEEEE; text-align:center; vertical-align:middle;}.pageell{display:inline-block; height:26px; line-height:25px; margin-right:8px; vertical-align:middle;}</style><div class="pageshow"><div class="pageleft"><a href="http://#####/news.php?page=1" class="pagebtnA">1</a><a href="http://#####/news.php?page=2" class="pagebtn">2</a><a href="http://#####/news.php?page=3" class="pagebtn">3</a><span class="pageell">……</span><a href="http://#####/news.php?page=9" class="pagebtn">9</a><a href="http://#####/news.php?page=10" class="pagebtn">10</a><a href="http://#####/news.php?page=2" class="pagenext"></a></div><div class="pageright"><span class="pageinfo">共10页</span>跳转：<input name="page" type="text" class="trunpage" value="1" size="2"> <a href="javascript:gotoPage('0','');" class="pagebtn" style="margin:0;">GO</a></div><div style="clear:both; height:1px; font-size:1px;"></div></div></div>
  <p style="clear:both; height:30px;"></p>
</div>
<script type="text/javascript">
$(".newslist a").hover(function(){
	$(this).find(".tim").stop().animate({'backgroundColor':'#F80'},450);
	$(this).find(".tim p").stop().animate({'color':'#FFF'},450);
	$(this).find(".con p").eq(0).stop().animate({'color':'#F80'},450);
},function(){
	$(this).find(".tim").stop().animate({'backgroundColor':'#EEE'},350);
	$(this).find(".tim p").stop().animate({'color':'#888'},350);
	$(this).find(".con p").eq(0).stop().animate({'color':'#0066CC'},350);
});
</script>
<div id="mainbg"></div>
<div id="bottom">
  <div style="width:1000px; margin:auto; height:50px;">
  <div id="bottom_l">
    <img src="view/reception/images/icon_tel.png" style="position:absolute; left:10px; top:10px;">总机：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62733333</span>　　
    传真：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62726666</span>　　
    服务热线：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">400-8263-733</span>　　
    销售热线：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62729666</span>
  </div>
  <div id="bottom_r" > <!-- onclick="location.href=&#39;bossmail.php&#39;;"  -->
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
      <p style="font-size:16px; color:#333; border-bottom:1px dotted #AAA; padding-bottom:10px;">关于华通</p>
      <p style="line-height:190%; color:#999; margin-top:10px;">华通机电股份有限公司创办于1998年，是华通机电集团下属控股子公司，是国内最大的高、低压电器、仪器仪表、电力变压器等机电产品制造商之一，拥有800多家销售网点。现有员工1200多人，厂房面积8万平方米，总资产5.8亿元。公司连续多年跻身中国民营企业500强、中国机械工业500强、浙江百强企业前列，荣获了高新技术企业、省质量奖、省科技奖、AAA标准化良好行为企业、全国用户满意企业、全国用户满意产品等荣誉称号。</p>
      <p style="margin-top:20px;">© 2014~2015 华通机电股份有限公司 版权所有　<a href="http://www.miibeian.gov.cn/" target="_blank">浙ICP备11056149号</a></p>    
    </div>
    <div class="fMenu">
      <a href="http://#####/">首页</a>
      <a href="http://#####/about.php">关于华通</a>
      <a href="./news_files/news.html">资讯动态</a>
      <a href="http://#####/product.php">产品中心</a>
    </div>
    <div class="fMenu">
      <a href="http://#####/network.php">营销网络</a>
      <a href="http://#####/service.php">服务支持</a>
      <a href="http://#####/contact.php">联系我们</a>
      <a href="http://www.eshion.cn/" target="_blank" style="color:#999;">亿新科技 技术支持</a>
    </div>
  </div>
</div>
</body>

<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
<link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
