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
			<li><a href="sContactUs.asp" data-hover="联系我们">联系我们</a></li>
		</ul> 
   </div>   
</div>
<div class="frame">
<div class="topic">
  <div class="topic-link">
  <%
			dim id
			id = Request.QueryString("id")
			
			' 创建链接对象
			set cn = Server.CreateObject("ADODB.Connection")
				
			' 设置连接参数
			' 打开数据库连接
				cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite2.mdb")
				
			' 查询指定的文章内容
			set rs = cn.Execute("select * from articles where id = " & id)
			
			if (not rs.eof)  then
				%>

   <p> <a href="NoticeAnnouncement.asp">通知公告</a> &nbsp;&nbsp;/&nbsp;<%=rs("title")%></p>
      <hr style="width:860px; margin:6px 0 0 22px;"/>
  </div>
</div>

<div class="article">
				<div class="article_content">
					<%=rs("content")%>
				</div>
				<%
			end if
			
			rs.close
			cn.close
			
			set rs =nothing
			set cn = nothing
		%>
<div class="article_end">
<a href="NoticeAnnouncement.asp"> >>返回通知列表</a>
</div>
</div>

</body>
</html>
