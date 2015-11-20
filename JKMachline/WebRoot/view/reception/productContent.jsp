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

<title>My JSP 'productContent.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="" style="display: none; position: absolute;">
		<div class="aui_outer">
			<table class="aui_border">
				<tbody>
					<tr>
						<td class="aui_nw"></td>
						<td class="aui_n"></td>
						<td class="aui_ne"></td>
					</tr>
					<tr>
						<td class="aui_w"></td>
						<td class="aui_c"><div class="aui_inner">
								<table class="aui_dialog">
									<tbody>
										<tr>
											<td colspan="2" class="aui_header"><div
													class="aui_titleBar">
													<div class="aui_title"
														style="cursor: move; display: block;"></div>
													<a class="aui_close" href="javascript:/*artDialog*/;"
														style="display: block;">×</a>
												</div>
											</td>
										</tr>
										<tr>
											<td class="aui_icon" style="display: none;"><div
													class="aui_iconBg" style="background: none;"></div>
											</td>
											<td class="aui_main" style="width: auto; height: auto;"><div
													class="aui_content" style="padding: 20px 25px;"></div>
											</td>
										</tr>
										<tr>
											<td colspan="2" class="aui_footer"><div
													class="aui_buttons" style="display: none;"></div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
						<td class="aui_e"></td>
					</tr>
					<tr>
						<td class="aui_sw"></td>
						<td class="aui_s"></td>
						<td class="aui_se" style="cursor: se-resize;"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div id="head">
		<div id="headmenu">
			<a href="http://www.fato.cn/">首页</a><a
				href="http://www.fato.cn/contact.php">联系我们</a><a
				href="javascript:void(0);" id="sites">华通站群<img
				src="./productContent_files/arr_down.gif"
				style="margin-left:6px; margin-top:-3px;">
			</a><a href="http://www.chinafato.net/chinafato/en/">English</a>
			<div id="headmenuSon" style="left:834px;">
				<a href="http://www.chinafato.net/" target="_blank">华通机电集团</a> <a
					href="http://www.fato.cn/" target="_blank">华通机电股份</a> <a
					href="http://www.shfato.com/" target="_blank">上海华通企业集团</a> <a
					href="http://www.zenner-metering.com/" target="_blank">上海真兰仪表科技</a>
				<a href="http://www.poode.com.cn/" target="_blank">普尔盾电气(上海)</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
$("#sites,#headmenuSon").hover(function(){
	$("#sites").css("color","#FFF");
	$("#headmenuSon").stop().slideDown(350);
},function(){
	$("#sites").css("color","#A8CBE3");
	$("#headmenuSon").stop().slideUp(250);
});
</script>
	<div id="top">
		<div id="logo">
			<a href="http://www.fato.cn/"><img
				src="./productContent_files/logo.png">
			</a>
		</div>
		<ul id="menu">
			<li><a href="http://www.fato.cn/about.php">关于华通</a>
				<div>
					<a href="http://www.fato.cn/about.php">企业概况</a> <a
						href="http://www.fato.cn/boss.php">总裁致辞</a> <a
						href="http://www.fato.cn/culture.php">企业文化</a> <a
						href="http://www.fato.cn/history.php">发展历程</a> <a
						href="http://www.fato.cn/contact.php">联系我们</a>
				</div></li>
			<li class="split"><img
				src="./productContent_files/menu_split.gif">
			</li>
			<li><a href="http://www.fato.cn/news.php">资讯动态</a>
				<div>
					<a href="http://www.fato.cn/news.php">企业新闻</a> <a
						href="http://www.fato.cn/news.php?partid=13">行业动态</a> <a
						href="http://www.fato.cn/video.php">视频中心</a>
				</div></li>
			<li class="split"><img
				src="./productContent_files/menu_split.gif">
			</li>
			<li><a href="http://www.fato.cn/product.php">产品中心</a>
				<div>
					<a href="http://www.fato.cn/product.php">产品总汇</a> <a
						href="http://www.fato.cn/product_360.php">360°产品展示</a> <a
						href="http://www.fato.cn/product_cer.php">资质证书</a>
				</div></li>
			<li class="split"><img
				src="./productContent_files/menu_split.gif">
			</li>
			<li bg="none"><a href="http://www.fato.cn/network.php">营销网络</a>
			</li>
			<li class="split"><img
				src="./productContent_files/menu_split.gif">
			</li>
			<li><a href="http://www.fato.cn/hr.php">人力资源</a>
				<div>
					<a href="http://www.fato.cn/hr.php">人才理念</a> <a
						href="http://www.fato.cn/growing.php">培训与发展</a> <a
						href="http://www.fato.cn/welfare.php">福利待遇</a> <a
						href="http://www.fato.cn/job.php">招贤纳士</a> <a
						href="http://www.fato.cn/resume.php">毛遂自荐</a>
				</div></li>
			<li class="split"><img
				src="./productContent_files/menu_split.gif">
			</li>
			<li><a href="http://www.fato.cn/service.php">服务支持</a>
				<div>
					<a href="http://www.fato.cn/service.php">服务承诺</a> <a
						href="http://www.fato.cn/faq.php">常见问题</a> <a
						href="http://www.fato.cn/download.php">下载服务</a> <a
						href="http://www.fato.cn/feedback.php">在线反馈</a>
				</div></li>
		</ul>
		<div id="search">
			<form id="formsearch" name="formsearch" method="get"
				action="http://www.fato.cn/search.php">
				<div style="width:36px; height:28px; float:right;">
					<img src="./productContent_files/search_btn.png"
						style="cursor:pointer;"
						onclick="$(&#39;#formsearch&#39;).submit();">
				</div>
				<div
					style="background:#EEE; height:28px; line-height:26px; width:150px; float:right; border-radius:4px 0px 0px 4px;">
					<input type="text" name="keys" id="keys" value="关键词…"
						style="background:none; border:0px none; padding:5px; margin-left:2px; margin-top:1px; color:#888; width:130px; outline:none;">
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
$("#keys").focus(function(){
	$(this).css("color","#FFF");
	if($(this).val()=='关键词…'){
		$(this).val('');
	}
	$(this).parent().stop().animate({"backgroundColor":"#0067AC","width":"180px"},350);
	$(this).stop().animate({"width":"160px"},350);
});
$("#keys").blur(function(){
	$(this).css("color","#888");
	if($(this).val()==''){
		$(this).val('关键词…');
	}
	$(this).parent().stop().animate({"backgroundColor":"#EEEEEE","width":"150px"},300);
	$(this).stop().animate({"width":"130px"},300);
});
$("#menu li").hover(function(){
	if($(this).attr("bg")=="none"){
		$(this).find("a").css("background","none");
	}
	$(this).find("a").eq(0).addClass("A");
	$(this).find("div").stop().slideDown(350);
},function(){
	if($(this).attr("bg")=="none"){
		$(this).find("a").css("background","none");
	}
	$(this).find("a").eq(0).removeClass("A");
	$(this).find("div").stop().slideUp(200);
});
</script>
	<div id="banner">
		<div id="bannerCon">
			<img src="./productContent_files/banner_text.png" id="bannerText">
			<p id="bannerTit">
				<a href="http://www.fato.cn/" class="aGray">首页</a> - <a
					href="http://www.fato.cn/product.php" class="aGray">产品中心</a> - <a
					href="http://www.fato.cn/product.php" class="aGray">产品总汇</a><span>产品中心</span>
			</p>
		</div>
	</div>
	<div id="menuSon">
		<ul id="menuSonList">
			<li><a href="http://www.fato.cn/product_cer.php">资质证书</a>
			</li>
			<li><a href="http://www.fato.cn/product_360.php">360°产品展示</a>
			</li>
			<li class="A"><a href="http://www.fato.cn/product.php">产品总汇</a>
			</li>
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
		<div>
			<div id="mainC_l">
				<div style="margin-top:18px;">
					<style type="text/css" class="A">
