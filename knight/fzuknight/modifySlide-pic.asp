<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>首页滚动图片修改</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="js/kindeditor-all.js"></script>
<script type="text/javascript" charset="utf-8" src="js/lang/zh_CN.js"></script>
        
	</head>

		<body style="background-image:url(picture/body-bg.jpg)">
        <%
		if  session("user") <> "" then	
		%> 
			<form id="articleModifyForm" action="doUpdateSlide-pic.asp" onsubmit="return toVaild()" method="post">
				<div class="form_title">图片修改</div>
				<div class="form_content">
              
                    <div class="operator-text">
                    
                      <%
					' 创建链接对象
					set cn = Server.CreateObject("ADODB.Connection")
						
					' 设置连接参数
					' 打开数据库连接（相比较ODBC方式，连接数据库时采用OLE DB方式，效率更高，更不容易出错）
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' 查询所有文章列表，使用升序排序 
					set rs = cn.Execute("select * from slide_pic order by id")
				
					%>
				 <ul style="margin-bottom:40px;">
                    
                       <li >图片1:<input style="height:24px; font-size:16px" type="text" name="pic1" id="pic1"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture1" width="400px" height="320px" onclick="display_pic1( )" alt="图片地址输入错误"></li>    																	
                 </ul>
                 <%
				 rs.MoveNext 
				 %>
			
             <ul style="margin-bottom:40px;">
                    
                       <li >图片2:<input style="height:24px; font-size:16px" type="text" name="pic2" id="pic2"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture2" width="400px" height="320px" onclick="display_pic2( )" alt="图片地址输入错误"></li>    																	
                 </ul>
                 
                 
                  <%
				 rs.MoveNext 
				 %>
			
             <ul style="margin-bottom:40px;">
                    
                       <li >图片3:<input style="height:24px; font-size:16px" type="text" name="pic3" id="pic3"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture3" width="400px" height="320px" onclick="display_pic3( )" alt="图片地址输入错误"></li>    																	
                 </ul>
                 
                  <%
				 rs.MoveNext 
				 %>
			
             <ul style="margin-bottom:40px;">
                    
                       <li >图片4:<input style="height:24px; font-size:16px" type="text" name="pic4" id="pic4"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture4" width="400px" height="320px" onclick="display_pic4()" alt="图片地址输入错误"></li>    																	
                 </ul>
                 
                  <%
				 rs.MoveNext 
				 %>
			
             <ul style="margin-bottom:40px;">
                    
                       <li >图片5:<input style="height:24px; font-size:16px" type="text" name="pic5" id="pic5"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture5" width="400px" height="320px" onclick="display_pic5()" alt="图片地址输入错误"></li>    																	
                 </ul>
                 
                  <%
				 rs.MoveNext 
				 %>
			
             <ul style="margin-bottom:40px;">
                    
                       <li >图片6:<input style="height:24px; font-size:16px" type="text" name="pic6" id="pic6"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture6" width="400px" height="320px" onclick="display_pic6()" alt="图片地址输入错误"></li>    																	
                 </ul>
                 
                  <%
				 rs.MoveNext 
				 %>
			
             <ul style="margin-bottom:40px;">
                    
                       <li >图片7:<input style="height:24px; font-size:16px" type="text" name="pic7" id="pic7"  value="<%=rs("address")%>"/></li>
                       <li  style="margin-left:120px"><img src="picture/pre-pic.jpg" id="picture7" width="400px" height="320px" onclick="display_pic7()" alt="图片地址输入错误"></li>    																	
                 </ul>
                 
                   <%	
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
                 </div>
                 
           
                        
  <div style="width:600px; height:20px" >
  	 
      <script type="text/javascript">
	  
	   function JTrim(s) 
  {
   return s.replace(/(^\s*)|(\s*$)/g, "");
 }
       function display_pic1( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic1").value;
		 
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture1").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture1").src=pic_address;
		  }
		  
       function display_pic2( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic2").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture2").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture2").src=pic_address;
		  }
		  
		  function display_pic3( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic3").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture3").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture3").src=pic_address;
		  }
		  
		  
		  function display_pic4( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic4").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture4").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture4").src=pic_address;
		  }
		  
		  
		  function display_pic5( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic5").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture5").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture5").src=pic_address;
		  }
		  
		  function display_pic6( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic6").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture6").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture6").src=pic_address;
		  }
		  
		  
		  function display_pic7( ){
		 
	      var pic_address;
		   pic_address=document.getElementById("pic7").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("picture7").src="picture/pre-failed.jpg";
			 else
			 
          	 document.getElementById("picture7").src=pic_address;
		  }
		  
		  
		  
		  function toVaild()
		  { 
			var pic_address;
			 
			for(var i=1; i< 8;i++)
			{
				  
		   pic_address=document.getElementById("pic"+i).value;
			  if(JTrim(pic_address)=="")
			  {
			     alert("图片"+i+"地址不能为空！");
				 return false;
			  }
			}
			  return true;
}

	  </script>
  </div>
  
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


