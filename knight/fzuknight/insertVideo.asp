<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>�����Ƶ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="js/kindeditor-all.js"></script>
<script type="text/javascript" charset="utf-8" src="js/lang/zh_CN.js"></script>
        
	</head>

		<body style="background-image:url(picture/body-bg.jpg)">
         <%
		if  session("user") <> "" then	
		%> 
			<form id="articleModifyForm" action="doInsertVideo.asp" onsubmit="return toVaild()" method="post">
				<div class="form_title">�����Ƶ</div>
				<div class="form_content">
                <div class="operator-text">
					<ul>
						<li >��Ƶ��ַ:<input style="height:24px; font-size:16px" type="text" name="address" id="address"/></li>	
                        </ul>
                        <ul>
						<li ><input style="height:24px; font-size:16px" type="button" value="Ԥ��" onclick="display_video()" ></li>	
                        </ul>
                        </div>
   
                  
  	 
      <script type="text/javascript">
	  
	   function JTrim(s) 
  {
   return s.replace(/(^\s*)|(\s*$)/g, "");
 }
     function display_video(){
	     window.open(document.getElementById("address").value);
		  }
		  
		  function toVaild()
		  {
			  var address=document.getElementById("address").value;
			  
			  if(JTrim(address)=="")
			  {
			     alert("�������ַ��");
				 return false;
			  }
			  return true;
}
		  

	  </script>
  </div>
  
				<div class="form_foot"><input type="submit" value=" ��  �� "/></div>
			</form>
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


