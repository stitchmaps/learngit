<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>保存照片记忆</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
		
		<%
			dim photo_address
			dim modify_date
			dim abstract
			
	
			' 获得参数 
			photo_address = Request.Form("photo_address")
			modify_date=Request.Form("modify_date")
			abstract=Request.Form("abstract")
			
			' 创建链接对象
			set cn = Server.CreateObject("ADODB.Connection")
				
			' 设置连接参数
			' 打开数据库连接
				cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("pic.mdb")
				
			' 执行插入
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
					<li>保存信息成功！</li>
					<li><a href="K-nightNews.asp"  style=" color:#000">点击这里返回照片记忆</a></li>
				</ul>
			</div>
		</div>
	</body>
</html>
