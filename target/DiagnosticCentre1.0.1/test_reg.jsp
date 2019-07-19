<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test registration</title>
<script type="text/javascript">
function updateTextField()
{
    var select = document.getElementById("test_id");
    var option = select.options[select.selectedIndex];
    if (option.value == "11")
    {
	document.getElementById("test_type").value = "urine test";
	document.getElementById("test_name").value = "Complete urine test";
	document.getElementById("amount").value = "1000";
    }
	else if(option.value=="12")
{
	document.getElementById("test_type").value = "urine test";
	document.getElementById("test_name").value = "Albumin test";
	document.getElementById("amount").value = "100";
}
else if(option.value=="13")
{
	document.getElementById("test_type").value = "urine test";
	document.getElementById("test_name").value = "Sugar test";
	document.getElementById("amount").value = "100";
}
else if(option.value=="14")
{
	document.getElementById("test_type").value = "urine test";
	document.getElementById("test_name").value = "Salt test";
	document.getElementById("amount").value = "100";
}
else if(option.value=="15")
{
	document.getElementById("test_type").value = "urine test";
	document.getElementById("test_name").value = "color ";
	document.getElementById("amount").value = "100";
}
else if(option.value=="16")
{
	document.getElementById("test_type").value = "urine test";
	document.getElementById("test_name").value = "pH";
	document.getElementById("amount").value = "100";
}
else if(option.value=="21")
{
	document.getElementById("test_type").value = "blood test";
	document.getElementById("test_name").value = "Complete blood test";
	document.getElementById("amount").value = "2000";
}
else if(option.value=="22")
{
	document.getElementById("test_type").value = "blood test";
	document.getElementById("test_name").value = "HB test";
	document.getElementById("amount").value = "200";
}
else if(option.value=="23")
{
	document.getElementById("test_type").value = "blood test";
	document.getElementById("test_name").value = "WBC test";
	document.getElementById("amount").value = "300";
}
else if(option.value=="24")
{
	document.getElementById("test_type").value = "blood test";
	document.getElementById("test_name").value = "Sugar test";
	document.getElementById("amount").value = "300";
}
else if(option.value=="25")
{
	document.getElementById("test_type").value = "blood test";
	document.getElementById("test_name").value = "RBC test";
	document.getElementById("amount").value = "300";
}
else if(option.value=="31")
{
	document.getElementById("test_type").value = "diabetics test";
	document.getElementById("test_name").value = "Complete Blood picture with platelet count";
	document.getElementById("amount").value = "1000";
}
else if(option.value=="32")
{
	document.getElementById("test_type").value = "diabetics test";
	document.getElementById("test_name").value = "Fasting and Post lunch Blood sugar";
	document.getElementById("amount").value = "100";
}
else if(option.value=="33")
{
	document.getElementById("test_type").value = "diabetics test";
	document.getElementById("test_name").value = "Lipid profile";
	document.getElementById("amount").value = "100";
}
else if(option.value=="34")
{
	document.getElementById("test_type").value = "diabetics test";
	document.getElementById("test_name").value = "ECG";
	document.getElementById("amount").value = "100";
}
}
function notnul(a,b){
	
	if(b==""){
		
			alert("this field cannot be left blank");
			document.myform.userid1.value="";
		}
	
	}
	
function testid(a,b)
{
 var exp=/^[0-9]{2}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("testid must contain 2 digits");
  document.myform.testid.value="";
  }
 }
}

function testtype(a,b)
{
 var exp=/^[A-Za-z]{3,20}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("enter valid testtype");
  document.myform.testtype.value="";
  }
 }
}


function testname(a,b)
{
 var exp=/^[A-Za-z]{3,20}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("enter valid testname");
  document.myform.testtype.value="";
  }
 }
}

function date1(a,b){
	var exp= /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("Enter a valid date ");
			document.test-reg.reg_date.value=="";
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
function date2(a,b){
	var exp= /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
	if(b!=""){
		if(!b.match(exp)){
			alert("Enter a valid date ");
			document.test-reg.test_date.value=="";
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

		

	
function amount1(a,b)
{
 var exp=/^[0-9]{3,4}$/;
 if(b!=""){
 if(!b.match(exp))
 {
  alert("amount must be 3 or 4 digit ");
  document.test-reg.amount.value == "";
  }
 }
}
function validateform() {
	

	if (document.forms["test-reg"]["test_id"].value == null
			||document.forms["test-reg"]["test_id"].value == "") 
{
		alert("test id should not be null");
		document.getElementById("test_id").focus();
 
		return false;
	}
if (document.forms["test-reg"]["test_type"].value == null
			||document.forms["test-reg"]["test_type"].value == "") 
	{
		alert("test type should not be null");
		document.getElementById("test_type").focus();
 
		return false;
	}
if (document.forms["test-reg"]["test_name"].value == null
			||document.forms["test-reg"]["test_name"].value == "") 
	{
		alert("test nameshould not be null");
		document.getElementById("test_name").focus();
 
		return false;
	}
if (document.forms["test-reg"]["reg_date"].value == null
			||document.forms["test-reg"]["reg_date"].value == "") 
	{
		alert("registration date should not be null");
		document.getElementById("reg_date").focus();
 
		return false;
	}
if (document.forms["test-reg"]["test_date"].value == null
			||document.forms["test-reg"]["test_date"].value == "") 
	{
		alert("test date should not be null");
		document.getElementById("test_date").focus();
 
		return false;
	}




if (document.forms["test-reg"]["amount"].value == null
			||document.forms["test-reg"]["amount"].value == "") 
	{
		alert("amount should not be null");
		document.getElementById("amount").focus();
 
		return false;
	}




	return true;
}

</script>
</head>
<CENTER><H1><font color="navy">Test Registration</font></H1> </CENTER>
<hr>
<body BGCOLOR="WHEAT">


<form name="test-reg" method="post" action="TestRegController" onsubmit="return validateform()">

<table>
<tr>
<td>
Test Id:
</td>
<td>
<!--<input type="text" name="test_id"  onblur="testid(this.id,this.value)">-->
<select name="test_id" id="test_id" onchange="updateTextField()"> 
  <option value="" selected >Test Id</option> 
  <option value="11">11</option> 
  <option value="12">12</option> 
  <option value="13">13</option> 
  <option value="14">14</option> 
  <option value="15">15</option> 
  <option value="16">16</option>
  <option value="21">21</option> 
  <option value="22">22</option> 
  <option value="23">23</option> 
  <option value="24">24</option> 
  <option value="25">25</option>
  <option value="31">31</option> 
  <option value="32">32</option> 
  <option value="33">33</option> 
  <option value="34">34</option> 
  </select>
</td>
</tr>
<tr>
<td>
Test Type:
</td>
<td>
<input type="text" name="test_type" id="test_type" onblur="testtype(this.id,this.value)">
</td>
</tr>
<tr>
<td>
Test Name:
</td>
<td>
<input type="text" name="test_name" id="test_name" onblur="testname(this.id,this.value)" >
</td>
</tr>
<tr>
<td>
Registration Date:
</td>
<td>
<input type="text" name="reg_date"   onblur="date1(this.id,this.value)" >dd-mon-yyyy
</td>
</tr>

<tr>
<td>
Test Date:
</td>
<td>
<input type="text" name="test_date"   onblur="date2(this.id,this.value)" >dd-mon-yyyy
</td>
</tr>

<tr>
<td>
Amount:
</td>
<td>
<input type="text" name="amount" id="amount" onblur="amount1(this.id,this.value)">
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
</table></form>

</body>
</html>