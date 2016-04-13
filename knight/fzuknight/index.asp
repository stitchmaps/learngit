<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/zzsc.js"></script>
 <script type="text/javascript" src="js/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>福州大学K-night赛车队</title>
<link rel="shortcut icon" href="picture/logo.ico" type="image/x-icon"/ >
<link href="style.css" rel="stylesheet" type="text/css"/>
    <link href="font-awesome.min.css" rel="stylesheet"/>
</head>

<body style="background-image:url(picture/background.jpg) ;">
 <div id="head">
   <div  id="head-pic"><img src="picture/logo.png"/ ></div>
   <div id="menu">
		 <ul>
			<li><a href="index.asp" data-hover="&nbsp;首&nbsp;&nbsp;页&nbsp;">&nbsp;首&nbsp;&nbsp;页&nbsp;</a></li>
			<li><a href="NoticeAnnouncement.asp" data-hover="通知公告">通知公告</a></li>
			<li><a href="K-nightNews.asp"data-hover="K-night新闻">K-night新闻</a></li>
			<li><a href="MotorcadeIntroduction.asp" data-hover="车队简介">车队简介</a></li>
			<li><a href="VideoHighlights.asp" data-hover="视频精彩">视频精彩</a></li>
			<li><a href="PhotoMemory.asp" data-hover="照片记忆">照片记忆</a></li>
			<li><a href="ApproachK-night.asp" data-hover="走进K-night">走进K-night</a></li>	
			<li><a href="ContactUs.asp" data-hover="联系我们">联系我们</a></li>
		</ul> 
   </div>   
  
</div>

<div id="center">
  <div id="center-left">
		
<div id="header">
  <div class="wrap">
   <div id="slide-holder">
 
		<div id="slide-runner">

					<%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' 查询所有文章列表，使用降序排序 
					set rs = cn.Execute("select * from slide_pic order by id desc")
					
					do while (not rs.eof) 
					%>
						<a href="" target="_blank" ><img id="slide-img-<%=rs("id")%>" src="<%=rs("address")%>" class="slide" alt="" /></a>
					
					<%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>	
			
			<div id="slide-controls">
			 <p id="slide-client" class="text"><strong></strong><span></span></p>
			 <p id="slide-desc" class="text"></p>
			 <p id="slide-nav"></p>
			</div>
		</div>
   </div>
   </div>
   <script type="text/javascript">
    if(!window.slider) {
		var slider={};
	}
    
	slider.data= [
    {
        "id":"slide-img-1", // 与slide-runner中的img标签id对应
        "client":"",
        "desc":"" //这里修改描述
    },
    {
        "id":"slide-img-2",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-3",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-4",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-5",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-6",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-7",
        "client":"",
        "desc":""
    }
	];
   </script>
  </div>
</div>

  <div id="center-right-top">
     <div><img src="picture/introduce.jpg"/></div>
	 <div id="center-right-center">
福州大学K-night赛车队于2012年12月14日正式成立，是福州地区首支参加中国大学生方程式汽车大赛的车队，车队由福州大学机械学院车辆工程专业筹建，集机械学院、电气学院、经管学院、化工学院、物信学院、数计学院等众多专业学生于一体，自创建以来得到了学校、学院各部门以及领导的大力支持。现已拥有独立的工作室及相关加工设备。
车队自2013年开始参加中国大学生方程式汽车大赛，其中，在2013年第四届中国大学生方程式汽车大赛中，车队成功斩获“绿色环保奖”及“燃油经济性全国第一名”...【<a href="MotorcadeIntroduction.asp">详情</a>】 
	 </div>
  </div>
</div>


<div id="body">    <!-- 使用overflow:hidden;解决最新动态和通知公告由于内容条数太多而溢出的问题-->
   <div id="body-left">   <!--同时使用overflow:hidden;text-overflow:ellipsis; white-space:nowrap;可以将每行多出的内容隐藏-->
      <p id="body-font">&nbsp;最新动态</p>
        	
	     <div id="page_content" >
			<!-- 输出文章列表 -->
			
			<!--   <marquee scrollamount="2" width="320px" height="480px" onmouseout="this.start()" onmouseover="this.stop()" direction="up" loop="-1" behavior="slide" style="overflow:hidden; margin-top:-15px;">  </marquee>   --> 
			
			
	
		<!-- 在这里使用js代码，定义id为demo、demo1、demo2来创建js代码实现，代替marquee实现无缝滚动-->
          <div id="demo1">
			<div class="articleList" >
			<%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("mysite.mdb") 
						
					' 查询所有文章列表，使用降序排序 
					set rs = cn.Execute("select * from articles order by id desc")
					
					do while (not rs.eof) 
					%>
						<ul>
						<li class="title"><a href="content.asp?id=<%=rs("id")%>" ><%=rs("title")%></a></li>
						</ul>
					<%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
			</div>	
		  </div>
         

		</div> 
   </div>
   
   
