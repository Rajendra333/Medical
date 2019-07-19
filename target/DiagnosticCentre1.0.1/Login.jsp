<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
<script type="text/javascript">
function notnul(a,b){
	
	if(b==""){
		
			alert("please enter valid username");
			document.myform.userid1.value="";
		}
	if(document.myform.userid1.value="")
		alert("please enter valid username");
	}
	
function password1(a,b){
	var exp=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid password");
			document.myform.fname.value="";
		}
	}
	
}
function validateform()
{
if (document.forms["login"]["userName"].value == null
			||document.forms["login"]["userName"].value == "" )
	{
		alert("userName should not be null");
		document.getElementById("userName").focus();
 
		return false;
	}
if (document.forms["login"]["passWord"].value == null
			||document.forms["login"]["passWord"].value == "") 
	{
		alert("passWord should not be null");
		document.getElementById("passWord").focus();
 
		return false;
	}
return true;
}


</script>
</head>
<body >
<center>
<h1><font color="#CD853F">THE DIAGNOSTIC CENTRE</font></h1>
<form name="login" method="post" action="LoginController" onsubmit="return validateform()">
<b><font color="#CD853F">USERNAME:</font></b><input type="text" name="userName" value="" onblur="notnul(this.id,this.value)"><br><BR>
<b><font color="#CD853F">PASSWORD:</font></b><input type="password" name="passWord" value="" onblur="password1(this.id,this.value)"><br>
<input type="submit" name="button" value="Submit" onfocus="validateform()">
<input type="reset" name="button" value="Reset">
</form>
<c:if test="${requestScope.msg ne null }">
${requestScope.msg }
</c:if>
</center>
</body>
</html>