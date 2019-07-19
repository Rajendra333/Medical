<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank you</title>
</head>
<body>
<center><h1>The Diagnostics Centre</h1>
<hr></hr>
<h2>Acknowledgement</h2></center>
<%out.println("Name::"+session.getAttribute("n"));%>
<br>
<% out.println("Test ID::"+session.getAttribute("ti"));%><br>
<% out.println("Patient ID::"+session.getAttribute("id"));%><br>
<br>
<%out.println("Test date::"+session.getAttribute("d")); %>
<br><br><br>



<i>Please collect the report either after 4hrs of the test or next day</i><br>
<i><font color="red"> Report requesting after one week is not allowed</font></i>
<form action="MainPage.html"><center>
<input type="button" name="button" value="logout" onClick="MainPage.html"></center></form>
</body>
</html>