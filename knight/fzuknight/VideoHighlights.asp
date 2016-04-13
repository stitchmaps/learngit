<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>视频精彩</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
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
    
	 <p style="text-align:center;font-size:22px; font-weight:bold;padding:20px 0 20px 0px">视频精彩</p>
	     
         
           <%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' 查询所有文章列表，使用升序排序 
					set rs = cn.Execute("select * from video order by id desc")
					dim i
					i=0
					do while (not rs.eof) 
					i=i+1
					%>

		 <p style="text-align:center;  margin-bottom:50px; font-size:20px; font-weight:bold;">
	     <embed src="<%=rs("address")%>" type="application/x-shockwave-flash" width="600px" height="400px" allowFullScreen="true" >
		 </embed>
		 <br/>视频<%=i%>
		 </p>
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
