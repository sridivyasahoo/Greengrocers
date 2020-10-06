<%@ include file="dbcon.jsp"%>
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
		<jsp:include page="admintop.jsp" />
	</div>
</div>
<!-- end header -->


<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Welcome <%= session.getAttribute("name") %> to Item Image Details </h1>	
		</div><br /><br />


<font size="+2">Photo Uploaded Successfully</font><br />				
<%
  try{		
		
	String s1=(String) session.getAttribute("photos");
	ResultSet rs=st.executeQuery("select * from itemphoto where itid='"+s1+"'");
	if(rs.next()){  %>
		<img src="./images/item/<%=rs.getString("photo1")%>" width="300" height="300" alt="no imsgeds" /> 
		<img src="./images/item/<%=rs.getString("photo2")%>" width="300" height="300" alt="no imsgeds" />
		<img src="./images/item/<%=rs.getString("photo3")%>" width="300" height="300" alt="no imsgeds" /><br /> 
<%	}
    session.removeAttribute("photos");
	session.setAttribute("photos",s1);
	con.close();
}catch(Exception e){ 
    out.print(e);
}
%>

 
				
				
				
		</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<jsp:include page="adminmenu.jsp" />
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
