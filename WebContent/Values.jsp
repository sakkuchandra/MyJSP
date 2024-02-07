<html>
<body>


<%!
	int a,b,c;
%>

<%
  a=Integer.parseInt(request.getParameter("value1"));
  b=Integer.parseInt(request.getParameter("value2"));
  //c=a+b;
  
%>

Resultant value is:

<%=a+b%>

</body>
</html>