<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ƭ����</title>
<link href="style.css" rel="stylesheet" type="text/css"/>

<style type="text/css">
.thumbnail p{position: absolute;background-color: lightyellow;padding: 5px;border: solid 1px  gray;visibility: hidden;color: black;text-decoration: none;}
.thumbnail p img{border-width: 0;padding: 2px;}
.thumbnail:hover p {visibility: visible;top: -230px;right: 290px; }
</style>

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
<br/>
<div class="photomemory">
               	<%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' ��ѯ���������б�ʹ�ý������� 
					set rs = cn.Execute("select * from photoMemory order by id desc")
					
					do while (not rs.eof) 
					%>
					
                    
                    
              <div class="services">
                <div class="service-item">
                  <span class="icon icon-1 icon-1c"><img src="<%=rs("photo_address")%>" width="150px" height="86px"/></span>
                  <div class="service-desc">
                    <h4><%=rs("modify_date")%></h4>
                    <p><%=rs("abstract")%></p>
                  </div>
                </div>
              </div> <!-- / .services -->
                    
					
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
