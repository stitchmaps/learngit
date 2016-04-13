<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>修改通知</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<link href="style.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" charset="utf-8" src="js/kindeditor-all.js"></script>
<script type="text/javascript" charset="utf-8" src="js/lang/zh_CN.js"></script>


        
	</head>

		<body style="background-image:url(picture/body-bg.jpg)">
        
         <%
		if  session("user") <> "" then	
		%> 
			<form id="articleModifyForm" action="doUpdate2.asp" onsubmit="return toVaild()" method="post">
            <%
				dim id
				
				' 接收参数
				id = Request.QueryString("id")
				
				' 创建链接对象
				set cn = Server.CreateObject("ADODB.Connection")
					
				' 设置连接参数
				' 打开数据库连接
					cn.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("mysite2.mdb")
					
				' 查询数据		
				set rs = cn.Execute("select * from articles where id=" & id )
			
			%>
				<div class="form_title">修改通知</div>
				<div class="form_content">
                <div class="operator-text">
					  <ul>
                <li>
                 文章编号：<input style="height:24px; font-size:16px" type="text" name="id" id="id" value=" <%=rs("id")%>"  readonly="readonly" />
                </li>
                </ul>
                    <ul>
						<li >通知标题:<input style="height:24px; font-size:16px" type="text" name="title" id="title" value=" <%=rs("title")%>"/></li>	
                        </ul>
                        </div>
                    <div class="operator-text">
                        <ul>
                       <li >标题配图:<input style="height:24px; font-size:16px" type="text" name="pic" id="pic" value=" <%=rs("pic")%>" /></li>
                       <li >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="picture/pre-pic.jpg" id="preview" width="180px" height="140px" onclick="display_pic()" alt="图片地址输入错误"></li>    																	
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
		   pic_address=document.getElementById("pic").value;
		   if(JTrim(pic_address)=="")
		     document.getElementById("preview").src="picture/pre-failed.jpg";
			 else
          	 document.getElementById("preview").src=pic_address;
		  }
		  
		  function toVaild()
		  {
			  var title=document.getElementById("title").value;
			  var content=document.getElementById("content").value;
			  var abstract=document.getElementById("abstract").value;
			  if(JTrim(title)=="")
			  {
			     alert("请输入标题！");
				 return false;
			  }
			   if(JTrim(abstract)=="")
			  {
			     alert("请输入摘要！");
				 return false;
			  }
			  if(JTrim(content)=="")
			  {
			     alert("请输入内容！");
				 return false;
			  }
			  return true;
}

	  </script>
  </div>
  
    <div class="operator-text">
					<ul>
						<li >内容摘要:</li>
                        <li style="margin-left:100px;"><textarea style="width:600px;height:120px;font-size:14px " name="abstract" id="abstract"> <%=rs("abstract")%></textarea></li>	
                        </ul>
                        </div>
                 
                 <div class="operator-text">
                 <ul>
						<li class="input">内容:
<div id="main_content">
<script>
		KindEditor.ready(function(K) {
				K.create('#content', {
					items : ['source', '|', 'undo', 'redo', '|', 'preview', 'print', 'code', 'cut', 'copy', 'paste','plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright','justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript','superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/','formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold','italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image','flash', 'media', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak','anchor', 'link', 'unlink'],
					allowImageUpload : false,
					allowMediaUpload : false,
					allowFlashUpload : false
				});
		});
</script>

<textarea name="content" id="content" style="width:90%;height:800px;visibility:hidden;display:block;"><%=rs("content")%></textarea></li>
					</ul>
				</div>
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
