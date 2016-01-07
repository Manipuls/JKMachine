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
    <p id="bannerTit"><a  class="aGray">首页</a> - <a  class="aGray">资讯动态</a> - <a class="aGray">企业新闻</a><span>资讯动态</span></p>
  </div>
</div>
<div id="menuSon">
  <ul id="menuSonList">   
    <li><a href="####">行业新闻</a></li> 
    <li class="A" style="background-color: rgb(204, 0, 0);"><a href="">企业新闻</a></li>
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
				<p style="margin-top:30px;">
					<a id="pageToUp" class="back" >上一页</a>
					<div style="width: 100px;float: left;height: 25px;color: rgb(102, 102, 102);margin-top: 10px; ">
						<span style="margin-left: 25px;">
							<span   id="currentPage" style="line-height: 25px;color: #666;">${page}</span>
							<span   id="pageNums" style="line-height: 25px;"></span>
						</span>
					</div>
					<a id="pageToNext" class="back" >下一页</a>
				
				</p>
				
				<p style="clear:both; height:30px;"></p>
<style type="text/css">
.back{
color: rgb(102, 102, 102); 
background-color: rgb(238, 238, 238);
width: 450px;
float: left;
cursor: pointer;
}
</style>
<script type="text/javascript">
	$(".back").hover(function(){
		$(this).stop().animate({'backgroundColor':'#F80','color':'#FFF'},350);
	},function(){
		$(this).stop().animate({'backgroundColor':'#EEE','color':'#666'},300);
	});
</script>
				<!-- <div class="pageright">
					跳转：<input name="page" type="text" class="trunpage" value="1" size="2"> <a href="javascript:gotoPage('0','');" class="pagebtn" style="margin:0;">GO</a> 
				</div> -->
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
