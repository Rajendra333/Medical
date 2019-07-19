<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% ResultSet rs = (ResultSet) request.getAttribute("ResultSet"); %>
<%
while (rs.next())
	{
	
%>


<table>
<tr><th>Patient ID</th><th>TestID</th><th>Result</th></tr>
<tr><td><%=rs.getInt(1)%></td>
<td><%=rs.getInt(2) %></td>
<td><%=rs.getInt(3) %></td>

</tr>

</table>
<%} %>
<center><h3> Your test has been successfully done<h3>
<h4> Reports will be delivered after 4 hours......<h4></center>
</body>
</html>