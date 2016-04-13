<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>K-night后台操作中心</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>


<body style="background:#20272f">
<%
						if  session("user") <> "" then
					%>
						
					
 <div id="head">
   <div  id="head-pic"><img src="picture/logo.png"/ ></div>
   <div id="menu">
		 <ul>
			<li><a href="index.asp" data-hover="&nbsp;首&nbsp;&nbsp;页&nbsp;" target="new">&nbsp;首&nbsp;&nbsp;页&nbsp;</a></li>
			<li><a href="NoticeAnnouncement.asp" data-hover="通知公告"  target="new">通知公告</a></li>
			<li><a href="K-nightNews.asp"data-hover="K-night新闻"  target="new">K-night新闻</a></li>
			<li><a href="MotorcadeIntroduction.asp" data-hover="车队简介"  target="new">车队简介</a></li>
			<li><a href="VideoHighlights.asp" data-hover="视频精彩"  target="new">视频精彩</a></li>
			<li><a href="PhotoMemory.asp" data-hover="照片记忆"  target="new">照片记忆</a></li>
			<li><a href="ApproachK-night.asp" data-hover="走进K-night"  target="new">走进K-night</a></li>	
			<li><a href="ContactUs.asp" data-hover="联系我们"  target="new">联系我们</a></li>
		</ul> 
   </div>   
</div>
<div style="height:6px"></div>
<div id="operator">   

    <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">新闻修改:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="insertArticle.asp" target="_blank">添加新闻</a></li>
      <li><a href="modifyK-nightNews.asp" target="_blank">修改新闻</a></li>
      </ul>
   </div>


  <div style="height:6px;background:#20272f"></div>
   <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">通知公告修改:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="insertArticle2.asp" target="_blank">添加新通知</a></li>
      <li><a href="modifyNoticeAnnouncement.asp" target="_blank">修改通知</a></li>
      </ul>
   </div>
 

<div style="height:6px;background:#20272f"></div>
      <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">修改滚动图片:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="modifySlide-pic.asp" target="_blank">修改滚动图片</a></li>
      </ul>
   </div>
   
   <div style="height:6px;background:#20272f"></div>
      <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">修改视频:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="modifyIndexVideo.asp" target="_blank">修改首页视频</a></li>
      <li><a href="insertVideo.asp" target="_blank">添加视频</a></li>
      <li><a href="modifyVideoHighlights.asp" target="_blank">修改视频</a></li>  
      </ul>
   </div>
   
      <div style="height:6px;background:#20272f"></div>
      <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">修改照片记忆:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="insertPhotoMemory.asp" target="_blank">添加照片</a></li>
      <li><a href="modifyPhotoMemory.asp" target="_blank">修改照片</a></li>  
      </ul>
   </div>
   
   
</div>
<%
  else
  %>
  
  <div style="width:380px; height:auto; margin-top:200px;background:#fff; border:2px solid #CCC; border-radius:8px; margin-left:480px">
      <p style="margin:80px 0 60px 80px">尚未登陆,点击&nbsp;<a href="login.asp" style="color:#0F6; border-bottom:1px solid #0F9">此处</a>&nbsp;登录</p>

</div>
<%
						end if
					%>
</body>
</html>
