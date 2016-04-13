<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
		<%
			dim login_name
			dim passsword
			
			' 接收参数
			login_name = Request.Form("login")
			password = Request.Form("password")
			
			' 创建链接对象
			set cn = Server.CreateObject("ADODB.Connection")
				
			' 设置连接参数
			' 打开数据库连接
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite.mdb")
				
			' 查询数据		
			set rs = cn.Execute("select * from users where login_name='" & login_name & "' and password='" & password & "'")
			
			' 定义变量 result 存放查询结果, 是否有匹配的用户数据
			dim result
			result = ( NOT rs.eof )
			
			' 关闭连接
			rs.close
			cn.close
			
			' 释放资源
			set rs = nothing
			set cn = nothing
		%>
	</head>

	<body>
		<%
			if result then
				'  有匹配的用户名和密码				
				' 将用户信息保存在session里， 以便后续判断是否登录
				Session("user") = login_name
				
				' 自动跳转到文章列表
				Response.Redirect("operator.asp")
			else
				' 无匹配数据, 显示错误信息
		%>
			<div id="errMsg" > 
				<div id="icon"><img src="picture/doLogin.png"/></div>
				
				<div id="msg" >
					<ul> 
						<li>您输入的登录名和密码不正确！</li>
						<li><a href="login.asp" style=" color:#000">点击这里返回</a></li>
					</ul>
				</div>
			</div>
		<%
			end if 
		%>
	</body>
</html>
