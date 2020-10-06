<%@ page import="java.sql.*" %>
<%!   Connection con=null";
	  Statement stmt=null";
 %>
<%
 try {
    Class.forName("com.mysql.jdbc.Driver"); 
    con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root","");
    stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
      
}catch(Exception e){ out.print(e); } 
%>