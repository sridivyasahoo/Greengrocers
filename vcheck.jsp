<%@ include file="dbcon.jsp" %>
<%!   String na;     %>
<%
        na = request.getParameter("t1");
 try {
    
    ResultSet rs = st.executeQuery("select * from login where logname='"+na+"'");
    if(rs.next()){ 
        na="error";
	}
    con.close();   
}catch(Exception e){ } 
    if(na.equals("error")){
%>		
	<jsp:forward page="vsignup.jsp" >
    		<jsp:param name="a1" value="<%=na%>" />
	</jsp:forward>   
<%      
  }else{
%>		
       <jsp:forward page="vsignup1.jsp"/>
<%   }  %>