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
		<jsp:include page="admintop.jsp" />
	</div>
</div>
<!-- end header -->


<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Welcome <%= session.getAttribute("name") %> to New Item <a href="aitemview.jsp" ><font color="#0000FF"> Details</font> </a> </h1>
			
			<div class="entry"><br /><br />
				
<%
  try{		
		
			String s1=request.getParameter("ina");
			ResultSet rs=st.executeQuery("select * from item where iname='"+s1+"'");
			if(rs.next()){
			out.print("<font color=red size=+2>"+s1+" is Already Entered !!!</font>");
			}else{
			String s2=request.getParameter("ava");
			String s3=request.getParameter("unit");
			String s4=request.getParameter("abt");
			String s5=request.getParameter("ben");
			String s6=request.getParameter("cat");
			
			rs=st.executeQuery("select max(substr(itid,2)) from item");
			int cnt=0;
			try{
			  if(rs.next())
				 cnt=rs.getInt(1);
			}catch(Exception ee){}
			cnt++; String itid="";
			if(cnt>0&&cnt<10)
			  itid="I000"+cnt;
			else if(cnt>9&&cnt<100)
			  itid="I00"+cnt;
			else if(cnt>99&&cnt<1000)
			  itid="I0"+cnt;
			else
			  itid="I"+cnt;
			  
			session.removeAttribute("itid");
			session.setAttribute("itid",itid);
			
			 
			
			String qry1="insert into item(itid,iname,availability,unit,catid,about,benefits,image)  values('"+itid+"','"+s1+"', '"+s2+"', '"+s3+"','"+s6+"', '"+s4+"','"+s5+"','')";
			int y=st.executeUpdate(qry1);			
			if(y>0)
			out.print("<font color=green size=+2>"+s1+" is Entered Successfully</font>");
			qry1="insert into itemphoto(itid,photo1,photo2,photo3)  values('"+itid+"','', '', '')";
			 y=st.executeUpdate(qry1);
			}
		con.close();
  }catch(Exception e){ 
    out.print(e);
  }
%>

	<br> 
	
<form enctype="multipart/form-data" action="upser" method="post"> 
<table border="0" bgcolor="#ccFDDE">
	<tr>
	<td colspan="2" align="center"><b>UPLOAD PHOTO</b></td>
	</tr>
	<tr>
	<td colspan="2" align="center"> </td>
	</tr>
	<tr>
	<td><b>Choose the file To Upload:</b></td>
	<td><input name="file" type="file"></td>
	</tr>
	<tr>
	<td colspan="2" align="center"> </td>
	</tr>
	<tr>
	<td colspan="2" align="center"><input type="submit" value="Upload"> </td>
	</tr>	
</table>
</form>

				
				
				

 			</div>
			
		</div>
		
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
