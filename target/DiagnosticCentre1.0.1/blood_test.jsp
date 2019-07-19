<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>Blood TEST</h3>
<table border="1">
<tr bgcolor="orange">
<th>Test Name</th>
<th>Cost</th>
<th>Test_Id</th>
</tr>
<tr>
<td><a href="test_reg.jsp" name="completetest">Complete Blood Test</a></td>
<td>2000/-</td>
<td>21</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="HB">HB</a></td>
<td>200/-</td>
<td>22</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="WBC">WBC</a></td>
<td>300/-</td>
<td>23</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="Sugar">Sugar</a></td>
<td>300/-</td>
<td>24</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="RBC">RBC</a></td>
<td>300/-</td>
<td>25</td>
</tr>
</table>

<form>
<input type="button" name="button" value="Next" onClick="test_reg.jsp'">
<input type="button" name="button" value="Back" onClick="test_details.jsp'"></form>
</center>
</body>
</html>