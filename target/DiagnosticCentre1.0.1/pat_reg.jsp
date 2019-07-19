<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient registration</title>
<style>
pre {
	text-align: right;
}
img
{
float:right;
}
</style>
<script type="text/javascript">
function notnul(a,b){
	
	if(b==""){
		
			alert("this field cannot be left blank");
			document.myform.userid1.value="";
		}
	if(document.myform.userid1.value="")
		alert("this field cannot be left blank");
	}
function password1(a,b){
	var exp=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{4,15}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid password");
			document.myform.fname.value="";
		}
	}
	
}


function age1(a,b){
	var exp=/^[0-9]{1,2}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("enter a valid age");
			document.myform.age.value="";
		}
	}
	
}
function mobile1(a,b)
{
 var exp=/^[0-9]{10}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("Phone number must contain 10 numbers");
  document.myform.mobile.value="";
  }
 }
}

function patientid(a,b)
{
 var exp=/^[0-9]{4}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("patientid must contain 4 digits");
  document.myform.patientid.value="";
  }
 }
}


function patientname(a,b)
{
 var exp=/^[A-Za-z]{3,20}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("enter valid patient name");
  document.myform.patientname.value="";
  }
 }
}

function doctorname(a,b){
	var exp=/^[A-Za-z]{3,20}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("Enter a valid doctor name");
			document.myform.doctorname.value="";
		}
	}
}



	function date1(a,b){
		var exp= /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
		if(b!=""){
			if(!b.match(exp)){
				alert("Enter a valid date ");
				document.myform.appointmentDate.value="";
			}
			else{
				var curr_date=new Date();
				 //document.myform.appointmentDate.focus();
				//Test which seperator is used '/' or '-'  
				  var opera1 = b.split('/'); 	
				  var opera2 = b.split('-'); 
				  //alert(opera2)
				  lopera1 = opera1.length;  
				  lopera2 = opera2.length;  
				  // Extract the string into month, date and year  
				  if (lopera1>1)  
				  {  
				  var pdate = b.split('/');  
				  }  
				  else if (lopera2>1)  
				  {
				  var pdate = b.split('-');  
				  }  
				  var dd = parseInt(pdate[0]);  
				  var mm  = parseInt(pdate[1]);  
				  var yy = parseInt(pdate[2]);

				  if(yy>=curr_date.getFullYear() && mm>=(curr_date.getMonth()+1) && dd>=curr_date.getDate

	()){
					   
					  //alert("Valid Date");
					// Create list of days of a month [assume there is no leap year by default]
					  var ListofDays = [31,28,31,30,31,30,31,31,30,31,30,31];  
					  if (mm==1 || mm>2)  
					  {  
					  	if (dd>ListofDays[mm-1])  
					  	{  
					  		alert('Invalid date format!');  
					  		return false;  
					 	 }  
					  }  
					  if (mm==2)  
					  {  
					  	var lyear = false;  
					  	if ( (!(yy % 4) && yy % 100) || !(yy % 400))   
					  	{  
					  		lyear = true;  
					  	}  
					 	 if ((lyear==false) && (dd>=29))  
					  	{  
					  		alert('Invalid date format!');  
					  		return false;  
					  	}  
					  	if ((lyear==true) && (dd>29))  
					  	{  
					  		alert('Invalid date format!');  
					  		return false;  
					  	}    
					} 
				  }else{
					  alert("Invalid Date:")
					 
			}
		}
	}
	}
