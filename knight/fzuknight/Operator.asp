<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>K-night��̨��������</title>
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
			<li><a href="index.asp" data-hover="&nbsp;��&nbsp;&nbsp;ҳ&nbsp;" target="new">&nbsp;��&nbsp;&nbsp;ҳ&nbsp;</a></li>
			<li><a href="NoticeAnnouncement.asp" data-hover="֪ͨ����"  target="new">֪ͨ����</a></li>
			<li><a href="K-nightNews.asp"data-hover="K-night����"  target="new">K-night����</a></li>
			<li><a href="MotorcadeIntroduction.asp" data-hover="���Ӽ��"  target="new">���Ӽ��</a></li>
			<li><a href="VideoHighlights.asp" data-hover="��Ƶ����"  target="new">��Ƶ����</a></li>
			<li><a href="PhotoMemory.asp" data-hover="��Ƭ����"  target="new">��Ƭ����</a></li>
			<li><a href="ApproachK-night.asp" data-hover="�߽�K-night"  target="new">�߽�K-night</a></li>	
			<li><a href="ContactUs.asp" data-hover="��ϵ����"  target="new">��ϵ����</a></li>
		</ul> 
   </div>   
</div>
<div style="height:6px"></div>
<div id="operator">   

    <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">�����޸�:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="insertArticle.asp" target="_blank">�������</a></li>
      <li><a href="modifyK-nightNews.asp" target="_blank">�޸�����</a></li>
      </ul>
   </div>


  <div style="height:6px;background:#20272f"></div>
   <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">֪ͨ�����޸�:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="insertArticle2.asp" target="_blank">�����֪ͨ</a></li>
      <li><a href="modifyNoticeAnnouncement.asp" target="_blank">�޸�֪ͨ</a></li>
      </ul>
   </div>
 

<div style="height:6px;background:#20272f"></div>
      <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">�޸Ĺ���ͼƬ:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="modifySlide-pic.asp" target="_blank">�޸Ĺ���ͼƬ</a></li>
      </ul>
   </div>
   
   <div style="height:6px;background:#20272f"></div>
      <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">�޸���Ƶ:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="modifyIndexVideo.asp" target="_blank">�޸���ҳ��Ƶ</a></li>
      <li><a href="insertVideo.asp" target="_blank">�����Ƶ</a></li>
      <li><a href="modifyVideoHighlights.asp" target="_blank">�޸���Ƶ</a></li>  
      </ul>
   </div>
   
      <div style="height:6px;background:#20272f"></div>
      <div style="width:980px; height:auto; background:#CFC">
    <h3 style="padding:10px 0px 0px 12px">�޸���Ƭ����:</h3>
    <ul style="padding:10px 0px 0px 50px">
      <li><a href="insertPhotoMemory.asp" target="_blank">�����Ƭ</a></li>
      <li><a href="modifyPhotoMemory.asp" target="_blank">�޸���Ƭ</a></li>  
      </ul>
   </div>
   
   
</div>
<%
  else
  %>
  
  <div style="width:380px; height:auto; margin-top:200px;background:#fff; border:2px solid #CCC; border-radius:8px; margin-left:480px">
      <p style="margin:80px 0 60px 80px">��δ��½,���&nbsp;<a href="login.asp" style="color:#0F6; border-bottom:1px solid #0F9">�˴�</a>&nbsp;��¼</p>

</div>
<%
						end if
					%>
</body>
</html>
