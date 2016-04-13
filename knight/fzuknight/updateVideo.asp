<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>修改视频</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="js/kindeditor-all.js"></script>
<script type="text/javascript" charset="utf-8" src="js/lang/zh_CN.js"></script>


        
	</head>

		<body style="background-image:url(picture/body-bg.jpg)">
			<form id="articleModifyForm" action="doUpdateVideo.asp" onsubmit="return toVaild()" method="post">
               <%
		if  session("user") <> "" then	
		%> 
            <%
				dim id
				
				' 接收参数
				id = Request.QueryString("id")
				
				' 创建链接对象
				set cn = Server.CreateObject("ADODB.Connection")
					
				' 设置连接参数
				' 打开数据库连接
					cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("pic.mdb")
					
				' 查询数据		
				set rs = cn.Execute("select * from video where id=" & id )
			
			%>
				<div class="form_title">修改视频</div>
				<div class="form_content">
                <div class="operator-text">
                   <ul>
                   <li>
                   视频ID：<input style="height:24px; font-size:16px" type="text" name="id" id="id" value=" <%=rs("id")%>" readonly="readonly"/>
                   </li>
                   </ul>
					<ul>
						<li >视频地址:<input style="height:24px; font-size:16px" type="text" name="address" id="address" value=" <%=rs("address")%>"/></li>	
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
	</body>
    <%
		rs.close
		cn.close
		
		set rs = nothing
		set cn = nothing
	%>
        
              <%
  else
  %>
    <div style="width:380px; height:auto; margin-top:200px;background:#fff; border:2px solid #CCC; border-radius:8px; margin-left:480px">
      <p style="margin:80px 0 60px 80px">尚未登陆,点击&nbsp;<a href="login.asp" style="color:#0F6; border-bottom:1px solid #0F9">此处</a>&nbsp;登录</p>

</div>
<%
						end if
					%>
</html>
