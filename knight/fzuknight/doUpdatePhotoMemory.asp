<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>����֪ͨ����</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />

		<%
			dim photo_address
		    dim modify_date
			dim abstract
			dim id
			
			' ��ò��� 
			id = Request.Form("id")
			photo_address = Request.Form("photo_address")
			modify_date = Request.Form("modify_date")
			abstract=Request.Form("abstract")
			
			' �������Ӷ���
			set cn = Server.CreateObject("ADODB.Connection")
				
			' �������Ӳ���
			' �����ݿ�����
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("pic.mdb")
				
		
			cn.Execute("update photoMemory set photo_address ='" & photo_address & "', modify_date='" & modify_date & "',abstract='"& abstract &"' where id=" & id )
			cn.close
			set cn = nothing
		%>
	</head>
	
	<body style="background-color:#FFFFFF;">
		<div id="succMsg">
			<div id="icon"><img src="picture/doUpdate.png"/></div>
			<div id="msg">
       
				<ul>
					<li>����ͼƬ�ɹ���</li>
					<li><a href="PhotoMemory.asp">������ﷵ����Ƭ����</a></li>
                    
				</ul>
			</div>
		</div>
	</body>
</html>