function date2()
{
	var dtDate= document.getElementById("appointmentDate").value; // tbDate = name of text box
	  var currentDate= getCalendarDate();
if(dtDate <= currentDate)
{
	alert("Enter a valid date for an appointment");

} 
}
function validateform() {
	

	if (document.forms["pat_reg"]["patient_id"].value == null
			||document.forms["pat_reg"]["patient_id"].value == "") 
	{
		alert("patient_id should not be null");
		document.getElementById("patient_id").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["patient_name"].value == null
			||document.forms["pat_reg"]["patient_name"].value == "") 
	{
		alert("patient_name should not be null");
		document.getElementById("patient_name").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["password"].value == null
			||document.forms["pat_reg"]["password"].value == "") 
	{
		alert("password should not be null");
		document.getElementById("password").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["age"].value == null
			||document.forms["pat_reg"]["age"].value == "") 
	{
		alert("age should not be null");
		document.getElementById("age").focus();
 
		return false;
	}

if (document.forms["pat_reg"]["doctorname"].value == null
			||document.forms["pat_reg"]["doctorname"].value == "") 
	{
		alert("doctorname should not be null");
		document.getElementById("doctorname").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["phoneno"].value == null
			||document.forms["pat_reg"]["phoneno"].value == "") 
	{
		alert("phoneno should not be null");
		document.getElementById("phoneno").focus();
 
		return false;
	}
if (document.forms["pat_reg"]["appointmentDate"].value == null
			||document.forms["pat_reg"]["appointmentDate"].value == "") 
	{
		alert("appointmentDate should not be null");
		document.getElementById("appointmentDate").focus();
 
		return false;
	}



	return true;
}
</script>
</head>
<center><h1><font color="navy"> Registration Form</font></h1>
</center><hr>
<body bgcolor="wheat">
<img src="patient-registration.jpeg" width="400" height="300">
<form name="pat_reg" method="get" action="PatientRegController" onsubmit="return validateform()">
<table>
<tr>
<td>
PatientID:
</td>
<td>
<input type ="text" name="patient_id" onblur="patientid(this.id,this.value)" >
</td>
</tr>
<tr>
<td>
Patient Name:
</td>
<td>
<input type ="text" name="patient_name" onblur="patientname(this.id,this.value)">
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<input type ="password" name="password" onblur="password1(this.id,this.value)">
</td>
</tr>

<tr>
<td>

Patient Age:
</td>
<td>
<input type ="text" name="age" onblur="age1(this.id,this.value)">
</td>
</tr>
<tr>
<td>
Patient Gender:
</td>
<td>
<input type ="radio" name="gender" value="M" onblur="notnul(this.id,this.value)">Male
<input type="radio" name="gender" value="F" onblur="notnul(this.id,this.value)" checked="checked">female
</td>
</tr>
<tr>
<td>
Doctor Name:
</td>
<td>
 <select name="doctorname" > 
  <option value="" selected >name</option> 
  <option value="1">Naresh</option> 
  <option value="2">Sudhir</option> 
  <option value="3">Sunil</option> 
  </select>
</td>
</tr>
<tr>
<td>
Phone no:
</td>
<td>
<input type="text" name="phoneno"  onblur="mobile1(this.id,this.value)">
</td>
</tr>
<tr>
<td>
Appointment date:
</td>
<td>
<input type="text" name="appointmentDate"   onblur="date1(this.id,this.value)" >
</td>
<td>
(dd-mon-yyyy)</td>
</tr>
<tr>
<td>
Appointment time:
</td>
<td>
<input type="radio"  value="06.00 A.M to 09.00 A.M" name="appointmentTime" checked="checked">06.00 A.M to 09.00 A.M<br>
 <input type="radio"  value="10.00 A.M to 01.00 P.M" name="appointmentTime">10.00 A.M to 01.00 P.M<br>
  <input type="radio"  value="02.00 P.M to 04.00 P.M" name="appointmentTime">02.00 P.M to 04.00 P.M<br>
   <input type="radio"  value="05.00 P.M to 08.00 P.M" name="appointmentTime">05.00 P.M to 08.00 P.M<br>
</td>
</tr>
<tr>
<td>



</td>
</tr>
<tr>
<td>
<input type="submit" name="button" value="Submit" onfocus="validateform()">
</td>

<td>
<input type ="reset" name="button" value="Reset">
</td>
</tr>
</table>
</form>
<c:if test="${requestScope.msg ne null }">
${requestScope.msg }
</c:if>
<img src="doctor.jpeg" width="250" height="200">
<pre >
<h1>Doctor's Available are:</h1>
Dr.Naresh Vadlamani
MBBS,MD DIABETOLOGY

Dr.Sudhir Kumar
M.D.D.M Neurology

Dr.Sunil
M.D Consultant Physician
</pre>
</body>
</html>