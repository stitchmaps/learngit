<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>K-night����</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
 <link href="font-awesome.min.css" rel="stylesheet"/>
</head>

<body style="background:#20272f">
  <%
		if  session("user") <> "" then	
		%> 
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
			<li><a href="ContactUs.asp" data-hover="��ϵ����">��ϵ����</a></li>
		</ul> 
   </div>   
</div>
<div class="frame">
<div class="topic">
  <div class="topic-link">
   <p> <a href="index.asp">��ҳ</a> &nbsp;&nbsp;/&nbsp;K-night����</p>
      <hr style="width:860px; margin:6px 0 0 22px;"/>
  </div>
</div>
	<%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
					
					cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("mysite.mdb") 
						
					' ��ѯ���������б� 
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
      <h3> <%=rs("title")%></h3>
  
      <p> <%=rs("abstract")%></p>
       <div style="padding:10px 10px 0px 12px">
							<a href="doDelete.asp?id=<%=rs("id")%>"><img src="picture/delete.gif" border="0"></a>
							<a href="update.asp?id=<%=rs("id")%>"><img src="picture/edit.png" border="0"></a>
                            </div>
						
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

<div id="footer">
   <div id="footer1">
   <p>��ַ������ʡ�����д�ѧ�Ǹ��ݴ�ѧ��������ʵ������&nbsp;&nbsp;&nbsp;&nbsp;
      ���ӣ�<a href="http://www.formulastudent.com.cn">�й���ѧ������ʽ��������</a>  <a href="http://www.fzu.edu.cn">���ݴ�ѧ</a>
   </p>
   <div id="footer2"><p>Copyright 2015 ���ݴ�ѧK-night������ ��Ȩ����</p></div>
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
