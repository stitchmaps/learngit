<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/zzsc.js"></script>
 <script type="text/javascript" src="js/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ݴ�ѧK-night������</title>
<link rel="shortcut icon" href="picture/logo.ico" type="image/x-icon"/ >
<link href="style.css" rel="stylesheet" type="text/css"/>
    <link href="font-awesome.min.css" rel="stylesheet"/>
</head>

<body style="background-image:url(picture/background.jpg) ;">
 <div id="head">
   <div  id="head-pic"><img src="picture/logo.png"/ ></div>
   <div id="menu">
		 <ul>
			<li><a href="index.asp" data-hover="&nbsp;��&nbsp;&nbsp;ҳ&nbsp;">&nbsp;��&nbsp;&nbsp;ҳ&nbsp;</a></li>
			<li><a href="NoticeAnnouncement.asp" data-hover="֪ͨ����">֪ͨ����</a></li>
			<li><a href="K-nightNews.asp"data-hover="K-night����">K-night����</a></li>
			<li><a href="MotorcadeIntroduction.asp" data-hover="���Ӽ��">���Ӽ��</a></li>
			<li><a href="VideoHighlights.asp" data-hover="��Ƶ����">��Ƶ����</a></li>
			<li><a href="PhotoMemory.asp" data-hover="��Ƭ����">��Ƭ����</a></li>
			<li><a href="ApproachK-night.asp" data-hover="�߽�K-night">�߽�K-night</a></li>	
			<li><a href="ContactUs.asp" data-hover="��ϵ����">��ϵ����</a></li>
		</ul> 
   </div>   
  
</div>

<div id="center">
  <div id="center-left">
		
<div id="header">
  <div class="wrap">
   <div id="slide-holder">
 
		<div id="slide-runner">

					<%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' ��ѯ���������б�ʹ�ý������� 
					set rs = cn.Execute("select * from slide_pic order by id desc")
					
					do while (not rs.eof) 
					%>
						<a href="" target="_blank" ><img id="slide-img-<%=rs("id")%>" src="<%=rs("address")%>" class="slide" alt="" /></a>
					
					<%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>	
			
			<div id="slide-controls">
			 <p id="slide-client" class="text"><strong></strong><span></span></p>
			 <p id="slide-desc" class="text"></p>
			 <p id="slide-nav"></p>
			</div>
		</div>
   </div>
   </div>
   <script type="text/javascript">
    if(!window.slider) {
		var slider={};
	}
    
	slider.data= [
    {
        "id":"slide-img-1", // ��slide-runner�е�img��ǩid��Ӧ
        "client":"",
        "desc":"" //�����޸�����
    },
    {
        "id":"slide-img-2",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-3",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-4",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-5",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-6",
        "client":"",
        "desc":""
    },
    {
        "id":"slide-img-7",
        "client":"",
        "desc":""
    }
	];
   </script>
  </div>
</div>

  <div id="center-right-top">
     <div><img src="picture/introduce.jpg"/></div>
	 <div id="center-right-center">
���ݴ�ѧK-night��������2012��12��14����ʽ�������Ǹ��ݵ�����֧�μ��й���ѧ������ʽ���������ĳ��ӣ������ɸ��ݴ�ѧ��еѧԺ��������רҵ�ｨ������еѧԺ������ѧԺ������ѧԺ������ѧԺ������ѧԺ������ѧԺ���ڶ�רҵѧ����һ�壬�Դ��������õ���ѧУ��ѧԺ�������Լ��쵼�Ĵ���֧�֡�����ӵ�ж����Ĺ����Ҽ���ؼӹ��豸��
������2013�꿪ʼ�μ��й���ѧ������ʽ�������������У���2013����Ľ��й���ѧ������ʽ���������У����ӳɹ�ն����ɫ������������ȼ�;�����ȫ����һ����...��<a href="MotorcadeIntroduction.asp">����</a>�� 
	 </div>
  </div>
</div>


<div id="body">    <!-- ʹ��overflow:hidden;������¶�̬��֪ͨ����������������̫������������-->
   <div id="body-left">   <!--ͬʱʹ��overflow:hidden;text-overflow:ellipsis; white-space:nowrap;���Խ�ÿ�ж������������-->
      <p id="body-font">&nbsp;���¶�̬</p>
        	
	     <div id="page_content" >
			<!-- ��������б� -->
			
			<!--   <marquee scrollamount="2" width="320px" height="480px" onmouseout="this.start()" onmouseover="this.stop()" direction="up" loop="-1" behavior="slide" style="overflow:hidden; margin-top:-15px;">  </marquee>   --> 
			
			
	
		<!-- ������ʹ��js���룬����idΪdemo��demo1��demo2������js����ʵ�֣�����marqueeʵ���޷����-->
          <div id="demo1">
			<div class="articleList" >
			<%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("mysite.mdb") 
						
					' ��ѯ���������б�ʹ�ý������� 
					set rs = cn.Execute("select * from articles order by id desc")
					
					do while (not rs.eof) 
					%>
						<ul>
						<li class="title"><a href="content.asp?id=<%=rs("id")%>" ><%=rs("title")%></a></li>
						</ul>
					<%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
			</div>	
		  </div>
         

		</div> 
   </div>
   
   
