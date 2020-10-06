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
			<li><a href="#" accesskey="4" title="">About</a></li>
			<li class="active"><a href="signup.jsp" accesskey="5" title="">Sign Up</a></li>
		</ul>
	</div>
</div>
<!-- end header -->


<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Welcome to New User Signup</h1>
			
			<div class="entry">
				<form action="signup2.jsp" method="get">
				<table width="861" height="333" >
  <tr>
    <td width="145">&nbsp;Login Name</td>
    <td width="291">&nbsp;<input name="logna" type="text" value="<%= request.getParameter("t1")%>" readonly="true" /> Available</td>
    <td width="175">&nbsp;Full Name</td>
    <td width="230">&nbsp;<input name="fullna" type="text" /></td>
  </tr>
  <tr>
    <td>&nbsp;Password</td>
    <td>&nbsp;<input name="pwd" type="password" /></td>
    <td>&nbsp;Confirm Password</td>
    <td>&nbsp;<input name="cpwd" type="password" /></td>
  </tr>
  <tr>
    <td>&nbsp;DOB</td>
    <td>&nbsp;<input name="dob" type="date" /></td>
    <td>&nbsp;Father's Name</td>
    <td>&nbsp;<input name="fna" type="text" /></td>
  </tr>
  <tr>
    <td>&nbsp;Gender</td>
    <td>&nbsp;<input name="g1" type="radio" value="male" />Male <input name="g1" type="radio" value="female" />Female</td>
    <td>&nbsp;Phone</td>
    <td>&nbsp;<input name="phn" type="text" /></td>
  </tr>
  <tr>
    <td>&nbsp;Mail ID </td>
    <td>&nbsp;<input name="ma" type="text" /></td>
    <td>&nbsp;Address</td>
    <td rowspan="3">&nbsp;<textarea name="addr" cols="30" rows="6"></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="27">&nbsp;Security Question</td>
    <td><select name="secq">
      <option>What is your favorite song?</option>
      <option>What is your favorite movie?</option>
      <option>What is your school name?</option>
      <option>What is name the of your bestfriend?</option>
      </select></td>
    <td>&nbsp;Security Answer</td>
    <td>&nbsp;<input name="seca" type="text" /></td>
  </tr>
  <tr>
    <td colspan="4" align="center">&nbsp;<input type="submit" value="Submit" />
	&nbsp;<input type="reset" value="Reset" /></td>
</table>

				</form>
				

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
