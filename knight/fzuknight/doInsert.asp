<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>����������Ϣ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
		
        
<%
						if  session("user") <> "" then
		
			dim title
			dim pic
			dim abstract
			dim content
			' ��ò��� 
			title = Request.Form("title")
			pic=Request.Form("pic")
			abstract=Request.Form("abstract")
			content = Request.Form("content")
			
			' �������Ӷ���
			set cn = Server.CreateObject("ADODB.Connection")
				
			' �������Ӳ���
			' �����ݿ�����
				cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite.mdb")
				
			' ִ�в���
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
					<li>������Ϣ�ɹ���</li>
					<li><a href="K-nightNews.asp" style=" color:#000">������ﷵ�������б�</a></li>
				</ul>
			</div>
		</div>
        <%
  else
  %>
    <div style="width:380px; height:auto; margin-top:200px;background:#fff; border:2px solid #CCC; border-radius:8px; margin-left:480px">
      <p style="margin:80px 0 60px 80px">��δ��½,���&nbsp;<a href="login.asp" style="color:#0F6; border-bottom:1px solid #0F9">�˴�</a>&nbsp;��¼</p>

</div>
<%
						end if
					%>
	</body>
</html>
