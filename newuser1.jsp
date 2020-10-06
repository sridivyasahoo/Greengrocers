<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body bgcolor="#99FFCC">
<%
  try{
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection  con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root","");
        Statement st = con.createStatement();

        String s1=request.getParameter("logna");
		ResultSet rs=st.executeQuery("select * from login where logname='"+s1+"'");
		if(rs.next()){
			out.print("<font color=red size=3>"+s1+" is already Registered !!</font>");
		}else{
		
			String s2=request.getParameter("fullna");
			String s3=request.getParameter("pwd");
			String s4=request.getParameter("cpwd");
			String s5=request.getParameter("dob");
			String s6=request.getParameter("fna");
			String s7=request.getParameter("g1");
			String s8=request.getParameter("phn");
			String s9=request.getParameter("ma");
			String s10=request.getParameter("addr");
			String s11=request.getParameter("secq");
			String s12=request.getParameter("seca");		
		
			rs=st.executeQuery("select max(substr(uid,2)) from user");
			int cnt=0;
			try{
			  if(rs.next())
				 cnt=rs.getInt(1);
			}catch(Exception ee){}
			cnt++; String uid="";
			if(cnt>0&&cnt<10)
			  uid="U000"+cnt;
			else if(cnt>9&&cnt<100)
			  uid="U00"+cnt;
			else if(cnt>99&&cnt<1000)
			  uid="Uo"+cnt;
			else
			  uid="U"+cnt;
			
			 
			String  qry="insert into login(uid,logname,pwd,type,status,secques, secans)  values('"+uid+"','"+s1+"', '"+s3+"','"+"user"+"','"+"y"+"', '"+s11+"', '"+s12+"')";
			int z=st.executeUpdate(qry)
			qry="insert into user(uid,name,dob,faname,gender,phn,mail,addr)  values('"+uid+"','"+s2+"', '"+s5+"', '"+s6+"', '"+s7+"','"+s8+"','"+s9+"','"+s10+"')";
			z=st.executeUpdate(qry);			
			if(z>0)
			out.print("<font color=green size=3>"+s1+" is Registered Successfully</font>");
		}
		con.close();
  }catch(Exception e){ 
    out.print(e);
  }
%>

</body>
</html>
