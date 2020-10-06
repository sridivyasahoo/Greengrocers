<%@ include file="dbcon.jsp" %>
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
		<ul>
			<li><a href="index.jsp" accesskey="1" title="">Home</a></li>
			<li><a href="#" accesskey="2" title="">Blog</a></li>
			<li><a href="#" accesskey="3" title="">Photos</a></li>
			<li class="active"><a href="vsignup.jsp" accesskey="4" title="">Vendor Signup</a></li>
			<li><a href="#" accesskey="5" title="">Sign Up</a></li>
		</ul>
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
		
			String s1=request.getParameter("logna");
			ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"'");
			if(rs.next()){
			out.print("<font color=red size=3>"+s1+" is Already Registered !!!</font>");
			}else{
			String s2=request.getParameter("ona");
			String s3=request.getParameter("vna");
			String s4=request.getParameter("pwd");
			String s5=request.getParameter("cpwd");
			String s6=request.getParameter("phn1");
			String s7=request.getParameter("phn2");
			String s8=request.getParameter("ma");
			String s9=request.getParameter("addr");
			String s10=request.getParameter("secq");
			String s11=request.getParameter("seca");		
	        String s12=request.getParameter("lat");
			String s13=request.getParameter("lng");		

			rs=st.executeQuery("select max(substr(venid,2)) from vendor");
			int cnt=0;
			try{
			  if(rs.next())
				 cnt=rs.getInt(1);
			}catch(Exception ee){}
			cnt++; String vid="";
			if(cnt>0&&cnt<10)
			  vid="V000"+cnt;
			else if(cnt>9&&cnt<100)
			  vid="V00"+cnt;
			else if(cnt>99&&cnt<1000)
			  vid="V0"+cnt;
			else
			  vid="V"+cnt;
			
			 
			String  qry="insert into login(uid,logname,pwd,type,status,secques, secans)  values('"+vid+"','"+s1+"', '"+s4+"','vendor','"+"y"+"', '"+s10+"', '"+s11+"')";
			int z=st.executeUpdate(qry);
			String qry1="insert into vendor(venid,ownname,vname,address,phone1,phone2,email,longi,latti)  values('"+vid+"','"+s2+"', '"+s3+"', '"+s9+"', '"+s6+"','"+s7+"','"+s8+"','"+s12+"','"+s13+"')";
			int y=st.executeUpdate(qry1);			
			if(z>0&&y>0)
			out.print("<font color=green size=3>"+s1+" is Registered Successfully</font>");
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