<!--<script type="text/javascript" > 
   var speed=60;
   var demo=document.getElementById("demo"); 
   var demo2=document.getElementById("demo2"); 
   var demo1=document.getElementById("demo1"); 
   demo2.innerHTML=demo1.innerHTML ;
   function Marquee()
   { 
     if(demo2.offsetTop-demo.scrollTop<=0) { demo.scrollTop-=demo1.offsetHeight;}
     else{ demo.scrollTop++; } 
   } 
   var MyMar=setInterval(Marquee,speed);
   demo.onmouseover=function() { clearInterval(MyMar); } 
   demo.onmouseout=function() { MyMar=setInterval(Marquee,speed); } 
</script> 
-->

   <div id="body-center">
	 <p id="body-font">&nbsp;通知公告</p>
   
	 	  <div id="page_content">
			<!-- 输出文章列表 -->
			<div class="articleList">
			<%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("mysite2.mdb") 
						
					' 查询所有文章列表，使用降序排序 
					set rs = cn.Execute("select * from articles order by id desc")
					
					do while (not rs.eof) 
					%>
						<ul>
						<li class="title"><a href="content2.asp?id=<%=rs("id")%>" ><%=rs("title")%></a></li>
						</ul>
					<%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
	
			</div>
		</div>
   </div>

   
   <div id="body-right">
     <div id="body-right1">  
	   <p id="body-font">&nbsp;&nbsp;&nbsp;视&nbsp;频</p> 
   
	  <%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' 查询所有文章列表，使用降序排序 
					set rs = cn.Execute("select * from index_video order by id desc")
					%>
					
				
					
       <embed src="<%=rs("address")%>" allowFullScreen="true" width="312" height="200" align="middle" allowScriptAccess="always" id="body-font-video"></embed>  
       <%
						
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>	
	 </div>
	 <div id="body-right2">
      <ul>
      <li>
	  <a href="http://weibo.com/p/1002063187586625/home?from=page_100206&mod=TAB#place" target="_blank"><img src="picture/weibo.png" id="body-right2-pic"/></a>  
      </li>
      <li>
	  <a href="weixin.asp" target="_blank"><img src="picture/weixin.png" id="body-right2-pic"/></a>           
      </li>
      </ul>
	 </div>   	 
   </div>
</div>
<p id="textmore">
    <a href="K-nightNews.asp" style="margin-left:130px;">查看更多</a>
	<a href="NoticeAnnouncement.asp" style="margin-left:240px;">查看更多</a>
	<a href="VideoHighlights.asp" style="margin-left:260px;">查看更多</a>
</p>

     <div id="Sponsor-name">&nbsp;K-night赛车队赞助商</div>
     <div class="gallery " style="width:970px; height:100px; margin:0 auto;padding-top:10px;">
     <%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' 查询所有文章列表，使用降序排序 
					set rs = cn.Execute("select * from sponser_pic order by id ")
					
					do while (not rs.eof) 
					%>
					
					
			  <ul class="list-unstyled">
			    <li><a href="#"><img src="<%=rs("address")%>" style="width:80px;height:80px;" alt="..."></a></li>		
			   </ul>
         <%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
          </div><!-- / .Recent Tweets -->

	
<div id="footer">
   <div id="footer1">
   <p>地址：福建省福州市大学城福州大学车辆工程实践中心</p>
   <p> 链接：<a href="http://www.formulastudent.com.cn">中国大学生方程式汽车大赛</a>  &nbsp;&nbsp;  <a href="http://www.fzu.edu.cn">福州大学</a> &nbsp;&nbsp;  <a href="">福州大学机械工程及自动化学院</a>
   </p>
   <div id="footer2"><p>Copyright 2015 福州大学K-night赛车队 版权所有</p></div>
   </div>
</div>

</body>
</html>
