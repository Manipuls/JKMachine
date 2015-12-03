<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
 	 <c:forEach items="${requestScope.newsList}" var="newslist">
	    <li>
		      <a href="newsAction_onLoadNewsContentToJsp?id=${newslist.id}">
		        <div class="tim" style="background-color: rgb(238, 238, 238);"><p style="font-size: 46px; font-family: Arial; color: rgb(136, 136, 136);">${fn:substring(newslist.createStrTime,8,10)}</p><p style="color: rgb(136, 136, 136);">${fn:substring(newslist.createStrTime,0,8)}</p></div>
				<div class="con"><p style="font-size: 14px; color: rgb(0, 102, 204);">${newslist.newTitle }</p><p style="color:#999; margin-top:9px; line-height:180%;">${newslist.newContent }</p></div>
		      </a>
	    </li>
	    <li class="clear"></li>
 	 </c:forEach>
	</ul>
		<div style="margin-top:20px; padding-bottom:10px;">
			<style type="text/css">
.pageleft {
	float: left;
	height: 30px;
}

.pageright {
	float: right;
	width: 160px;
	text-align: right;
	height: 30px;
}

.pagebtn {
	display: inline-block;
	width: 26px;
	height: 26px;
	line-height: 25px;
	text-align: center;
	border: 1px solid #EEE;
	margin-right: 8px;
	vertical-align: middle;
}

.pagebtn:hover {
	border: 1px solid #DDD;
	background: #F7F7F7;
}

.pagebtn:active {
	border: 1px solid #DDD;
	background: #E1E1E1;
}

.pageprev {
	display: inline-block;
	width: 26px;
	height: 26px;
	border: 1px solid #EEE;
	margin-right: 8px;
	vertical-align: middle;
	background: url(images/page_left.gif) no-repeat center center;
}

.pageprev:hover,.pagenext:hover {
	background-color: #F7F7F7;
	border: 1px solid #DDD;
}

.pageprev:active,.pagenext:active {
	background-color: #E1E1E1;
	border: 1px solid #DDD;
}

.pagebtnA {
	display: inline-block;
	width: 26px;
	height: 26px;
	line-height: 25px;
	text-align: center;
	border: 1px solid #CCC;
	background: #FFFFCC;
	margin-right: 8px;
	vertical-align: middle;
	color: #FF6600;
	font-weight: bold;
}

.pagenext {
	display: inline-block;
	width: 26px;
	height: 26px;
	border: 1px solid #EEE;
	margin-right: 8px;
	vertical-align: middle;
	background: url(view/reception/images/page_right.gif) no-repeat center center;
}

.pageinfo {
	display: inline-block;
	height: 26px;
	line-height: 25px;
	margin-right: 8px;
	vertical-align: middle;
}

.trunpage {
	font-size: 12px;
	padding: 4px 4px 5px 4px;
	border: 1px solid #EEEEEE;
	text-align: center;
	vertical-align: middle;
}

.pageell {
	display: inline-block;
	height: 26px;
	line-height: 25px;
	margin-right: 8px;
	vertical-align: middle;
}
</style>
			<div class="pageshow">
				<div class="pageleft">
					<a href="newsAction_onLoadNewsTitleToJsp?page=1" class="pagebtnA">1</a>
					<a href="newsAction_onLoadNewsTitleToJsp?page=2" class="pagebtn">2</a>
					<a href="newsAction_onLoadNewsTitleToJsp?page=3" class="pagebtn">3</a>
					<span class="pageell">……</span>
					<a href="newsAction_onLoadNewsTitleToJsp?page=9" class="pagebtn">9</a>
					<a href="newsAction_onLoadNewsTitleToJsp?page=10" class="pagebtn">10</a>
					<a href="newsAction_onLoadNewsTitleToJsp?page=2" class="pagenext"></a>
				</div>
				<div class="pageright">
					<span class="pageinfo" id="pageNums"></span>跳转：<input name="page" type="text" class="trunpage" value="1" size="2">
					 <a href="javascript:gotoPage('0','');" class="pagebtn" style="margin:0;">GO</a>
				</div>
				<div style="clear:both; height:1px; font-size:1px;"></div>
			</div>
		</div>
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
<jsp:include page="indexBack.jsp"></jsp:include>
</body>

<link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
<link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
