<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>保存首页滚动图片</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />

		<%
		if  session("user") <> "" then	
		 dim pic1
		 dim pic2
		 dim pic3
		 dim pic4
		 dim pic5
		 dim pic6
		 dim pic7
		 
		   pic1=Request.Form("pic1")
		   pic2=Request.Form("pic2")
		   pic3=Request.Form("pic3")
		   pic4=Request.Form("pic4")
		   pic5=Request.Form("pic5")
		   pic6=Request.Form("pic6")
		   pic7=Request.Form("pic7")
		 
			
			' 获得参数 

		
			' 创建链接对象
			set cn = Server.CreateObject("ADODB.Connection")
				
			' 设置连接参数
			' 打开数据库连接
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("pic.mdb")
				dim i
			cn.Execute("update slide_pic set address= '" & pic1 & "'  where ID=1" )
			cn.Execute("update slide_pic set address= '" & pic2 & "'  where ID=2" )
			cn.Execute("update slide_pic set address= '" & pic3 & "'  where ID=3" )
			cn.Execute("update slide_pic set address= '" & pic4 & "'  where ID=4" )
			cn.Execute("update slide_pic set address= '" & pic5 & "'  where ID=5" )
			cn.Execute("update slide_pic set address= '" & pic6 & "'  where ID=6" )
			cn.Execute("update slide_pic set address= '" & pic7 & "'  where ID=7" )
			
			
			cn.close
			set cn = nothing
		%>
	</head>
	
	<body style="background-color:#FFFFFF;">
		<div id="succMsg">
			<div id="icon"><img src="picture/doUpdate.png"/></div>
			<div id="msg">
       
				<ul>
					<li>保存图片成功！</li>
					<li><a href="index.asp"  style=" color:#000">点击这里返回首页</a></li>
                    
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
