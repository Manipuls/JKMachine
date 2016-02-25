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
	<link href="view/reception/css/ui-box.css" rel="stylesheet" type="text/css">
	
	
	
	<script type="text/javascript" src="view/reception/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="view/reception/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="view/reception/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="view/reception/js/diy_index/public-all.js"></script>
 	<script type="text/javascript" src="view/reception/js/diy_index/resourece.js"></script>
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
	background-color: #EEEEEE; 
	border-radius: .8em;
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
.re{border: 0px dashed #0066CC;height:35px;	 width: 198px}

.body{background: #FFF; padding-top: 100px;}
.ub_ul{border: px solid ; width: 200px; background: #ccc; height: 500px; margin: 0 auto; float: left; margin-left: 600px}
.ub_ul ul a{color: #000;} 
.ub_ul ul a li{ border: px solid ;  width: 200px; font-size: 20px; line-height: 40px; text-align: center;border-radius: .5em;}
.ub_ul1{border: px solid ;width: 400px; height: 500px; background: #ccc; float: left; text-align: center;}
.ub_ul1 p{display: none;}
.man_left div span{margin-left: 30px;font-size: 19px;}
.man_left div div{border: px solid ;  width: 100%; font-size: 20px; line-height: 40px; text-align: center;border-radius: .3em;text-align: center;line-height: 60px;}
.bottom_style{height:30px;width: 600px; border-bottom: 1px dashed #CC0000}
.non1,.non2,.non3,.non4, div .sub_tit{text-align: center;}
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
			
			<div  style="width: 100%;height: 450px;border: 0px red solid;">
				<div class='man_left' style="float: left;">
					<div style="margin-top: 15px;">
							<div class="ub_as1" style="color: #FFF; background: red;"><span>切割师A</span></div>
							<div class="ub_as2"><span>切割师B</span></div>
							<div class="ub_as3"><span>切割师C</span></div>
							<div class="ub_as4"><span>切割师D</span></div>
						</ul>
					</div>
				</div>
				<div class='man_right' style="float: right;border: 0px blue solid;width: 650px;height: 100%">
					<div style="width: 600px;height: 90%;border: 0px red solid; margin-left: 25px;margin-top: 3%">
						<div>
							<div class="non1" style="display: block">
								<div class='bottom_style' >
									<span class='sub_tit' style="font-size: 20px;width: 100%">切割师A</span>
								</div>
								你好吗2？你好吗2？你好吗2？你好吗2？你好吗2？      1111111
							</div>
							<div class="non2" style="display: none;">
								<div class='bottom_style'>
									<span class='sub_tit' style="font-size: 20px;width: 100%">切割师A</span>
								</div>
								你好吗2？你好吗2？你好吗2？你好吗2？你好吗2？      222222222
							</div>
							<div class="non3" style="display: none;">
								<div class='bottom_style'>
									<span class='sub_tit' style="font-size: 20px;width: 100%">切割师A</span>
								</div>
								你好吗2？你好吗2？你好吗2？你好吗2？你好吗2？      3333333
							</div>
							<div class="non4" style="display: none;">
								<div class='bottom_style' >
									<span class='sub_tit' style="font-size: 20px;width: 100%">切割师A</span>
								</div>
								你好吗2？你好吗2？你好吗2？你好吗2？你好吗2？        44444444
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="indexBack.jsp"></jsp:include>
</body>
<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
<link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
