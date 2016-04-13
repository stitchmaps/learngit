<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>删除</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	</head>

	<body>
	<%
		dim id 

		' 获得参数 
		id = Request.QueryString("id")
		
		' 创建链接对象
		set cn = Server.CreateObject("ADODB.Connection")
			
		' 设置连接参数
		' 打开数据库连接
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite2.mdb")
			
		' 执行插入
		cn.Execute("delete from articles where id = " & id )
	
		cn.close
		
		set cn = nothing
		
		Response.Redirect("modifyNoticeAnnouncement.asp")
	%>
	</body>
</html>