<!--<script type="text/javascript" > 
   var speed=60;
   var demo=document.getElementById("demo"); 
   var demo2=document.getElementById("demo2"); 
   var demo1=document.getElementById("demo1"); 
   demo2.innerHTML=demo1.innerHTML ;
   function Marquee()
   { 
     if(demo2.offsetTop-demo.scrollTop<=0) { demo.scrollTop-=demo1.offsetHeight;}
     else{ demo.scrollTop++; } 
   } 
   var MyMar=setInterval(Marquee,speed);
   demo.onmouseover=function() { clearInterval(MyMar); } 
   demo.onmouseout=function() { MyMar=setInterval(Marquee,speed); } 
</script> 
-->

   <div id="body-center">
	 <p id="body-font">&nbsp;֪ͨ����</p>
   
	 	  <div id="page_content">
			<!-- ��������б� -->
			<div class="articleList">
			<%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("mysite2.mdb") 
						
					' ��ѯ���������б�ʹ�ý������� 
					set rs = cn.Execute("select * from articles order by id desc")
					
					do while (not rs.eof) 
					%>
						<ul>
						<li class="title"><a href="content2.asp?id=<%=rs("id")%>" ><%=rs("title")%></a></li>
						</ul>
					<%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
	
			</div>
		</div>
   </div>

   
   <div id="body-right">
     <div id="body-right1">  
	   <p id="body-font">&nbsp;&nbsp;&nbsp;��&nbsp;Ƶ</p> 
   
	  <%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' ��ѯ���������б�ʹ�ý������� 
					set rs = cn.Execute("select * from index_video order by id desc")
					%>
					
				
					
       <embed src="<%=rs("address")%>" allowFullScreen="true" width="312" height="200" align="middle" allowScriptAccess="always" id="body-font-video"></embed>  
       <%
						
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>	
	 </div>
	 <div id="body-right2">
      <ul>
      <li>
	  <a href="http://weibo.com/p/1002063187586625/home?from=page_100206&mod=TAB#place" target="_blank"><img src="picture/weibo.png" id="body-right2-pic"/></a>  
      </li>
      <li>
	  <a href="weixin.asp" target="_blank"><img src="picture/weixin.png" id="body-right2-pic"/></a>           
      </li>
      </ul>
	 </div>   	 
   </div>
</div>
<p id="textmore">
    <a href="K-nightNews.asp" style="margin-left:130px;">�鿴����</a>
	<a href="NoticeAnnouncement.asp" style="margin-left:240px;">�鿴����</a>
	<a href="VideoHighlights.asp" style="margin-left:260px;">�鿴����</a>
</p>

     <div id="Sponsor-name">&nbsp;K-night������������</div>
     <div class="gallery " style="width:970px; height:100px; margin:0 auto;padding-top:10px;">
     <%
					' �������Ӷ���
					set cn = Server.CreateObject("ADODB.Connection")
						
					' �������Ӳ���
					' �����ݿ����ӣ���Ƚ�ODBC��ʽ���������ݿ�ʱ����OLE DB��ʽ��Ч�ʸ��ߣ��������׳���
						cn.Open "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " & Server.MapPath("pic.mdb") 
						
					' ��ѯ���������б�ʹ�ý������� 
					set rs = cn.Execute("select * from sponser_pic order by id ")
					
					do while (not rs.eof) 
					%>
					
					
			  <ul class="list-unstyled">
			    <li><a href="#"><img src="<%=rs("address")%>" style="width:80px;height:80px;" alt="..."></a></li>		
			   </ul>
         <%
						rs.MoveNext
						loop
					
						rs.close
						cn.close
						set rs =nothing
						set cn = nothing
					%>
          </div><!-- / .Recent Tweets -->

	
<div id="footer">
   <div id="footer1">
   <p>��ַ������ʡ�����д�ѧ�Ǹ��ݴ�ѧ��������ʵ������</p>
   <p> ���ӣ�<a href="http://www.formulastudent.com.cn">�й���ѧ������ʽ��������</a>  &nbsp;&nbsp;  <a href="http://www.fzu.edu.cn">���ݴ�ѧ</a> &nbsp;&nbsp;  <a href="">���ݴ�ѧ��е���̼��Զ���ѧԺ</a>
   </p>
   <div id="footer2"><p>Copyright 2015 ���ݴ�ѧK-night������ ��Ȩ����</p></div>
   </div>
</div>

</body>
</html>
