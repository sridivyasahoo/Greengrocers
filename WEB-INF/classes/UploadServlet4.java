
import java.sql.*;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.*;
 import javax.servlet.http.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

 public class UploadServlet4 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try{
		String qry="";	
	    Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project", "root","");
		Statement st = con.createStatement();
		int i=1;
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart) {
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;
            try {						
                items = upload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }

					HttpSession ss= request.getSession(); 
					String itid=(String) ss.getAttribute("photos");
					File savedFile=null;

            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                System.out.println("----- 1" + item +"-------");
                if (item.isFormField()) {
                } else {
                    try {
                   				String itemName = item.getName();
					itemName= itemName.substring(itemName.lastIndexOf("."));
					
					System.out.println(i +" ... "+ itid+"-"+i+itemName);
					System.out.println(itid+"-"+i+itemName);
					if(i==1 || i==2||i==3){ 
					    if(i==1){
						savedFile = new File(".//webapps//vegetable//images//item//"+itid+"-"+i+itemName);
					    	qry="update itemphoto set  photo1='"+(itid+"-"+i+itemName)+"'  where itid='"+itid+"'";

					    	System.out.println(savedFile);
					    	System.out.println(qry);
					                  }
					if(i==2){
						savedFile = new File(".//webapps//vegetable//images//item//"+itid+"-"+(i)+itemName);
					    	qry="update itemphoto set  photo2='"+(itid+"-"+(i)+itemName)+"'  where itid='"+itid+"'";

					    	System.out.println(savedFile);
					    	System.out.println(qry);
					                  }
					if(i==3){
						savedFile = new File(".//webapps//vegetable//images//item//"+itid+"-"+(i)+itemName);
					    	qry="update itemphoto set  photo3='"+(itid+"-"+(i)+itemName)+"'  where itid='"+itid+"'";

					    	System.out.println(savedFile);
					    	System.out.println(qry);
					                  }

						item.write(savedFile);
					    st.executeUpdate(qry);	
					 
					i++;
					}
//FileOutputStream fout= new FileOutputStream(savedFile);
                				} catch (Exception e) {
                    				e.printStackTrace();
                				}
				
            }
        }
    }
	con.close();
	}catch(Exception e){  } 
	
    RequestDispatcher rd = request.getRequestDispatcher("./aitemphoto2.jsp");
    rd.forward(request, response); 
}}




