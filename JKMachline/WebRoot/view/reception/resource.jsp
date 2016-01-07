<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>人力资源-招聘职位</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="view/reception/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="view/reception/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="view/reception/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="view/reception/js/diy_index/public-all.js"></script>
	<script type="text/javascript" src="view/reception/js/public.js"></script>
	<style type="text/css">
.man_left_left,.man_right {
	background-color: #EEEEEE;
	border-radius: .8em;
}

.man_left {
	float: left;
	width: 302px;
	height: 100%;
}

.man_left_left,.man_left_right {
	height: 88%
}

.man_left_left,.man_left_right {
	margin: 0;
	padding: 0
}

.man_left_left ul {
	margin-left: 30px;
}

.man_left_left ul li {
	border: 1px red solid;
	height: 70px;
	margin-top: 20px;
	-webkit-border-radius: 10px;
	vertical-align: ;
}

.header {
	border: 0px solid #CCC;
	width: 15em;
	height: ;
	background: #EEEEEE;
	border-radius: .8em;
	margin: 0 auto;
	padding: 2em;
}

.header div {
	height: 3em;
	width: 10em;
	margin-top: 10px;
	border-radius: .5em;
	margin-left: 0em;
	-webkit-box-align: center;
	box-align: center;
	padding-left: 3em;
	font-size: 20px;
	cursor: pointer;
	border-bottom: 1px dashed white;
}

.hea_img {
	float: right;
	margin-left: 18em;
	display: none;
}

.hea2 {
	border: px solid;
	background: #CC0000;
	color: white;
}
.hea3 {
	border: px solid;
	background: #CC0000;
	color: white;
}
.span1{display: none;}
.span2{display: block;}

.re{border: 0px dashed #0066CC;height:35px;	float:left; width: 198px}
</style>

  </head>

<body onload="onLoadResourceData()">
	<jsp:include page="indexHeader.jsp"></jsp:include>
	<div id="banner">
		<div id="bannerCon">
			<img src="view/reception/images/banner_text.png" id="bannerText">
			<p id="bannerTit">
				<a class="aGray">首页</a> - <a class="aGray">人力资源</a> - <a class="aGray">招聘职位</a><span></span>
			</p>
		</div>
	</div>
	<div id="menuSon">
		<ul id="menuSonList">
			<li><a href="####">文秘/销售</a>
			</li>
			<li class="A" style="background-color: rgb(204, 0, 0);"><a href="">技术特长</a>
			</li>
		</ul>
	</div>
	<script type="text/javascript">
		$("#menuSonList li").hover(function() {
			$(this).stop().animate({
				'backgroundColor' : '#CC0000'
			}, 450);
		}, function() {
			if ($(this).attr("class") != "A") {
				$(this).stop().animate({
					'backgroundColor' : '#0066AC'
				}, 350);
			}
		});
	</script>
	<div id="main" >
		<div class="text" style="margin-top:20px;">
			<p style="">
			
			<div style="width: 100%;height: 450px;border: 0px red solid;">
				<div class='man_left' style="float: left;">
					<div class="header">
						<div id='ub1' class="ub">
							<li>钢材切割师A</li></span><span class="span1" style="margin-left: 45px;">>></span>
						</div>
						<div id='ub2' class="ub">
							<li>钢材切割师B</li><span class="span1" style="margin-left: 45px;">>></span>
						</div>
						<div id='ub3' class="ub">
							<li>钢材切割师C</li><span class="span1" style="margin-left: 45px;">>></span>
						</div>
						<div id='ub4' class="ub">
							<li>钢材切割师D</li><span class="span1" style="margin-left: 45px;">>></span>
						</div>
					</div>
					<script type="text/javascript">
						$(document).ready(function() {
							/* $(".header div").mouseover(function() {
								$(this).addClass("hea2");
								var ss = $(this).attr("id");
								$("#" + ss + " span").removeClass("span1");
								var tit = $("#"+ss+" li").text();
								$(".s"+ss).empty();
								$(".sub1").append(tit);
							});
							$(".header div").mouseout(function() {
								$(this).removeClass("hea2");
								var ss = $(this).attr("id");
								$("#" + ss + " span").addClass("span1");
							}); */
							//$("td").bind("mouseenter mouseleave",handlerInOut);
							$(".header div").mouseenter(function(){
								$(this).addClass("hea2");
								var ss = $(this).attr("id");
								$("#" + ss + " span").removeClass("span1");
								var tit = $("#"+ss+" li").text();
								$(".sub1").empty();
								$(".sub1").append(tit);
							});
							$(".header div").mouseleave(function(){
								$(this).removeClass("hea2");
								var ss = $(this).attr("id");
								$("#" + ss + " span").addClass("span1");
							});
							$(".header div").hover(handlerInOut);
							$(".header div").click(function(){
								$(this).addClass("hea3");
								alert(11);
							});
							});
					</script>
				</div>
				<div class='man_right' style="float: right;border: 0px blue solid;width: 650px;height: 100%">
					<div style="width: 600px;height: 90%;border: 0px red solid; margin-left: 25px;margin-top: 3%">
						<div style="border-bottom: 1px dashed #CC0000;height:35px;	 width: 600px">
							<div class='re'></div>
							<div class='re' style=""><span class='sub1' style="font-size: 20px;margin-left: 50px;;">钢材切割师</span></div>
							<div class='re'></div>
						</div>

					</div>

				</div>
			</div>

			</p>

		</div>
	</div>
	<jsp:include page="indexBack.jsp"></jsp:include>
</body>
<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
<link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
<link href="view/reception/css/ui-box.css" rel="stylesheet" type="text/css">
</html>
