<%!
String driver;
%>
<%   
out.print("Welcome "+request.getParameter("uname"));  
  
driver=config.getInitParameter("dname");  
out.print("driver name is="+driver);  
%>  
