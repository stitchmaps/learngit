<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>������Ƭ����</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
		
		<%
			dim photo_address
			dim modify_date
			dim abstract
			
	
			' ��ò��� 
			photo_address = Request.Form("photo_address")
			modify_date=Request.Form("modify_date")
			abstract=Request.Form("abstract")
			
			' �������Ӷ���
			set cn = Server.CreateObject("ADODB.Connection")
				
			' �������Ӳ���
			' �����ݿ�����
				cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("pic.mdb")
				
			' ִ�в���
			cn.Execute("insert into photoMemory (photo_address,modify_date,abstract) values ('" & photo_address & "','" & modify_date & "','" & abstract & "') ")
						
			cn.close
			set cn = nothing
		%>
		
	</head>

	<body style="background-color:#FFFFFF;">
		<div id="succMsg">
			<div id="icon"><img src="picture/doInsert.png"/></div>
			<div id="msg">
				<ul>
					<li>������Ϣ�ɹ���</li>
					<li><a href="K-nightNews.asp"  style=" color:#000">������ﷵ����Ƭ����</a></li>
				</ul>
			</div>
		</div>
	</body>
</html>
