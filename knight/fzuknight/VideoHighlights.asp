<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ƶ����</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
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
			<li><a href="ContactUs.asp" data-hover="��ϵ����">��ϵ����</a></li>
		</ul> 
   </div>   
</div>
<div class="frame">
    
	 <p style="text-align:center;font-size:22px; font-weight:bold;padding:20px 0 20px 0px">��Ƶ����</p>
	     
         
           <%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' ��ѯ���������б�ʹ���������� 
					set rs = cn.Execute("select * from video order by id desc")
					dim i
					i=0
					do while (not rs.eof) 
					i=i+1
					%>

		 <p style="text-align:center;  margin-bottom:50px; font-size:20px; font-weight:bold;">
	     <embed src="<%=rs("address")%>" type="application/x-shockwave-flash" width="600px" height="400px" allowFullScreen="true" >
		 </embed>
		 <br/>��Ƶ<%=i%>
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
   <p>��ַ������ʡ�����д�ѧ�Ǹ��ݴ�ѧ��������ʵ������&nbsp;&nbsp;&nbsp;&nbsp;
      ���ӣ�<a href="http://www.formulastudent.com.cn">�й���ѧ������ʽ��������</a>  <a href="http://www.fzu.edu.cn">���ݴ�ѧ</a>
   </p>
   <div id="footer2"><p>Copyright 2015 ���ݴ�ѧK-night������ ��Ȩ����</p></div>
   </div>
</div>

</body>
</html>
