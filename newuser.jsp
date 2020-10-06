<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body bgcolor="#FFCCFF">
Enter your details
<form action="newuser1.jsp" method="get">
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
      <option>What is your  bestfriend's name?</option>
    </select>
      </select></td>
    <td>&nbsp;Security Answer</td>
    <td>&nbsp;<input name="seca" type="text" /></td>
  </tr>
  <tr>
    <td colspan="4" align="center">&nbsp;<input type="submit" value="Submit" />
	&nbsp;<input type="reset" value="Reset" /></td>
</table>


</form>

</body>
</html>