.prolist_side,.prolist_side_son {
	padding: 0;
	margin: 0;
	list-style: none;
	zoom: 1;
}

.prolist_side li {
	position: relative;
	background: #FFF;
	zoom: 1;
	overflow: hidden;
}

.prolist_side li ul.close {
	display: none;
}

.prolist_side li ul.open {
	display: block;
}

.prolist_side li span.close {
	display: block;
	padding: 5px 0px 5px 10px;
	background: url(images/plus_minus.gif) no-repeat right 9px;
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer;
	z-index: 99;
	width: 12px;
	height: 12px;
}

.prolist_side li span.open {
	display: block;
	padding: 5px 0px 5px 10px;
	background: url(images/plus_minus.gif) no-repeat right -183px;
	position: absolute;
	top: 0;
	right: 0;
	cursor: pointer;
	z-index: 99;
	width: 12px;
	height: 12px;
}

.prolist_side li a {
	display: block;
	zoom: 1;
	position: relative;
	padding: 5px 0px 5px 10px;
	background: url(images/list_arr.gif) no-repeat left 9px;
}

.prolist_side li a:hover,.prolist_side li a:active,.prolist_side li a.A
	{
	background: url(images/list_arr.gif) no-repeat left -83px;
}

.prolist_side li a.A {
	color: #FF6600;
}

.prolist_side_son li a {
	border-left: 1px solid #DDD;
	padding: 5px 0px 5px 7px;
	background: none;
}

.prolist_side_son li a:hover,.prolist_side_son li a:active,.prolist_side_son li a.A
	{
	border-left: 1px solid #FF6600;
	background: none;
}

