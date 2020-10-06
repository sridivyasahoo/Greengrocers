<%@ include file="dbcon.jsp" %>
<%!   String vid="";String typ="" ;   %>
<%
        String na = request.getParameter("t1");
		String pw = request.getParameter("p1");
 try {
    ResultSet rs = st.executeQuery("select * from login where logname='"+na+"'    and pwd='"+pw+"'");
    if(rs.next()){ 
        uid =rs.getString("vid");
		typ =rs.getString("type");
		session.removeAttribute("name");
		session.removeAttribute("uid");
		session.removeAttribute("typ");
		session.setAttribute("name",na);
		session.setAttribute("uid",uid);
		session.setAttribute("type",typ);
				
	}else{
	    typ="";
		uid="";
	}
    con.close(); 
	out.print(typ);  
}catch(Exception e){ out.print(e); } 
    if(typ.equalsIgnoreCase("admin")){	%>		
		<jsp:forward page="adminhome.jsp" />
<%	}else if(typ.equalsIgnoreCase("vendor")){  %>		
		<jsp:forward page="vendhome.jsp" />
<% 	}else if(typ.equalsIgnoreCase("customer")){  %>		
		<jsp:forward page="custhome.jsp" />
<%  }else{   %>
    <jsp:forward page="index.jsp" >			
    		<jsp:param name="a1" value="error" />
	</jsp:forward>   
<%   }  %>