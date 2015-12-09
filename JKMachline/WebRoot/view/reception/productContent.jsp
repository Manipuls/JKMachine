<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="view/reception/js/jquery.min.1.7.js"></script>
<script type="text/javascript" src="view/reception/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="view/reception/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="view/reception/js/diy_index/public-all.js"></script>
<script type="text/javascript" src="view/reception/js/public.js"></script>
</head>

<body onload="onLoadProductContentData()">
	<jsp:include page="indexHeader.jsp"></jsp:include>
	<div id="banner">
		<div id="bannerCon">
			<img src="view/reception/images/banner_text.png" id="bannerText">
			<p id="bannerTit">
				<a href="http://XXXXX/" class="aGray">首页</a> - <a
					href="http://XXXXX/product.php" class="aGray">产品中心</a> - <a
					href="http://XXXXX/product.php" class="aGray">产品总汇</a><span>产品中心</span>
			</p>
		</div>
	</div>
	<div id="menuSon">
		<ul id="menuSonList">
			<li><a href="http://XXXXX/product_cer.php">资质证书</a>
			</li>
			<li><a href="http://XXXXX/product_360.php">360°产品展示</a>
			</li>
			<li class="A"><a href="http://XXXXX/product.php">产品总汇</a>
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
						<c:forEach items="${sessionScope.product}" var="productList">
						
						<li>
							<span class="open"></span>
							<%--  <a   datavalue="1" >${productList.productName}</a>  --%>
							 <a   datavalue="1" >${productList.productName}</a> 
							<ul class="prolist_side_son open">
								<c:forEach items="${productList.productChild}" var="productListC">
									<li style="padding-left:10px;"><a href="" datavalue="71">${productListC.productName}</a> </li>
								</c:forEach>
							</ul>
						</li>
						</c:forEach>
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
									src="view/reception/images/20140703111319-0735-19214.jpg"
									style="border: 0px none;" height="300" width="300">
							</div>
							<div
								style="width:300px; height:300px; margin-top:-300px; position:relative; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=image, src=&#39;view/reception/images/pro_mark.png&#39;); background:url(images/pro_mark.png) no-repeat !important; _background:none; zoom:1;"></div>
							<div style="width:300px; height:300px; margin-top:-300px;">
								<span
									href="http://XXXXX/upload/image/2014-07/20140703111319-0735-19214.jpg"
									class="zxx_image_zoom_list" style="cursor:move"
									id="pro_img_zoom"><img
									src="view/reception/images/null.gif" width="300" height="300"
									class="zxx_zoom_image" border="0">
								</span>
							</div>
							<div
								style="width: 300px; position: relative; margin-top: -17px; text-align: right; display: block;"
								id="pro_zoomer">
								<img src="view/reception/images/arr_zoom.gif" border="0">
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
										src="view/reception/images/20140703111319-0735-19214.jpg"
										alt="2-D1"
										style="border:0px none; display:block; margin-left:auto; margin-right:auto;"
										height="56" width="56">
									</a><a href="javascript:void(0);"
										style="width: 58px; height: 57px; border: 1px solid rgb(221, 221, 221); display: inline-block; text-align: center; margin-left: 3px; margin-right: 3px; padding-top: 1px;"
										tab="1"><img onload="AutoResizeImage(56,56,this,true);"
										src="view/reception/images/20140703111322-0747-99099.jpg"
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
							所属：<a href="http://XXXXX/product.php?partid=15&mpid=1">CF3系列精品</a><img
								src="view/reception/images/back_pro.png"
								style="position:absolute; right:0; top:-2px; margin-top:35px; cursor:pointer;"
								onclick="history.go(-1);">
						</div>
						<div style="margin-top:22px; font-size:12px;">
							<p>
								<img src="view/reception/images/pro_arr_tel.gif"
									style="vertical-align:middle; margin-right:4px; margin-left:1px; border:0px none;">服务热线：400-8263-733
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:void(0);"
									onclick="DialogOpenWin(&#39;son&#39;,&#39;product_inquiry_basket.php?partid=15&#39;,&#39;800px&#39;,&#39;520px&#39;,&#39;Check out my single basket Inquiry&#39;);"><img
									src="view/reception/images/pro_arr_inquiry-basket.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">查看我的询单篮</a>
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:void(0);" onclick="inquiry(&#39;182&#39;);"><img
									src="view/reception/images/pro_arr_inquiry-basket-add.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">添加到询单篮</a>
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:self.print();"><img
									src="view/reception/images/pro_arr_print.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">打印当前页</a>
							</p>
							<p style="margin-top:11px;">
								<a href="javascript:fav(document.title,location.href);"><img
									src="view/reception/images/pro_arr_bookmark.gif"
									style="vertical-align:middle; margin-right:5px; border:0px none;">加入收藏</a>
							</p>
							<p style="margin-top:11px;">
								<a
									href="mailto:fato@chinafato.com?subject=Message%20from%20website"><img
									src="view/reception/images/pro_arr_email.gif"
									style="vertical-align:middle; margin-right:4px; margin-left:1px; border:0px none;">发邮件给我们</a>
							</p>
						</div>
						<div
							style="margin-top:22px; border-bottom:1px solid #E0E0E0; padding-bottom:8px; font-weight:bold; color:#D90000;">
							<img src="view/reception/images/pro_arr_pdf.gif"
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
								href="http://XXXXX/upload/file/2014-07/20140703111449-0580-73690.pdf"
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
							href="http://XXXXX/product_view.php?partid=15&mpid=1&id=71"><img
								src="view/reception/images/20140625141051-0400-88601.jpg"><span
								class="span">上一个：CFW3系列万能式断路器</span>
						</a>
						</li>
						<li><a
							href="http://XXXXX/product_view.php?partid=15&mpid=1&id=183"><img
								src="view/reception/images/20140703113151-0829-40882.jpg"><span
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
	<jsp:include page="indexBack.jsp"></jsp:include>
</body>
  <link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
  <link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
