<html>
<body>

<%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.Statement,java.sql.ResultSet"%>

<%!
Connection con;
Statement st;
ResultSet r;
String username,password,databasepassword;
%>

<%
    username=request.getParameter("username");
	password=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/SampleApplication","root","root");
    st=con.createStatement();
    r=st.executeQuery("select password from users where username='"+username+"'");
    r.next();
    databasepassword=r.getString(1);
    out.print(databasepassword);
    
    if(password.equals(databasepassword))
      out.println("Login Success");
    else
    	out.println("Login Fail");
    
%>

</body>
</html>