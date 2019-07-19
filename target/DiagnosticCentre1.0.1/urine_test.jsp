<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Details</title>
</head>
<body>
<center>
<h3>URINE TEST</h3>
<table border="1">
<tr bgcolor="orange">
<th>Test Name</th>
<th>Cost</th>
<th>Test_Id</th>
</tr>
<tr>
<td><a href="test_reg.jsp" name="complete">Complete Urine Test</a></td>
<td>1000/-</td>
<td>11</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="albumin">Albumin</a></td>
<td>100/-</td>
<td>12</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="sugar">Sugar</a></td>
<td>100/-</td>
<td>13</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="salt">Salt</a></td>
<td>100/-</td>
<td>14</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="color">Color</a></td>
<td>100/-</td>
<td>15</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="ph">pH</a></td>
<td>100/-</td>
<td>16</td>
</tr>
</table>


<form>
<input type="button" name="button" value="Next" onClick="test_reg.jsp">
<input type="button" name="button" value="Back" onClick="test_details.jsp"></form>
</center>
</body>
</html>