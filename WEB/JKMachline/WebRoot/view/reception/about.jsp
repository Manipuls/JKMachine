<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>重庆劲凯机电-关于劲凯</title>
    
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

  </head>
  
  <body onload="onLoadAboutData()">
  	<jsp:include page="indexHeader.jsp"></jsp:include>
	   <div id="banner">
	  	<div id="bannerCon">
	    <img src="view/reception/images/banner_text.png" id="bannerText">
	    <p id="bannerTit"><a href="http://www.fato.cn/" class="aGray">首页</a> - <a href="./about_files/about.html" class="aGray">关于华通</a> - <a href="./about_files/about.html" class="aGray">企业概况</a><span>关于华通</span></p>
	  </div>
	</div>
	<div id="menuSon">
	  <ul id="menuSonList">   
	    <li><a href="http://www.fato.cn/contact.php">联系我们</a></li>
	    <li><a href="http://www.fato.cn/history.php">发展历程</a></li>
	    <li><a href="http://www.fato.cn/culture.php">企业文化</a></li>
	    <li><a href="http://www.fato.cn/boss.php">总裁致辞</a></li>
	    <li class="A"><a href="./about_files/about.html">企业概况</a></li>
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
	  <div class="text" style="margin-top:20px;"><p>
		<img style="float:left;margin-right:20px;" src="view/reception/images/about.jpg">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;华通机电股份有限公司创办于1998年，系华通机电集团下属控股子公司，也是目前国内最大的高、低压电器、仪器仪表、电力变压器等机电产品的制造商之一。现有员工1200多人，厂房面积8万平方米，总资产5.8亿元。多年来，已连续跻身中国民营企业500强、中国机械工业500强、浙江省百强企业前列，并相继荣获了“全国用户满意企业” 、“全国用户满意产品” 、“高新技术企业”、“AAA标准化良好行为企业”等荣誉称号。<br>
	&nbsp;&nbsp;&nbsp; &nbsp; 公司秉承“专业制造、专心服务”的核心理念，不断引进国外先进自动化生产设备，吸收世界领先技术，建成了具有国内先进水平的试验中心、计量中心、低压电器检测中心和高低压电气研发基地；并与国内外科研机构广泛合作，先后开发出具有自主知识产权的CF系列新产品200多个，省级新产品30多个，拥有80多项国家专利，部分产品达到国内领先或国际先进技术水平。<br>
	公司率先在	同行业通过ISO9001质量管理体系认证、ISO14001环境管理标准体系认证、OHSAS18000职业健康安全管理体系认证；产品获得CCC、CB、CE、SEMKO、TUV、KEMA等国内外权威认证。小型直流断路器、立体三角形卷铁心变压器项目，分别入选2014年度国家星火计划和国家火炬计划。<br>
	&nbsp; &nbsp;&nbsp;&nbsp; 公司为国内输配电及控制系统提供多样化的服务，产品被列为国家“两网”改造推荐产品；被中石化、中石油、国家水利水电部等列入设备供应一级网络单位；同时，产品先后在国家重点工程和大型企业中得到广泛的配套使用，获得客户一致赞许。目前，公司不仅在全国拥有800多家销售网点，而且，市场拓展步伐已延伸至欧美、中东、南美、东南亚等50多个国家和地区。<br>
	&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;公司坚持发扬“同心、敬业、创新、争先”的企业精神，以“品牌国际化、产业科技化、管理现代化、市场全球化”为发展方向，站在全球的视野，持续创新，以卓越的品质为依托、以高科技产业为主旨，全力打造企业核心竞争力，寻求“互利共赢、共同发展”, 持续不断地为国内外客户创造更多、更大的价值。
	</p></div>
	</div>
	<div id="mainbg"></div>
	<div id="bottom">
	  <div style="width:1000px; margin:auto; height:50px;">
	  <div id="bottom_l">
	    <img src="view/reception/images/icon_tel.png" style="position:absolute; left:10px; top:10px;">总机：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62733333</span>　　
	    传真：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62726666</span>　　
	    服务热线：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">400-8263-733</span>　　
	    销售热线：<span style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62729666</span>
	  </div>
	  <div id="bottom_r">  <!--  onclick="location.href=&#39;bossmail.php&#39;;"  -->
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
	      <a href="http://www.fato.cn/">首页</a>
	      <a href="./about_files/about.html">关于华通</a>
	      <a href="http://www.fato.cn/news.php">资讯动态</a>
	      <a href="http://www.fato.cn/product.php">产品中心</a>
	    </div>
	    <div class="fMenu">
	      <a href="http://www.fato.cn/network.php">营销网络</a>
	      <a href="http://www.fato.cn/service.php">服务支持</a>
	      <a href="http://www.fato.cn/contact.php">联系我们</a>
	      <a href="http://www.eshion.cn/" target="_blank" style="color:#999;">亿新科技 技术支持</a>
	    </div>
	  </div>
	</div>
  </body>
<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
<link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
