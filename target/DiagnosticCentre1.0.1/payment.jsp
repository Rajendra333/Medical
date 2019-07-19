<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment</title>
</head>
<center><h1><font color="navy">Payment Page</font></h1>
<hr>
<h2>Please Verify Your Details</h2></center>
<body bgcolor="wheat">

<form name="test-reg" method="post" action="PaymentController">

<table>
<tr>
<td>
Patient Name:
</td>
<td>
<input type="text" name="username" value=<%out.println(session.getAttribute("n")); %>>
</td>
</tr>
<tr>
<td>
Patient Id:
</td>
<td>
<input type="text" name="patient_id" value=<%out.println(session.getAttribute("id")); %>>
</td>
</tr>
<tr>
<td>
Test Id:
</td>
<td>
<input type="text" name="test_id" value=<%out.println(session.getAttribute("ti")); %>>
</td>
</tr>
<tr>
<td>
Total amount (including taxes):
</td>
<td>
<input type="text" name="amount" value=<%out.println(session.getAttribute("a")); %> >
</td>
</tr>
<tr>
<td>
<input type="submit" name="button" value="Submit">
</td>
<td>
<input type ="reset" name="button" value="Reset">
</td>
</tr>
</table>
</form>
</body>
</html>