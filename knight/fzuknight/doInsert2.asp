<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>保存新闻信息</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="style.css" type="text/css" rel="stylesheet" />
		
		<%
			if  session("user") <> "" then
			dim title
			dim pic
			dim abstract
			dim content
			
	
			' 获得参数 
			title = Request.Form("title")
			pic=Request.Form("pic")
			abstract=Request.Form("abstract")
			content = Request.Form("content")
			
			' 创建链接对象
			set cn = Server.CreateObject("ADODB.Connection")
				
			' 设置连接参数
			' 打开数据库连接
				cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite2.mdb")
				
			' 执行插入
			cn.Execute("insert into articles (title,pic,abstract,content) values ('" & title & "','" & pic & "','" & abstract & "', '" & content & "') ")
						
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
					<li><a href="NoticeAnnouncement.asp"  style=" color:#000">点击这里返回新闻列表</a></li>
				</ul>
			</div>
		</div>
          <%
  else
  %>
    <div style="width:380px; height:auto; margin-top:200px;background:#fff; border:2px solid #CCC; border-radius:8px; margin-left:480px">
      <p style="margin:80px 0 60px 80px">尚未登陆,点击&nbsp;<a href="login.asp" style="color:#0F6; border-bottom:1px solid #0F9">此处</a>&nbsp;登录</p>

</div>
<%
						end if
					%>
	</body>
</html>
