<%@ include file="dbcon.jsp" %>
<%@ page language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Natures Charm
Description: A two-column, fixed-width design.
Version    : 1.0
Released   : 20080125

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>GreenGrocers'</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><a href="#">GreenGrocers' </a></h1>
		<h2><a href="">A healthy outside starts from inside</a></h2>
	</div>
	<div id="menu">
		<jsp:include page="vendtop.jsp" />
	</div>
</div>
<!-- end header -->


<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Registration Status</h1>
			
			<div class="entry">
				
<%
  try{		
		
			String s1=request.getParameter("s1");
			ResultSet rs=st.executeQuery("select * from vendorstock where itid='"+s1+"'");           
			if(rs.next()){
			out.print("<font color=red size=3>"+s1+" is Already Entered !!!</font>");
			}else{
			String s2=request.getParameter("ava");
			String s3=request.getParameter("prc");
			String s4=request.getParameter("qty");
						
			rs=st.executeQuery("select max(substr(vsid,2)) from vendorstock");
			int cnt=0;
			try{
			  if(rs.next())
				 cnt=rs.getInt(1);
			}catch(Exception ee){}
			cnt++; String vsid="";
			if(cnt>0&&cnt<10)
			  vsid="VS000"+cnt;
			else if(cnt>9&&cnt<100)
			  vsid="VS00"+cnt;
			else if(cnt>99&&cnt<1000)
			  vsid="VS0"+cnt;
			else
			  vsid="VS"+cnt;
			  
			
			String vid=(String)session.getAttribute("uid");
			
			 
			
			String qry1="insert into vendorstock values('"+vsid+"','"+vid+"','"+s1+"', '"+s4+"', '"+s3+"','"+s2+"')";
			int y=st.executeUpdate(qry1);			
			if(y>0)
			out.print("<font color=green size=3>"+s1+" is Entered Successfully</font>");
			}
		con.close();
  }catch(Exception e){ 
    out.print(e);
  }
%>


				
				
				

			</div>
			
		</div>
		
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	
	<!-- end sidebar -->
</div>
<div style="clear: both; height: 30px">&nbsp;</div>
<!-- end page -->
<div id="footer">
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
