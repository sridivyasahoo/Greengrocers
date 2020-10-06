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
			<h1 class="title">Welcome <%= session.getAttribute("name") %> to  details </h1>	
		</div>
		<%
		try{ 
		
		ResultSet rs=st.executeQuery("select * from vendor where venid='"+session.getAttribute("uid")+"'");
		if(rs.next()) { %>
		<form action="vvendor1.jsp">
		<table width="505" height="162">
		<input type="hidden" name="h1" value="<%= rs.getString(1) %>" />
		<tr><td>Owner Name</td><td><input type="text" name="t1" value="<%= rs.getString(2) %>" readonly="true" />
		<tr><td>Shop Name</td><td><input type="text" name="t2" value="<%= rs.getString(3) %>" /></td></tr>
		<tr><td>Address</td><td><input type="text" name="t3" value="<%= rs.getString(4) %>" /></td></tr></textarea>
		<tr><td>Phone1</td><td><input type="text" name="t4" value="<%= rs.getString(5) %>" /></td></tr>
		<tr><td>Phone2 </td><td><input type="text" name="t5" value="<%= rs.getString(6) %>" /></td></tr>
		<tr><td>Email</td><td><input type="text" name="t6" value="<%= rs.getString(7) %>" /></td></tr>
		
				
		<tr><td colspan="2" align="center"><input type="submit" value="update" /></td></tr></table></form>
		<% }
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