.prolist_side_son li a.A {
	color: #FF6600;
}
</style>
					<ul class="prolist_side open">
						<li><span class="open"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=1"
							datavalue="1" class="A">CF3系列精品</a>
						<ul class="prolist_side_son open">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=71"
									datavalue="71">CFW3系列万能式断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="./productContent_files/productContent.html"
									datavalue="182" class="A">CFM3系列塑料外壳式断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=183"
									datavalue="183">CFM3E系列电子式塑壳断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=184"
									datavalue="184">CFB3-63系列小型断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=185"
									datavalue="185">CFB3LE系列小型漏电断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=186"
									datavalue="186">CFC3系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=661"
									datavalue="661">CF3系列光伏直流电气</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=2"
							datavalue="2">新产品系列</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=191"
									datavalue="191">CFM3LE自动重合闸剩余电流工作断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=192"
									datavalue="192">CFGQ1系列过欠压延时保护器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=193"
									datavalue="193">CFKJ1系列电子限荷自动控制器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=194"
									datavalue="194">CFB3Z系列小型断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=195"
									datavalue="195">CFB5S系列小型断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=197"
									datavalue="197">CFB1LE-63系列小型漏电断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=199"
									datavalue="199">CFB8LE系列剩余电流动作断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=598"
									datavalue="598">CFK1系列控制与保护开关电器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=629"
									datavalue="629">CFB2-63系列小型断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=630"
									datavalue="630">DZ47-63GQ、DZ47-100HGQ过欠压保护小型断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=631"
									datavalue="631">CFB3-125小型断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=632"
									datavalue="632">CFB6LE-125剩余电流动作断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=633"
									datavalue="633">CFB2LE-63剩余电流动作断路器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=2&id=634"
									datavalue="634">CFB6-125塑料外壳式断路器</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=3"
							datavalue="3">断路器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=17"
									datavalue="17">小型断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=205"
											datavalue="205">DZ47系列小型断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=208"
											datavalue="208">DZ47Z系列小型断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=209"
											datavalue="209">CFB30-32系列小型断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=210"
											datavalue="210">CFB1-63系列小型断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=211"
											datavalue="211">CFH2-125系列小型隔离开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=212"
											datavalue="212">AC30模数化（框缘式）插座</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=213"
											datavalue="213">CFG40系列电涌保护器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=214"
											datavalue="214">CFLY1系列电涌保护器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=635"
											datavalue="635">CFH2-125系列小型隔离开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=17&id=636"
											datavalue="636">CFH5系列隔离开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=18"
									datavalue="18">漏电断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=206"
											datavalue="206">DZ47LE-63系列一体式漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=207"
											datavalue="207">DZ47-63附件</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=215"
											datavalue="215">DZ47LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=216"
											datavalue="216">CFB30LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=217"
											datavalue="217">DZL18系列漏电保护器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=218"
											datavalue="218">DZ20LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=219"
											datavalue="219">CFM10LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=220"
											datavalue="220">DZ15LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=221"
											datavalue="221">DZL25系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=222"
											datavalue="222">CFM1LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=690"
											datavalue="690">CFM12LE系列漏电断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=18&id=691"
											datavalue="691">CFM1L系列剩余电流动作断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=19"
									datavalue="19">塑料外壳式断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=187"
											datavalue="187">CFM10系列塑料外壳式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=188"
											datavalue="188">DZ20系列塑料外壳式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=189"
											datavalue="189">DZ15系列塑料外壳式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=190"
											datavalue="190">CFM1系列塑料外壳式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=227"
											datavalue="227">CFM1E系列塑料外壳式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=689"
											datavalue="689">CFM12系列塑料外壳式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=19&id=706"
											datavalue="706">DZ108系列塑料外壳式断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=20"
									datavalue="20">万能式断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=20&id=200"
											datavalue="200">CFW45系列智能型万能式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=20&id=201"
											datavalue="201">CFW1系列智能型万能式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=20&id=202"
											datavalue="202">DW17系列万能式空气断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=20&id=203"
											datavalue="203">DW15系列万能式断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=20&id=204"
											datavalue="204">CFW16系列万能式断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=223"
									datavalue="223">双电源自动转换开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=223&id=224"
											datavalue="224">CFHQ2智能型双电源自动转换开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=223&id=225"
											datavalue="225">CFHQ2-63系列双电源自动转换开关（终端型）</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=223&id=226"
											datavalue="226">CFHQ3系列自动转换开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=223&id=708"
											datavalue="708">CFQ2双电源转换开关</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=4"
							datavalue="4">接触器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=327"
									datavalue="327">CFC2(CJX2)(大容量)系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=326"
									datavalue="326">CFC2(CJX2)系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=322"
									datavalue="322">CFC8(CJX8)系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=662"
									datavalue="662">CFC8-□C(CJX8-□C)系列切换电容器接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=318"
									datavalue="318">CFC10系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=328"
									datavalue="328">CFC19、CFC16系列切换电容器接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=321"
									datavalue="321">CFC40(TCK1)系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=324"
									datavalue="324">CJ12系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=320"
									datavalue="320">CJ20S系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=319"
									datavalue="319">CJ20系列交流接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=329"
									datavalue="329">CKJ5系列真空接触器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=4&id=325"
									datavalue="325">CFC1(CJX1)系列交流接触器</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=5"
							datavalue="5">开关电器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=24"
									datavalue="24">按钮开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=427"
											datavalue="427">CFA3系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=428"
											datavalue="428">CFA18系列控制按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=429"
											datavalue="429">CFA19系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=430"
											datavalue="430">LA2系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=431"
											datavalue="431">LA4系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=433"
											datavalue="433">LA39系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=434"
											datavalue="434">LAY5系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=435"
											datavalue="435">LAY7系列按钮开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=24&id=436"
											datavalue="436">CFS18系列信号灯</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=25"
									datavalue="25">行程开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=417"
											datavalue="417">CFX4系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=418"
											datavalue="418">CFX8(ME)系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=419"
											datavalue="419">LX10系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=420"
											datavalue="420">LX19系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=421"
											datavalue="421">LX22系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=423"
											datavalue="423">LXP1(3SE3)系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=424"
											datavalue="424">LXK3系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=426"
											datavalue="426">JLXK1系列行程开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=25&id=425"
											datavalue="425">JW2系列行程开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=26"
									datavalue="26">组合开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=26&id=405"
											datavalue="405">HZ5系列组合开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=26&id=407"
											datavalue="407">CFL10(HZ10)系列组合开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=26&id=408"
											datavalue="408">CFL23系列组合开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=26&id=705"
											datavalue="705">CFL1系列组合式万能转换开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=27"
									datavalue="27">万能转换开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=27&id=412"
											datavalue="412">CFL5（LW5）系列万能转换开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=27&id=413"
											datavalue="413">LW6系列万能转换开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=27&id=414"
											datavalue="414">LW8系列万能转换开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=27&id=415"
											datavalue="415">LW12系列万能转换开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=28"
									datavalue="28">倒顺开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=28&id=404"
											datavalue="404">HY2系列倒顺开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=28&id=698"
											datavalue="698">QS系列防水倒顺开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=30"
									datavalue="30">隔离开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=30&id=399"
											datavalue="399">CFH1系列负荷-隔离开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=30&id=401"
											datavalue="401">CFH15(HH15)系列隔离开关熔断器组</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=30&id=402"
											datavalue="402">HR5系列熔断器式隔离开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=30&id=403"
											datavalue="403">HR6系列熔断器式隔离开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=31"
									datavalue="31">刀开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=31&id=396"
											datavalue="396">HD（HS）系列开启式刀开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=31&id=400"
											datavalue="400">CFH23(HR3)系列熔断器式刀开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=31&id=696"
											datavalue="696">HD11(HS11)B系列开启式刀开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=31&id=697"
											datavalue="697">HD11FA系列开启式刀开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=699"
									datavalue="699">断火限位器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=699&id=700"
											datavalue="700">LX44系列断火限位器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=701"
									datavalue="701">可逆转换开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=701&id=702"
											datavalue="702">QX1-13N1可逆转换开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=703"
									datavalue="703">压扣开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=703&id=704"
											datavalue="704">BS2系列压扣开关</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=6"
							datavalue="6">起动器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=347"
									datavalue="347">QCX8系列电磁起动器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=348"
									datavalue="348">CFQC20系列电磁起动器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=349"
									datavalue="349">QJX2(LC3-D)系列星三角起动器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=350"
									datavalue="350">CFQR2系列软起动器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=351"
									datavalue="351">CFQB系列变频器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=352"
									datavalue="352">XJ01系列自耦减压起动箱</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=6&id=353"
									datavalue="353">JD1、JD2电磁调速电机控制装置</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=7"
							datavalue="7">变压器、调压器、稳压器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=34"
									datavalue="34">电力变压器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=368"
											datavalue="368">110KV级电力变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=369"
											datavalue="369">35KV双绕组有载调压油浸式电力变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=370"
											datavalue="370">35KV双绕组无励磁调压油浸式电力变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=371"
											datavalue="371">35KV双绕组无励磁调压油浸式配电变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=372"
											datavalue="372">S11-M型20-10KV双绕组无励磁调压油浸式电力变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=373"
											datavalue="373">S11型6-10KV双绕组无励磁调压油浸式配电变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=374"
											datavalue="374">S11-M型6-10KV双绕组无励磁调压全密封油浸式配电变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=379"
											datavalue="379">SC(B)-10型6-10KV环氧树脂浇注干式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=381"
											datavalue="381">SC(B)-11型6-10KV环氧树脂浇注干式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=383"
											datavalue="383">SCZ(B)10型6-10KV环氧浇注干式有载变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=385"
											datavalue="385">SGB(H)10型6-10KV环保型干式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=386"
											datavalue="386">10KV非晶合金油浸式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=387"
											datavalue="387">KS11型6-10KV油浸式矿用变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=388"
											datavalue="388">ZS中频电炉用整流变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=389"
											datavalue="389">特种变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=479"
											datavalue="479">S13-M.RL型6～10kv双绕组无励磁调压全密封油浸式配电变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=615"
											datavalue="615">SC（B）10型6～10kv环氧树脂浇注干式励磁变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=616"
											datavalue="616">SCZ（B）11型6～10kv环氧浇注干式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=617"
											datavalue="617">SC（B）11型20～10kv环氧树脂浇注干式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=618"
											datavalue="618">SC（B）10型35kV环氧浇注干式变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=619"
											datavalue="619">YB27系列预装式变电站(美式箱变 )</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=620"
											datavalue="620">SZ13-MT型10kv有载调容调压全密封油浸式配电变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=34&id=660"
											datavalue="660">上海环氧电力变压器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=35"
									datavalue="35">调压器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=35&id=354"
											datavalue="354">TDGC、TSGC系列接触调压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=35&id=355"
											datavalue="355">TDGC2、TSGC2系列接触调压器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=36"
									datavalue="36">稳压器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=36&id=356"
											datavalue="356">SVC、SJW系列单、三相全自动交流稳压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=36&id=358"
											datavalue="358">DBW、SBW系列大功率自动补偿式电力稳压器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=623"
									datavalue="623">控制变压器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=359"
											datavalue="359">BK系列控制变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=360"
											datavalue="360">JBK系列控制变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=361"
											datavalue="361">JBK5系列控制变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=362"
											datavalue="362">BZ、DJMB2、JMB、DG系列照明行灯变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=363"
											datavalue="363">QZB-J系列自耦减压变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=364"
											datavalue="364">ZSG(ZB)系列三相干式整流变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=365"
											datavalue="365">CSD系列船用变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=366"
											datavalue="366">DDG系列低压大电流变压器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=623&id=367"
											datavalue="367">SG、SBK三相干式变压器</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=8"
							datavalue="8">仪器仪表、互感器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=37"
									datavalue="37">电能表</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=263"
											datavalue="263">DD862系列单相电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=264"
											datavalue="264">DT862/DT864三相电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=265"
											datavalue="265">D86三相三线无功能电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=266"
											datavalue="266">DS862/DS864三相三线有功电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=267"
											datavalue="267">DX862/DX864型三相四线无功电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=268"
											datavalue="268">DDS877型、DDS48型电子式单相电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=269"
											datavalue="269">DDS877型电子式单相电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=270"
											datavalue="270">DTS877/DSS877/DXS877型系列电子式三相电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=271"
											datavalue="271">DDSY877型电子式单相预付费电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=272"
											datavalue="272">DTSY877、DSSY877型电子式三相预付费电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=273"
											datavalue="273">DDSF877单相电子式多费率电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=274"
											datavalue="274">DDSF877/DTSF877三相电子式多费率电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=275"
											datavalue="275">DSS(X)877/DTS(X)877三相电子式组合电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=276"
											datavalue="276">DSSD877/DTSD877三相电子式多功能电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=277"
											datavalue="277">DDSI877系列电子式单相载波电能表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=278"
											datavalue="278">CCGZ877-1型电力线载波集中抄表系统</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=279"
											datavalue="279">安装式电工仪表系列产品</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=280"
											datavalue="280">42L6、42C3电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=281"
											datavalue="281">6L2、6C2电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=282"
											datavalue="282">59C、59L电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=283"
											datavalue="283">44C2、44L1电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=284"
											datavalue="284">69C9、69L9电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=285"
											datavalue="285">85C1、85L1电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=286"
											datavalue="286">85L17、69L17电工仪表系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=287"
											datavalue="287">46C、46L系列A、V、W、COSΦ、Hz型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=288"
											datavalue="288">99T1系列A、V型</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=289"
											datavalue="289">PX系列数显表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=290"
											datavalue="290">PD系列多功能电力仪表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=291"
											datavalue="291">PK系列可编程数显表</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=37&id=292"
											datavalue="292">Y系列压力表、Z系列真空表</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=38"
									datavalue="38">互感器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=293"
											datavalue="293">JDZ-6,10;JDZF-6,10;JDZ-6,10Q;JDZF-6,10Q系列单相、半封闭电压互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=294"
											datavalue="294">JDZJ-6,10;JDZJ-6,10Q系列单相、半封闭电压互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=295"
											datavalue="295">JDZ10-6(RZL6);JDZ10-10A(RZL10);JDZF10-6,10系列单相、全封闭电压互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=296"
											datavalue="296">JDZX10-6(REL6);JDZX10-10A(REL10);JDZXF10-6,10系列单相、全封闭电压互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=297"
											datavalue="297">LZZJ-10Q型户内、全封闭、全工况、干式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=298"
											datavalue="298">LAZBJ-10,LA-10型户内、全封闭、穿墙式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=299"
											datavalue="299">LZZBJ9-10系列户内、全封闭、全工况、干式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=300"
											datavalue="300">BH-0.66/□Ⅰ型户内、全封闭、塑壳式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=301"
											datavalue="301">BH-0.66/□Ⅱ型户内、全封闭、塑壳式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=302"
											datavalue="302">BH-0.66/□Ⅲ型户内、全封闭、塑壳式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=303"
											datavalue="303">LMZ(J)1-0.5型户内、全封闭、浇注式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=304"
											datavalue="304">LMZ(J)1-0.66型户内、全封闭、浇注式电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=305"
											datavalue="305">LQZJ6-0.66电流互感器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=306"
											datavalue="306">XD1系列限流电抗器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=307"
											datavalue="307">JLS-6,10三相三线电力计量箱油浸产品&lt;宽负荷，可带控制电源&gt;</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=308"
											datavalue="308">JLSZW10-6,10三相三线电力计量箱干式产品&lt;宽负荷，可带控制电源&gt;</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=38&id=309"
											datavalue="309">JLS-35三相三线电力计量箱油浸产品&lt;宽负荷，可带控制电源&gt;</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=9"
							datavalue="9">继电器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=39"
									datavalue="39">中间继电器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=39&id=343"
											datavalue="343">JZ7中间继电器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=40"
									datavalue="40">接触式继电器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=40&id=344"
											datavalue="344">JZC1系列接触器式继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=40&id=345"
											datavalue="345">JZC4系列接触器式继电器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=41"
									datavalue="41">热继电器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=330"
											datavalue="330">JRS1系列过载热继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=331"
											datavalue="331">JR20系列热继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=332"
											datavalue="332">JR28系列热过载继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=333"
											datavalue="333">JR29系列热继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=334"
											datavalue="334">JR36B系列热继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=335"
											datavalue="335">JRS2系列热继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=41&id=336"
											datavalue="336">JQX小型继电器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=42"
									datavalue="42">时间继电器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=42&id=337"
											datavalue="337">CFJS3系列电子式时间继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=42&id=346"
											datavalue="346">LA2、LA3系列空气延时头</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=43"
									datavalue="43">电力保护继电器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=43&id=338"
											datavalue="338">JT3系列直流电磁继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=43&id=339"
											datavalue="339">JL12系列过电流延时继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=43&id=340"
											datavalue="340">JL14系列交直流电流继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=43&id=341"
											datavalue="341">JL15系列电流继电器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=43&id=342"
											datavalue="342">JL18系列电流继电器</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=10"
							datavalue="10">电磁铁</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=10&id=390"
									datavalue="390">MQ1系列牵引电磁铁</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=10&id=391"
									datavalue="391">MQ2系列牵引电磁铁</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=10&id=392"
									datavalue="392">MFJ1、H系列交流干式阀用电磁铁</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=10&id=393"
									datavalue="393">MZD1系列交流单相制动电磁铁</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=10&id=394"
									datavalue="394">TJ2系列制动器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=10&id=395"
									datavalue="395">MZS1系列交流三相制动电磁铁</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=11"
							datavalue="11">熔断器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=314"
									datavalue="314">RT0系列有填料封闭管式刀形触头熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=313"
									datavalue="313">RT16系列有填料管式熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=647"
									datavalue="647">RT17系列有填料管式熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=317"
									datavalue="317">RS3系列半导体器保护用快速熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=311"
									datavalue="311">RT18系列熔断隔离器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=316"
									datavalue="316">RS0系列半导体器保护用快速熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=310"
									datavalue="310">RT14系列圆筒形帽熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=312"
									datavalue="312">RT19系列圆筒形帽熔断器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=11&id=315"
									datavalue="315">NGT型半导体器件保护用熔断器</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=12"
							datavalue="12">电容器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=12&id=47"
									datavalue="47">BSMJ自愈式低压并联电容器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=12&id=48"
									datavalue="48">圆柱形自愈式低压并联电容器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=12&id=49"
									datavalue="49">无功功率自动补偿控制器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=12&id=643"
									datavalue="643">BSMJ分相补偿并联电容器</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=12&id=644"
									datavalue="644">CF-CKY35低压无功综合测控仪</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=12&id=645"
									datavalue="645">CF系列智能式无功补偿电容器</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=13"
							datavalue="13">高压电器</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=13&id=256"
									datavalue="256">避雷器系列</a>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=437"
									datavalue="437">复合绝缘子系列</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=437&id=257"
											datavalue="257">复合悬式绝缘子</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=437&id=258"
											datavalue="258">复合针式绝缘子</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=437&id=259"
											datavalue="259">复合横担绝缘子</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=437&id=260"
											datavalue="260">复合支柱绝缘子</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=261"
									datavalue="261">高压熔断器系列</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=261&id=650"
											datavalue="650">跌落式熔断器系列</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=261&id=651"
											datavalue="651">XRNP1系列电压互感器保护熔断器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=261&id=652"
											datavalue="652">XRNT1-10变压器保护用插入式 高压限流熔断器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=513"
									datavalue="513">智能型配电网自动化开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=514"
											datavalue="514">ZW8F-12户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=515"
											datavalue="515">ZW10F-12户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=516"
											datavalue="516">ZW20F-12户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=517"
											datavalue="517">FZW28F-12户外交流高压分界真空负荷开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=518"
											datavalue="518">ZW32F-12户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=519"
											datavalue="519">ZW32M-12型户外交流高压永磁分界真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=520"
											datavalue="520">ZW32F-24户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=513&id=521"
											datavalue="521">ZW43F-12户外交流高压真空断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=522"
									datavalue="522">智能型配电网预付费真空断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=522&id=533"
											datavalue="533">ZW8Y-12型户外交流高压预付费真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=522&id=534"
											datavalue="534">ZW10Y-12型户外交流高压预付费真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=522&id=535"
											datavalue="535">ZW32Y-12型户外交流高压预付费真空断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=523"
									datavalue="523">配电网双电源投切真空断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=523&id=536"
											datavalue="536">ZW8S-12型户外交流高压双电源投切真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=523&id=537"
											datavalue="537">ZW10S-12型户外交流高压双电源投切真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=523&id=538"
											datavalue="538">ZW32S-12型户外交流高压预付费真空断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=524"
									datavalue="524">户外交流高压真空断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=539"
											datavalue="539">ZW7-40.5型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=540"
											datavalue="540">ZW8-12型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=541"
											datavalue="541">ZW10-12型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=542"
											datavalue="542">ZW20-12型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=543"
											datavalue="543">ZW32-12型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=544"
											datavalue="544">ZW32-24型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=545"
											datavalue="545">ZW43-12型户外交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=524&id=546"
											datavalue="546">LW□ -40.5型户外交流高压六氟化硫断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=528"
									datavalue="528">户内交流高压真空断路器</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=547"
											datavalue="547">ZN23-40.5型手车式户内交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=548"
											datavalue="548">ZN28-12型户内交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=549"
											datavalue="549">ZN63(VS1)-12型户内交流高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=550"
											datavalue="550">ZN63C-12(VS1-12C)型户内交流侧装式高压真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=551"
											datavalue="551">ZN63M(VFM)-12型户内交流高压永磁真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=552"
											datavalue="552">ZN63P(VFP)-12型户内交流高压固封式真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=553"
											datavalue="553">ZN63P(VFP)-24型户内交流高压固封式真空断路器</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=528&id=554"
											datavalue="554">ZN85-40.5型户内交流高压真空断路器</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=529"
									datavalue="529">户外交流高压隔离真空负荷开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=529&id=555"
											datavalue="555">FZW20-12型户外交流高压隔离真空负荷开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=529&id=556"
											datavalue="556">FZW32-12(40.5)型户外交流高压隔离真空负荷开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=529&id=557"
											datavalue="557">FZW36-40.5型户外交流高压隔离真空负荷开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=530"
									datavalue="530">户内交流高压真空负荷开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=530&id=558"
											datavalue="558">FN12-12(D) T630-20系列户内交流高压负荷开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=530&id=559"
											datavalue="559">FZN21-12(D) T630-20系列户内交流高压负荷开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=530&id=560"
											datavalue="560">FZN25-12(D) T630-20系列户内交流高压负荷开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=531"
									datavalue="531">户内交流高压隔离开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=531&id=561"
											datavalue="561">GN19-12(C)型户内交流高压隔离开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=531&id=562"
											datavalue="562">GN30-12型户内交流高压旋装式隔离开关</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=532"
									datavalue="532">户外交流高压隔离开关</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=532&id=563"
											datavalue="563">GW4-40.5型户外交流高压隔离开关</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=532&id=564"
											datavalue="564">GW5-40.5型户外交流高压隔离开关</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=14"
							datavalue="14">成套电气、照明配电箱</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=54"
									datavalue="54">开关柜</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=438"
											datavalue="438">MNS低压抽出式开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=439"
											datavalue="439">GCS低压抽出式开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=440"
											datavalue="440">GCK1低压抽出式开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=441"
											datavalue="441">KYN1-10户内交流金属铠装移开式开关设备</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=442"
											datavalue="442">KYN18A-12户内交流铠装移开式开关设备</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=443"
											datavalue="443">KYN28A-12(GZS1)金属铠装中置式开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=444"
											datavalue="444">KYN61－40.5铠装移开式交流金属封闭开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=445"
											datavalue="445">XGN2-10箱型固定式金属封闭开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=446"
											datavalue="446">HXGN-□10箱型固定式金属封闭开关柜</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=54&id=447"
											datavalue="447">HXGN(sf6)中压开关柜</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=56"
									datavalue="56">变电站</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=56&id=448"
											datavalue="448">户外箱式变电站</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=56&id=449"
											datavalue="449">预装式变电站（美式箱变）</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=57"
									datavalue="57">照明配电箱</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=57&id=450"
											datavalue="450">智能型全数字程控直流屏</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=57&id=451"
											datavalue="451">XL-21型动力配电箱</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=57&id=452"
											datavalue="452">CFP20、30系列模数化终端组合电器箱</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=57&id=453"
											datavalue="453">CFP40系列电表箱</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=15"
							datavalue="15">电缆附件</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=58"
									datavalue="58">10KV系列高压热缩型母排保护套管</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=454"
									datavalue="454">热缩分支首套</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=59"
									datavalue="59">10KV、35KV 冷缩式中间接头</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=60"
									datavalue="60">10KV、35KV 户内冷缩式终端</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=61"
									datavalue="61">10KV 交联、油浸电缆热缩中间接头</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=62"
									datavalue="62">1KV 低压阻燃热缩套管系列</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=15&id=455"
									datavalue="455">1KV 交联电缆热缩终端、中间接头</a>
								</li>
							</ul>
						</li>
						<li><span class="close"></span><a
							href="http://www.fato.cn/product.php?partid=15&mpid=16"
							datavalue="16">母线槽、电缆桥架</a>
						<ul class="prolist_side_son close">
								<li style="padding-left:10px;"><span class="close"></span><a
									href="http://www.fato.cn/product.php?partid=15&mpid=63"
									datavalue="63">母线槽</a>
								<ul class="prolist_side_son close">
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=63&id=456"
											datavalue="456">CFW高强封闭绝缘</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=63&id=457"
											datavalue="457">KFM母线槽</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=63&id=458"
											datavalue="458">GM高压共相式封闭母线</a>
										</li>
										<li style="padding-left:10px;"><a
											href="http://www.fato.cn/product_view.php?partid=15&mpid=63&id=459"
											datavalue="459">母线槽安装</a>
										</li>
									</ul>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=16&id=64"
									datavalue="64">槽式电缆桥架</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=16&id=66"
									datavalue="66">梯级式电缆桥架</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=16&id=67"
									datavalue="67">托盘式电缆桥架</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=16&id=68"
									datavalue="68">组合式电缆桥架</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=16&id=69"
									datavalue="69">支架</a>
								</li>
								<li style="padding-left:10px;"><a
									href="http://www.fato.cn/product_view.php?partid=15&mpid=16&id=70"
									datavalue="70">附件</a>
								</li>
							</ul>
						</li>
					</ul>
					<script type="text/javascript">main_list_all("prolist_side");</script>
				</div>
			</div>
			<div id="mainC_r">
				<div style="width:750px; margin-top:28px;">
					<div style="width:300px; float:left; text-align:center;">
						<style type="text/css">
