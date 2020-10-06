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
		<jsp:include page="vendtop.jsp" />
	</div>
</div>
<!-- end header -->


<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Welcome <%= session.getAttribute("name") %> to Stock Details</a></h1>
		</div>
		<%
		String s1=request.getParameter("h1");
		String s2=request.getParameter("t1");
		String s3=request.getParameter("t2");
		String s4=request.getParameter("t3");
		String s5=request.getParameter("t4");
		String s6=request.getParameter("t5");
		String s7=request.getParameter("t6");
		
		try{
		ResultSet rs=st.executeQuery("select * from vendor where venid='"+s1+"'");
		if(rs.next()){
			String qry1="update vendor set ownname='"+s2+"',vname='"+s3+"',address='"+s4+"',phone1='"+s5+"',phone2='"+s6+"',email='"+s7+"' where venid='"+s1+"'";
			int z=st.executeUpdate(qry1);
			if(z>0)
			out.print("<font color=green size=3>Updated Successfully</font>");
		}
		con.close();
  }catch(Exception e){ 
    out.print(e);
  }

		%>
		<br />
		
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<jsp:include page="vendmenu.jsp" />
			</div>
	<!-- end sidebar -->
</div>
<div style="clear: both; height: 30px">&nbsp;</div>
<!-- end page -->
<div id="footer">
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
