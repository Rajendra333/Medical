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
<h3>DIABETIC TEST</h3>
<table border="1">
<tr bgcolor="orange">
<th>Test Name</th>
<th>Cost</th>
<th>Test_Id</th>
</tr>
<tr>
<td><a href="test_reg.jsp" name="completetest">Complete Blood picture with platelet count</a></td>
<td>1000/-</td>
<td>31</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="fasting">Fasting and Post lunch Blood sugar</a></td>
<td>100/-</td>
<td>32</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="lipid">Lipid profile</a></td>
<td>100/-</td>
<td>33</td>
</tr>
<tr>
<td><a href="test_reg.jsp" name="ECG">ECG</a></td>
<td>100/-</td>
<td>34</td>
</tr>

</table>
<form>
<input type="button" name="button" value="Next" onClick="test_reg.jsp">
<input type="button" name="button" value="Back" onClick="test_details.jsp"></form>
</center>
</body>
</html>