<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsContent.jsp' starting page</title>
    
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
  
  <body onload="onLoadNewsContentData()">
   <jsp:include page="indexHeader.jsp"></jsp:include>
	 <div id="banner">
	  <div id="bannerCon">
	    <img src="view/reception/images/banner_text.png" id="bannerText">
	    <p id="bannerTit"><a href="http://www.fato.cn/" class="aGray">首页</a> - <a href="http://www.fato.cn/news.php" class="aGray">资讯动态</a> - <a href="http://www.fato.cn/news.php?partid=12" class="aGray">企业新闻</a><span>资讯动态</span></p>
	  </div>
	</div>
	<div id="menuSon">
	  <ul id="menuSonList">   
	    <li><a href="http://www.fato.cn/video.php">视频中心</a></li>
	    <li><a href="http://www.fato.cn/news.php?partid=13">行业动态</a></li>
	    <li class="A"><a href="http://www.fato.cn/news.php">企业新闻</a></li>
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
	  <div style="margin-top:26px;"><h1 style="font-size:26px;">华通隆重举办“迎中秋 庆国庆”晚宴</h1></div>
	  <p style="color:#888; padding:8px 0px 20px 0px;">Update: 2015-09-29 14:33:44　　Clicks: 840</p>
	    <div style="clear:both;">&nbsp;</div>
	  <div id="content" class="text newscon" style="margin-top:10px;"><p class="MsoNormal" style="text-indent:18.0pt;line-height:150%;">
		天高云淡，秋意融融。<span>9</span>月<span>24</span>日晚，在公司食堂隆重举办“迎中秋
	庆国庆”晚宴，公司各部门、各生产企业中层以上干部、工程师共<span>70</span>余人参加。公司高层领导李成文、张龙松、赵晓斌、金世明、高文乐出席。<span></span> 
	</p>
	<p class="MsoNormal" style="text-indent:18.0pt;line-height:150%;">
		晚宴在互叙亲情、互话未来的氛围中拉开序幕，公司副董事长兼总裁张龙松作热情洋溢的晚宴致辞。<span></span> 
	</p>
	<p style="margin:0cm;margin-bottom:.0001pt;text-indent:18.0pt;line-height:150%;background:white;">
		首先，代表公司向全体员工和家属、向驻外单位和节假日仍坚守岗位的华通人致以崇高的敬意和节日的问候！并向支持和关心华通事业的员工亲属们表示衷心的感谢！<span></span> 
	</p>
	<p class="MsoNormal" style="text-indent:18.0pt;line-height:150%;">
		接着，肯定了近年来全体员工的辛勤付出，特别是近年来，公司尽管面对不利宏观环境的影响，但在全体员工的努力下，发挥了克服困难的坚韧不拔的意志，依然取得了一定的成绩。表扬了广大员工在各自岗位上，用饱满的热情、辛勤的汗水和默默的服务，正在谱写华通壮丽的诗篇，在平凡的岗位上创造不平凡的业绩。谈到企业发展，公司下阶段将强化产品研发力度，打造拳头产品，根据市场需求确定公司产品定位，完善高压和电力变招投标产品线，并积极筹备上市。勉励大家齐心协力，同舟共济，以更加勤恳敬业的态度、严谨扎实的作风和热情澎湃的劲头，不断推进公司各项工作再上新台阶，为华通的再次腾飞而继续努力奋斗！<span></span> 
	</p>
	<p class="MsoNormal" style="text-indent:18.0pt;line-height:150%;">
		最后，提议：共同举杯，为全体华通人的幸福安康，为大家日渐深厚的情谊，为华通辉煌灿烂的明天，也为祖国的繁荣昌盛，干杯！<span></span> 
	</p>
	<p class="MsoNormal" style="text-indent:18.0pt;line-height:150%;">
		晚宴杯光交错，欢声笑语，在一片浓浓的温情中、在一阵深深的祝福中圆满结束。（徐刚）<span></span> 
	</p>
	<p class="MsoNormal" style="text-align:center;text-indent:18pt;line-height:150%;">
		<img src="view/reception/images/20150929143536-0898-19783.jpg" alt=""> 
	</p>
	<p class="MsoNormal" style="text-align:center;text-indent:18pt;line-height:150%;">
		副董事长兼总裁张龙松作晚宴致辞
	</p>
	<p class="MsoNormal" style="text-align:center;text-indent:18pt;line-height:150%;">
		<img src="view/reception/images/20150929143628-0476-41267.jpg" alt=""> 
	</p>
	<p class="MsoNormal" style="text-align:center;text-indent:18pt;line-height:150%;">
		共同举杯庆贺“双节”
	</p></div>
	  <p style="margin-top:30px;"><a href="javascript:history.go(-1);" class="back" style="color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">返回前页</a>
	  </p><p style="clear:both; height:30px;"></p>
	</div>
	<script type="text/javascript">
	$(".back").hover(function(){
		$(this).stop().animate({'backgroundColor':'#F80','color':'#FFF'},350);
	},function(){
		$(this).stop().animate({'backgroundColor':'#EEE','color':'#666'},300);
	});
	</script>
	<input type="hidden" id='newsId' value="<%=request.getParameter("id")%>"></input>
	<jsp:include page="indexBack.jsp"></jsp:include>
  </body>
  <link href="view/reception/css/ime.css" rel="stylesheet" type="text/css">
  <link href="view/reception/css/imeIn.css" rel="stylesheet" type="text/css">
</html>
