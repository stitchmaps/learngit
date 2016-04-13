<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>删除</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	</head>

	<body>
	<%
		dim id 

		' 鑾峰緱鍙傛暟 
		id = Request.QueryString("id")
		
		' 鍒涘缓閾炬帴瀵硅薄
		set cn = Server.CreateObject("ADODB.Connection")
			
		' 璁剧疆杩炴帴鍙傛暟
		' 鎵撳紑鏁版嵁搴撹繛鎺?
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite.mdb")
			
		' 鎵ц鎻掑叆
		cn.Execute("delete from articles where id = " & id )
	
		cn.close
		
		set cn = nothing
		
		Response.Redirect("modifyK-nightNews.asp")
	%>
	</body>
</html>
