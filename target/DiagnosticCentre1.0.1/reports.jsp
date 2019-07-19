<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>reports</title>
<script type="text/javascript">
function notnul(a,b){
	
	if(b==""){
		
			alert("please enter valid patient id");
			document.myform.userid1.value="";
		}
	if(document.myform.userid1.value="")
		alert("please enter valid patient id");
	}
	
</script>
</head>
<body>
<h1>Reports Status Page</h1>
<form action="ReportController">

<center>Patient Id<input type="text" name="patient_id" onblur="notnul(this.id,this.value)" >
Test ID<input type="text" name="test_id" onblur="notnul(this.id,this.value)" >
<input type ="submit" name="button" value="submit"></center>

</form>
</body>
</html>