.zxx_image_zoom_list img.zxx_zoom_image {
	position: relative;
}

.zxx_image_zoom_list:hover,.zxx_image_zoom_list:hover img.zxx_zoom_image
	{
	border-color: #ff3300;
}

.zxx_image_zoom_div {
	width: 300px;
	height: 300px;
	padding: 0px;
	background: white;
	border: 1px solid #DDDDDD;
	margin-top: -1px;
	text-align: center;
	position: absolute;
	z-index: 1000;
	left: 0;
	top: 0;
	overflow: hidden;
}
</style>
						<div id="pro_img"
							style="width:300px; height:300px; border:3px solid #EEE; overflow:hidden;">
							<div id="pro_focus_img"
								style="width:300px; height:300px; _overflow:hidden;">
								<img onload="AutoResizeImage(300,300,this,true);"
									src="./productContent_files/20140703111319-0735-19214.jpg"
									style="border: 0px none;" height="300" width="300">
							</div>
							<div
								style="width:300px; height:300px; margin-top:-300px; position:relative; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=image, src=&#39;images/pro_mark.png&#39;); background:url(images/pro_mark.png) no-repeat !important; _background:none; zoom:1;"></div>
							<div style="width:300px; height:300px; margin-top:-300px;">
								<span
									href="http://www.fato.cn/upload/image/2014-07/20140703111319-0735-19214.jpg"
									class="zxx_image_zoom_list" style="cursor:move"
									id="pro_img_zoom"><img
									src="./productContent_files/null.gif" width="300" height="300"
									class="zxx_zoom_image" border="0">
								</span>
							</div>
							<div
								style="width: 300px; position: relative; margin-top: -17px; text-align: right; display: block;"
								id="pro_zoomer">
								<img src="./productContent_files/arr_zoom.gif" border="0">
							</div>
						</div>
						<div id="pro_focus_list"
							style="width:300px; margin-top:10px; margin-left:2px;">
							<a href="javascript:void(0);"
								style="background:url(images/pro_focus_left.gif) no-repeat center center; background-color:#FFF; border:1px solid #DDD; width:13px; height:58px; float:left; display:block;"
								id="pro_img_list_l"></a>
							<div id="pro_focus_imgs"
								style="width:262px; height:60px; overflow:hidden; margin-left:3px; float:left; white-space:nowrap;">
								<div id="pro_focus_imgs_list"
									style="margin-left:0; text-align:left;">
									<a href="javascript:void(0);"
										style="width: 58px; height: 57px; border: 1px solid rgb(255, 204, 0); display: inline-block; text-align: center; margin-left: 3px; margin-right: 3px; padding-top: 1px; background-color: rgb(255, 255, 191);"
										tab="0"><img onload="AutoResizeImage(56,56,this,true);"
										src="./productContent_files/20140703111319-0735-19214.jpg"
										alt="2-D1"
										style="border:0px none; display:block; margin-left:auto; margin-right:auto;"
										height="56" width="56">
									</a><a href="javascript:void(0);"
										style="width: 58px; height: 57px; border: 1px solid rgb(221, 221, 221); display: inline-block; text-align: center; margin-left: 3px; margin-right: 3px; padding-top: 1px;"
										tab="1"><img onload="AutoResizeImage(56,56,this,true);"
										src="./productContent_files/20140703111322-0747-99099.jpg"
										alt="2-D2"
										style="border:0px none; display:block; margin-left:auto; margin-right:auto;"
										height="56" width="56">
									</a>
								</div>
							</div>
							<a href="javascript:void(0);"
								style="background:url(images/pro_focus_right.gif) no-repeat center center; background-color:#FFF; border:1px solid #DDD; width:13px; height:58px; float:right; display:block;"
								id="pro_img_list_r"></a>
						</div>
						<script type="text/javascript">pro_focus_mark("pro","#FFCC00","#FFFFBF",1);</script>
					</div>
					<div style="width:420px; float:right;">
						<div
							style="background:#FFF; font-size:18px; color:#0066AC; padding-bottom:10px; border-bottom:1px solid #E6E6E6; line-height:130%;">CFM3系列塑料外壳式断路器</div>
						<div
							style="padding:8px 8px 13px 10px; background:url(images/pro_class_bg.png) repeat-x left bottom; position:relative; color:#999; font-size:12px;">
							所属：<a href="http://www.fato.cn/product.php?partid=15&mpid=1">CF3系列精品</a><img
								src="./productContent_files/back_pro.png"
								style="position:absolute; right:0; top:-2px; margin-top:35px; cursor:pointer;"
								onclick="history.go(-1);">
						</div>
						<div style="margin-top:22px; font-size:12px;">
							<p>
								<img src="./productContent_files/pro_arr_tel.gif"
									style="vertical-align:middle; margin-right:4px; margin-left:1px; border:0px none;">服务热线：400-8263-733
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:void(0);"
									onclick="DialogOpenWin(&#39;son&#39;,&#39;product_inquiry_basket.php?partid=15&#39;,&#39;800px&#39;,&#39;520px&#39;,&#39;Check out my single basket Inquiry&#39;);"><img
									src="./productContent_files/pro_arr_inquiry-basket.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">查看我的询单篮</a>
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:void(0);" onclick="inquiry(&#39;182&#39;);"><img
									src="./productContent_files/pro_arr_inquiry-basket-add.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">添加到询单篮</a>
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:self.print();"><img
									src="./productContent_files/pro_arr_print.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">打印当前页</a>
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:fav(document.title,location.href);"><img
									src="./productContent_files/pro_arr_bookmark.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">加入收藏</a>
							</p>
							<p style="margin-top:11px;">
								<a
									href="mailto:fato@chinafato.com?subject=Message%20from%20website"><img
									src="./productContent_files/pro_arr_email.gif"
									style="vertical-align:middle; margin-right:4px; margin-left:1px; border:0px none;">发邮件给我们</a>
							</p>
						</div>
						<div
							style="margin-top:22px; border-bottom:1px solid #E0E0E0; padding-bottom:8px; font-weight:bold; color:#D90000;">
							<img src="./productContent_files/pro_arr_pdf.gif"
								style="vertical-align:middle; margin-right:5px; border:0px none;"><span
								style="font-size:14px;">此产品包含以下详细资料</span>
						</div>
						<div style="margin-top:5px; height:80px; overflow-y:scroll;">
							<style type="text/css">
.bigfiles_list {
	background: url(images/arr_file.gif) no-repeat left 1px;
	line-height: 19px;
	display: inline-block;
	padding-left: 20px;
	margin-top: 7px;
}
</style>
							<a
								href="http://www.fato.cn/upload/file/2014-07/20140703111449-0580-73690.pdf"
								target="_blank" class="bigfiles_list">CFM3系列塑料外壳式断路器</a>
						</div>
					</div>
					<div style="clear:both; height:26px;"></div>
				</div>
				<div>
					<style type="text/css">
#tags_title {
	border-bottom: 1px solid #DDD;
	background: url(images/title_bg_1.png) repeat-x left top;
}

