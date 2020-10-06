<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body bgcolor="#FFFF99">
<form action="check.jsp" method="get">
Check login name<input name="t1" type="text" />
<input name="" type="submit" value="Go" />
</form>
<%
try
{
String msg="";
String name=request.getParameter("a1");
if(name.equals("error"))
out.print("<font color=\"red\" size=\"3\"> Name is not available.</font>");
else
out.print("<font color=\"green\" size=\"3\"> Name is available.</font>");

%>
<%
}catch(Exception e){ }
%>
</body>
</html>
