<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>通知公告</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
 <link href="font-awesome.min.css" rel="stylesheet"/>
</head>

<body style="background:#20272f">
<div id="head">
   <div  id="head-pic" ><img src="picture/logo.png"/ ></div>
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
<div class="frame">
<div class="topic">
  <div class="topic-link">
   <p> <a href="index.asp">首页</a> &nbsp;&nbsp;/&nbsp;通知公告</p>
   <hr style="width:860px; margin:6px 0 0 22px;"/>
  </div>
</div>

	<%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
					
					cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("mysite2.mdb") 
						
					' 查询所有文章列表 
					set rs = cn.Execute("select * from articles order by id desc")
					
					do while (not rs.eof) 
					%>		
                    
 <div class="news"> 
  <div class="news-pic">
   <div class="gallery">
   <ul>
   <li>
   <a href="#"><img src="<%=rs("pic")%>" alt=". . ."/></a>
   </li>
   </ul>
   </div>
   </div>
   <div class="news-info">
      <h3> <%=rs("title")%> </h3>
      <p class="news-author"></p>
      <p> <%=rs("abstract")%> </p>
       <a class="btn-animate btn-style btn-d btn-primary" href="content2.asp?id=<%=rs("id")%>">Read More...</a>
   </div>
 </div>

	                <%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
                    
 


</div>

<div id="footer">
   <div id="footer1">
   <p>地址：福建省福州市大学城福州大学车辆工程实践中心&nbsp;&nbsp;&nbsp;&nbsp;
      链接：<a href="http://www.formulastudent.com.cn">中国大学生方程式汽车大赛</a>  <a href="http://www.fzu.edu.cn">福州大学</a>
   </p>
   <div id="footer2"><p>Copyright 2015 福州大学K-night赛车队 版权所有</p></div>
   </div>
</div>

</body>
</html>