#tags_title a {
	border: 1px solid #DDD;
	display: inline-block;
	background: #FFF;
	padding: 4px 12px;
	margin-bottom: -1px;
	position: relative;
	margin-left: 5px;
	outline: none;
}

#tags_title a.A {
	border-bottom: 1px solid #FFF;
	color: #FF6600;
	font-weight: bold;
}

#tags_content {
	margin-top: 10px;
}

#tags_content div {
	padding: 0px 5px;
	line-height: 200%;
}
</style>
					<div id="tags_title">
						<a href="javascript:void(0);" hidefocus="true" tab="0" class="A">适用范围</a><a
							href="javascript:void(0);" hidefocus="true" tab="1">结构特征</a>
					</div>
					<div id="tags_content">
						<div style="display: block;" id="tag_content_0">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CFM3系列塑料外壳式断路器（以下简称断路器），额定绝缘电压690V，适用于交流50Hz，额定工作电压690V及以下，额定工作电流到800A的配电网络中，用来分配电能和保护线路及电源设备免受过载、短路、欠电压等故障的损坏。在正常的情况下可作为线路的不频繁转换和电动机的不频繁起动之用，也可作为电动机的过载、短路、欠电压保护。<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本系列产品符合IEC60947-2，GB14048.2等标准。
						</div>
						<div style="display:none;" id="tag_content_1">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							断路器具有体积小、分断能力高、飞弧距离短等特点，按接线方式可分为板前接线、板后接线、插入式三种。<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							本系列断路器的过电流脱扣器分为瞬时脱扣器和复式脱扣器两种。复式脱扣器由长延时过负载脱扣器和瞬时脱扣器组成。本系列断路器可加装分励脱扣器、欠电压脱扣器、辅助触头及报警触头等附件
						</div>
					</div>
					<script type="text/javascript">tags_show("tags");</script>
				</div>
				<div id="pro_btm">
					<ul>
						<li><a
							href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=71"><img
								src="./productContent_files/20140625141051-0400-88601.jpg"><span
								class="span">上一个：CFW3系列万能式断路器</span>
						</a>
						</li>
						<li><a
							href="http://www.fato.cn/product_view.php?partid=15&mpid=1&id=183"><img
								src="./productContent_files/20140703113151-0829-40882.jpg"><span
								class="span">下一个：CFM3E系列电子式塑壳断路器</span>
						</a>
						</li>
					</ul>
				</div>
			</div>
			<p style="clear:both; height:30px;"></p>
		</div>
	</div>
	<div id="mainbg"></div>
	<div id="bottom">
		<div style="width:1000px; margin:auto; height:50px;">
			<div id="bottom_l">
				<img src="./productContent_files/icon_tel.png"
					style="position:absolute; left:10px; top:10px;">总机：<span
					style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62733333</span>
				传真：<span
					style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62726666</span>
				服务热线：<span
					style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">400-8263-733</span>
				销售热线：<span
					style="font-family:Arial, Tahoma; font-size:16px; font-weight:bold;">0577-62729666</span>
			</div>
			<div id="bottom_r" onclick="location.href=&#39;bossmail.php&#39;;">
				<img src="./productContent_files/icon_mail.png"
					style="margin-right:8px;">董事长信箱
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
		<div
			style="width:1000px; margin:auto; padding-top:20px; padding-bottom:10px;">
			<div style="width:620px; float:left;">
				<p
					style="font-size:16px; color:#333; border-bottom:1px dotted #AAA; padding-bottom:10px;">关于华通</p>
				<p style="line-height:190%; color:#999; margin-top:10px;">华通机电股份有限公司创办于1998年，是华通机电集团下属控股子公司，是国内最大的高、低压电器、仪器仪表、电力变压器等机电产品制造商之一，拥有800多家销售网点。现有员工1200多人，厂房面积8万平方米，总资产5.8亿元。公司连续多年跻身中国民营企业500强、中国机械工业500强、浙江百强企业前列，荣获了高新技术企业、省质量奖、省科技奖、AAA标准化良好行为企业、全国用户满意企业、全国用户满意产品等荣誉称号。</p>
				<p style="margin-top:20px;">
					© 2014~2015 华通机电股份有限公司 版权所有 <a href="http://www.miibeian.gov.cn/"
						target="_blank">浙ICP备11056149号</a>
				</p>
			</div>
			<div class="fMenu">
				<a href="http://www.fato.cn/">首页</a> <a
					href="http://www.fato.cn/about.php">关于华通</a> <a
					href="http://www.fato.cn/news.php">资讯动态</a> <a
					href="http://www.fato.cn/product.php">产品中心</a>
			</div>
			<div class="fMenu">
				<a href="http://www.fato.cn/network.php">营销网络</a> <a
					href="http://www.fato.cn/service.php">服务支持</a> <a
					href="http://www.fato.cn/contact.php">联系我们</a> <a
					href="http://www.eshion.cn/" target="_blank" style="color:#999;">亿新科技
					技术支持</a>
			</div>
		</div>
	</div>
	<div
		style="display: none; position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; cursor: move; opacity: 0; background: rgb(255, 255, 255);"></div>
</body>
</html>
