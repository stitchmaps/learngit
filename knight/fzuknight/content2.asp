<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>֪ͨ����</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
 <link href="font-awesome.min.css" rel="stylesheet"/>
</head>

<body style="background:#20272f">
<div id="head">
   <div  id="head-pic" ><img src="picture/logo.png"/ ></div>
   <div id="menu">
		 <ul>
			<li><a href="index.asp" data-hover="&nbsp;��&nbsp;&nbsp;ҳ&nbsp;">&nbsp;��&nbsp;&nbsp;ҳ&nbsp;</a></li>
			<li><a href="NoticeAnnouncement.asp" data-hover="֪ͨ����">֪ͨ����</a></li>
			<li><a href="K-nightNews.asp"data-hover="K-night����">K-night����</a></li>
			<li><a href="MotorcadeIntroduction.asp" data-hover="���Ӽ��">���Ӽ��</a></li>
			<li><a href="VideoHighlights.asp" data-hover="��Ƶ����">��Ƶ����</a></li>
			<li><a href="PhotoMemory.asp" data-hover="��Ƭ����">��Ƭ����</a></li>
			<li><a href="ApproachK-night.asp" data-hover="�߽�K-night">�߽�K-night</a></li>	
			<li><a href="sContactUs.asp" data-hover="��ϵ����">��ϵ����</a></li>
		</ul> 
   </div>   
</div>
<div class="frame">
<div class="topic">
  <div class="topic-link">
  <%
			dim id
			id = Request.QueryString("id")
			
			' �������Ӷ���
			set cn = Server.CreateObject("ADODB.Connection")
				
			' �������Ӳ���
			' �����ݿ�����
				cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite2.mdb")
				
			' ��ѯָ������������
			set rs = cn.Execute("select * from articles where id = " & id)
			
			if (not rs.eof)  then
				%>

   <p> <a href="NoticeAnnouncement.asp">֪ͨ����</a> &nbsp;&nbsp;/&nbsp;<%=rs("title")%></p>
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
<a href="NoticeAnnouncement.asp"> >>����֪ͨ�б�</a>
</div>
</div>

</body>
</html>
