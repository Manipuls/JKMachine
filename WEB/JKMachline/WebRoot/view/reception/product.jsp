<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>重庆劲凯-产品中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	<script type="text/javascript" src="view/reception/js/jquery.min.1.7.js"></script>
	<script type="text/javascript" src="view/reception/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="view/reception/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="view/reception/js/public.js"></script>

  </head>
  <!-- ### -->
  <body onload="">
    <jsp:include page="indexHeader.jsp"></jsp:include>
		<div id="banner">
		  <div id="bannerCon">
		    <img src="view/reception/images/banner_text.png" id="bannerText">
		    <p id="bannerTit"><a href="http://###/" class="aGray">首页</a> - <a href="./product_files/product.html" class="aGray">产品中心</a> - <a href="./product_files/product.html" class="aGray">产品总汇</a><span>产品中心</span></p>
		  </div>
		</div>
		<div id="menuSon">
		  <ul id="menuSonList">
		    <li><a href="http://###/product_cer.php">资质证书</a></li>
		    <li><a href="http://###/product_360.php">360°产品展示</a></li>
		    <li class="A"><a href="./product_files/product.html">产品总汇</a></li>
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
		    <div style="width:1000px; overflow:hidden;">
		    <ul id="clslist">
		            <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=1"><img src="view/reception/images/20140625131610-0247-77972.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=1">CF3系列精品</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=71" title="CFW3系列万能式断路器">CFW3系列万能式断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=182" title="CFM3系列塑料外壳式断路器">CFM3系列塑料外壳式断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=183" title="CFM3E系列电子式塑壳断路器">CFM3E系列电子式塑壳断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=184" title="CFB3-63系列小型断路器">CFB3-63系列小型断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=185" title="CFB3LE系列小型漏电断路器">CFB3LE系列小型漏电断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=186" title="CFC3系列交流接触器">CFC3系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=1&id=661" title="CF3系列光伏直流电气">CF3系列光伏直流电气</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=2"><img src="./product_files/20140710100446-0547-12568.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=2">新产品系列</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=191" title="CFM3LE自动重合闸剩余电流工作断路器">CFM3LE自动重合闸剩余电流工作...</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=192" title="CFGQ1系列过欠压延时保护器">CFGQ1系列过欠压延时保护器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=193" title="CFKJ1系列电子限荷自动控制器">CFKJ1系列电子限荷自动控制器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=194" title="CFB3Z系列小型断路器">CFB3Z系列小型断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=195" title="CFB5S系列小型断路器">CFB5S系列小型断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=197" title="CFB1LE-63系列小型漏电断路器">CFB1LE-63系列小型漏电断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=199" title="CFB8LE系列剩余电流动作断路器">CFB8LE系列剩余电流动作断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=598" title="CFK1系列控制与保护开关电器">CFK1系列控制与保护开关电器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=629" title="CFB2-63系列小型断路器">CFB2-63系列小型断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=630" title="DZ47-63GQ、DZ47-100HGQ过欠压保护小型断路器">DZ47-63GQ、DZ47-100HGQ过欠压...</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=631" title="CFB3-125小型断路器">CFB3-125小型断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=632" title="CFB6LE-125剩余电流动作断路器">CFB6LE-125剩余电流动作断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=633" title="CFB2LE-63剩余电流动作断路器">CFB2LE-63剩余电流动作断路器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=2&id=634" title="CFB6-125塑料外壳式断路器">CFB6-125塑料外壳式断路器</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=3"><img src="./product_files/20140625131652-0673-86937.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=3">断路器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=17" title="小型断路器">小型断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=18" title="漏电断路器">漏电断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=19" title="塑料外壳式断路器">塑料外壳式断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=20" title="万能式断路器">万能式断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=223" title="双电源自动转换开关">双电源自动转换开关</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=4"><img src="./product_files/20140625131709-0727-43192.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=4">接触器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=327" title="CFC2(CJX2)(大容量)系列交流接触器">CFC2(CJX2)(大容量)系列交流接...</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=326" title="CFC2(CJX2)系列交流接触器">CFC2(CJX2)系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=322" title="CFC8(CJX8)系列交流接触器">CFC8(CJX8)系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=662" title="CFC8-□C(CJX8-□C)系列切换电容器接触器">CFC8-□C(CJX8-□C)系列切换电...</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=318" title="CFC10系列交流接触器">CFC10系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=328" title="CFC19、CFC16系列切换电容器接触器">CFC19、CFC16系列切换电容器接...</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=321" title="CFC40(TCK1)系列交流接触器">CFC40(TCK1)系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=324" title="CJ12系列交流接触器">CJ12系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=320" title="CJ20S系列交流接触器">CJ20S系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=319" title="CJ20系列交流接触器">CJ20系列交流接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=329" title="CKJ5系列真空接触器">CKJ5系列真空接触器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=4&id=325" title="CFC1(CJX1)系列交流接触器">CFC1(CJX1)系列交流接触器</a></li>
		                  </ul>
		      </li>
			  <li class="clear"></li>      <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=5"><img src="./product_files/20140625131731-0853-51297.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=5">开关电器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=24" title="按钮开关">按钮开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=25" title="行程开关">行程开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=26" title="组合开关">组合开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=27" title="万能转换开关">万能转换开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=28" title="倒顺开关">倒顺开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=30" title="隔离开关">隔离开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=31" title="刀开关">刀开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=699" title="断火限位器">断火限位器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=701" title="可逆转换开关">可逆转换开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=703" title="压扣开关">压扣开关</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=6"><img src="./product_files/20140625131750-0705-31329.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=6">起动器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=347" title="QCX8系列电磁起动器">QCX8系列电磁起动器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=348" title="CFQC20系列电磁起动器">CFQC20系列电磁起动器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=349" title="QJX2(LC3-D)系列星三角起动器">QJX2(LC3-D)系列星三角起动器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=350" title="CFQR2系列软起动器">CFQR2系列软起动器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=351" title="CFQB系列变频器">CFQB系列变频器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=352" title="XJ01系列自耦减压起动箱">XJ01系列自耦减压起动箱</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=6&id=353" title="JD1、JD2电磁调速电机控制装置">JD1、JD2电磁调速电机控制装置</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=7"><img src="./product_files/20140731104836-0276-98126.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=7">变压器、调压器、稳压器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=34" title="电力变压器">电力变压器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=35" title="调压器">调压器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=36" title="稳压器">稳压器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=623" title="控制变压器">控制变压器</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=8"><img src="./product_files/20140625131827-0147-95970.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=8">仪器仪表、互感器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=37" title="电能表">电能表</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=38" title="互感器">互感器</a></li>
		                  </ul>
		      </li>
			  <li class="clear"></li>      <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=9"><img src="./product_files/20140625131842-0182-47293.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=9">继电器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=39" title="中间继电器">中间继电器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=40" title="接触式继电器">接触式继电器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=41" title="热继电器">热继电器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=42" title="时间继电器">时间继电器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=43" title="电力保护继电器">电力保护继电器</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=10"><img src="./product_files/20140625131853-0933-67290.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=10">电磁铁</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=10&id=390" title="MQ1系列牵引电磁铁">MQ1系列牵引电磁铁</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=10&id=391" title="MQ2系列牵引电磁铁">MQ2系列牵引电磁铁</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=10&id=392" title="MFJ1、H系列交流干式阀用电磁铁">MFJ1、H系列交流干式阀用电磁铁</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=10&id=393" title="MZD1系列交流单相制动电磁铁">MZD1系列交流单相制动电磁铁</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=10&id=394" title="TJ2系列制动器">TJ2系列制动器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=10&id=395" title="MZS1系列交流三相制动电磁铁">MZS1系列交流三相制动电磁铁</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=11"><img src="./product_files/20140625131911-0272-58938.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=11">熔断器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=314" title="RT0系列有填料封闭管式刀形触头熔断器">RT0系列有填料封闭管式刀形触...</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=313" title="RT16系列有填料管式熔断器">RT16系列有填料管式熔断器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=647" title="RT17系列有填料管式熔断器">RT17系列有填料管式熔断器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=317" title="RS3系列半导体器保护用快速熔断器">RS3系列半导体器保护用快速熔断</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=311" title="RT18系列熔断隔离器">RT18系列熔断隔离器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=316" title="RS0系列半导体器保护用快速熔断器">RS0系列半导体器保护用快速熔断</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=310" title="RT14系列圆筒形帽熔断器">RT14系列圆筒形帽熔断器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=312" title="RT19系列圆筒形帽熔断器">RT19系列圆筒形帽熔断器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=11&id=315" title="NGT型半导体器件保护用熔断器">NGT型半导体器件保护用熔断器</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=12"><img src="./product_files/20140625131924-0540-57647.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=12">电容器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=12&id=47" title="BSMJ自愈式低压并联电容器">BSMJ自愈式低压并联电容器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=12&id=48" title="圆柱形自愈式低压并联电容器">圆柱形自愈式低压并联电容器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=12&id=49" title="无功功率自动补偿控制器">无功功率自动补偿控制器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=12&id=643" title="BSMJ分相补偿并联电容器">BSMJ分相补偿并联电容器</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=12&id=644" title="CF-CKY35低压无功综合测控仪">CF-CKY35低压无功综合测控仪</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=12&id=645" title="CF系列智能式无功补偿电容器">CF系列智能式无功补偿电容器</a></li>
		                  </ul>
		      </li>
			  <li class="clear"></li>      <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=13"><img src="./product_files/20140625131937-0206-74401.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=13">高压电器</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=13&id=256" title="避雷器系列">避雷器系列</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=437" title="复合绝缘子系列">复合绝缘子系列</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=261" title="高压熔断器系列">高压熔断器系列</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=513" title="智能型配电网自动化开关">智能型配电网自动化开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=522" title="智能型配电网预付费真空断路器">智能型配电网预付费真空断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=523" title="配电网双电源投切真空断路器">配电网双电源投切真空断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=524" title="户外交流高压真空断路器">户外交流高压真空断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=528" title="户内交流高压真空断路器">户内交流高压真空断路器</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=529" title="户外交流高压隔离真空负荷开关">户外交流高压隔离真空负荷开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=530" title="户内交流高压真空负荷开关">户内交流高压真空负荷开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=531" title="户内交流高压隔离开关">户内交流高压隔离开关</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=532" title="户外交流高压隔离开关">户外交流高压隔离开关</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=14"><img src="./product_files/20140625131950-0139-54151.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=14">成套电气、照明配电箱</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=54" title="开关柜">开关柜</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=56" title="变电站">变电站</a></li>
		                    <li><a href="http://###/product.php?partid=15&mpid=57" title="照明配电箱">照明配电箱</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=15"><img src="./product_files/20140625132010-0497-56881.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=15">电缆附件</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=58" title="10KV系列高压热缩型母排保护套管">10KV系列高压热缩型母排保护套管</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=454" title="热缩分支首套">热缩分支首套</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=59" title="10KV、35KV 冷缩式中间接头">10KV、35KV 冷缩式中间接头</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=60" title="10KV、35KV 户内冷缩式终端">10KV、35KV 户内冷缩式终端</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=61" title="10KV 交联、油浸电缆热缩中间接头">10KV 交联、油浸电缆热缩中间接</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=62" title="1KV 低压阻燃热缩套管系列">1KV 低压阻燃热缩套管系列</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=15&id=455" title="1KV 交联电缆热缩终端、中间接头">1KV 交联电缆热缩终端、中间接头</a></li>
		                  </ul>
		      </li>
			        <li>
		        <span class="img"><a href="http://###/product.php?partid=15&mpid=16"><img src="./product_files/20140625132025-0253-99958.jpg"></a></span>
		        <span class="title"><a href="http://###/product.php?partid=15&mpid=16">母线槽、电缆桥架</a></span>
		        <ul class="prolist">
		                    <li><a href="http://###/product.php?partid=15&mpid=63" title="母线槽">母线槽</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=16&id=64" title="槽式电缆桥架">槽式电缆桥架</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=16&id=66" title="梯级式电缆桥架">梯级式电缆桥架</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=16&id=67" title="托盘式电缆桥架">托盘式电缆桥架</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=16&id=68" title="组合式电缆桥架">组合式电缆桥架</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=16&id=69" title="支架">支架</a></li>
		                    <li><a href="http://###/product_view.php?partid=15&mpid=16&id=70" title="附件">附件</a></li>
		                  </ul>
		      </li>
			  <li class="clear"></li>    </ul>
		  </div>
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
		  <div id="bottom_r"><!-- onclick="location.href=&#39;bossmail.php&#39;  -->
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
		      <a href="http://###/">首页</a>
		      <a href="http://###/about.php">关于华通</a>
		      <a href="http://###/news.php">资讯动态</a>
		      <a href="./product_files/product.html">产品中心</a>
		    </div>
		    <div class="fMenu">
		      <a href="http://###/network.php">营销网络</a>
		      <a href="http://###/service.php">服务支持</a>
		      <a href="http://###/contact.php">联系我们</a>
		      <a href="http://www.eshion.cn/" target="_blank" style="color:#999;">亿新科技 技术支持</a>
		    </div>
		  </div>
		</div>
  </body>
  	<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
	<link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
