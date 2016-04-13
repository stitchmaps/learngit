<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>添加视频</title>
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
				<div class="form_title">添加视频</div>
				<div class="form_content">
                <div class="operator-text">
					<ul>
						<li >视频地址:<input style="height:24px; font-size:16px" type="text" name="address" id="address"/></li>	
                        </ul>
                        <ul>
						<li ><input style="height:24px; font-size:16px" type="button" value="预览" onclick="display_video()" ></li>	
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
			     alert("请输入地址！");
				 return false;
			  }
			  return true;
}
		  

	  </script>
  </div>
  
				<div class="form_foot"><input type="submit" value=" 保  存 "/></div>
			</form>
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


