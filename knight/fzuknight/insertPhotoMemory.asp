<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>�����Ƭ����</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="js/kindeditor-all.js"></script>
<script type="text/javascript" charset="utf-8" src="js/lang/zh_CN.js"></script>
        
	</head>

		<body style="background-image:url(picture/body-bg.jpg)">
          <%
		if  session("user") <> "" then	
		%> 
			<form id="articleModifyForm" action="doInsertPhotoMemory.asp" onsubmit="return toVaild()" method="post">
				<div class="form_title">�����Ƭ����</div>
				<div class="form_content">
               
                    <div class="operator-text">
                        <ul>
                       <li >ͼƬ��ַ:<input style="height:24px; font-size:16px" type="text" name="photo_address" id="photo_address" /></li>
                       <li >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="picture/pre-pic.jpg" id="preview" width="180px" height="140px" onclick="display_pic()" alt="ͼƬ��ַ�������"></li>    																	
                 </ul>
                 </div>
                 
            <div class="operator-text">
					<ul>
						<li >ʱ��:<input style="height:24px; font-size:16px" type="text" name="modify_date" id="modify_date"/></li>	
                        </ul>
                        </div>
                   
                         <div class="operator-text">
					<ul>
						<li >����:<input style="height:24px; font-size:16px" type="text" name="abstract" id="abstract"/></li>	
                        </ul>
                        </div>
                        
  <div style="width:600px; height:20px" >
  	 
      <script type="text/javascript">
	  
	   function JTrim(s) 
  {
   return s.replace(/(^\s*)|(\s*$)/g, "");
 }
       function display_pic(){
	      var pic_address;
		   pic_address=document.getElementById("photo_address").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("preview").src="picture/pre-failed.jpg";
			 else
          	 document.getElementById("preview").src=pic_address;
		  }
		  
		  function toVaild()
		  {
			  var photo_address=document.getElementById("photo_address").value;
			  var modify_date=document.getElementById("modify_date").value;
			  var abstract=document.getElementById("abstract").value;
			  if(JTrim(photo_address)=="")
			  {
			     alert("������ͼƬ��ַ��");
				 return false;
			  }
			   if(JTrim(modify_date)=="")
			  {
			     alert("������ʱ�䣡");
				 return false;
			  }
			  if(JTrim(abstract)=="")
			  {
			     alert("���������ݣ�");
				 return false;
			  }
			  return true;
}

	  </script>
  </div>
  
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


