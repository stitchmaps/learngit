<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>��¼</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
		<%
			dim login_name
			dim passsword
			
			' ���ղ���
			login_name = Request.Form("login")
			password = Request.Form("password")
			
			' �������Ӷ���
			set cn = Server.CreateObject("ADODB.Connection")
				
			' �������Ӳ���
			' �����ݿ�����
			cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite.mdb")
				
			' ��ѯ����		
			set rs = cn.Execute("select * from users where login_name='" & login_name & "' and password='" & password & "'")
			
			' ������� result ��Ų�ѯ���, �Ƿ���ƥ����û�����
			dim result
			result = ( NOT rs.eof )
			
			' �ر�����
			rs.close
			cn.close
			
			' �ͷ���Դ
			set rs = nothing
			set cn = nothing
		%>
	</head>

	<body>
		<%
			if result then
				'  ��ƥ����û���������				
				' ���û���Ϣ������session� �Ա�����ж��Ƿ��¼
				Session("user") = login_name
				
				' �Զ���ת�������б�
				Response.Redirect("operator.asp")
			else
				' ��ƥ������, ��ʾ������Ϣ
		%>
			<div id="errMsg" > 
				<div id="icon"><img src="picture/doLogin.png"/></div>
				
				<div id="msg" >
					<ul> 
						<li>������ĵ�¼�������벻��ȷ��</li>
						<li><a href="login.asp" style=" color:#000">������ﷵ��</a></li>
					</ul>
				</div>
			</div>
		<%
			end if 
		%>
	</body>
</html>
