<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>ɾ��</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	</head>

	<body>
	<%
		dim id 

		' ��ò��� 
		id = Request.QueryString("id")
		
		' �������Ӷ���
		set cn = Server.CreateObject("ADODB.Connection")
			
		' �������Ӳ���
		' �����ݿ�����
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite2.mdb")
			
		' ִ�в���
		cn.Execute("delete from articles where id = " & id )
	
		cn.close
		
		set cn = nothing
		
		Response.Redirect("modifyNoticeAnnouncement.asp")
	%>
	</body>
</html>
