<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<% ResultSet rs = (ResultSet) request.getAttribute("ResultSet"); %>
<h1>Details Of Patients Registered</h1>
<%while (rs.next())
	{%>
	<table>
	
	<tr><th>Patient Names</th><th>Patient Id</th></tr>
	<tr><td><%=rs.getString(1)
	%></td>
	<td><%=rs.getString(2)
	%></td></tr>
	<%} %>

</table>


<br>
<br>
<font color="#CD853F"><a href="adminpage.html" name="admin">Back</a></font>
</body>
</html>