<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<title>Register</title>


  <body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">Lehar Foundation</a>
    </div>

     <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="index.html">Home</a></li>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="stories.html">Survivor Stories</a></li>
        <li><a href="helpline.html">HELP</a></li>
          <li class="active"><a href="Volunteer.jsp">Volunteer</a></li>     
         
         <li><a href="Promote.html">Promoting Ventures</a></li>
          
          
          <li><a href="SurvivorRights.html">Survivor Rights</a></li>
             <li><a href="Campaign.html">Campaigns</a></li>            
        
        </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<script> 
function validate()
{ 
     var firstname = document.form.firstname.value;
     var lastname = document.form.lastname.value;
     var EmailID = document.form.EmailID.value; 
     var phone = document.form.phone.value;
     var intern= document.form.intern.value;
     var address= document.form.address.value;
     
     if (firstname==null || firstname=="")
     { 
     alert("First Name can't be blank"); 
     return false; 
     }
     else if (lastname==null || lastname=="")
     { 
     alert("Last Name can't be blank"); 
     return false; 
     }
     else if (emailid==null || emailid=="")
     { 
     alert("Email ID can't be blank"); 
     return false; 
     }
     else if(phone.length<10 || phone.length>10)
     { 
     alert("Phone Number must be at 10 characters long."); 
     return false; 
     } 
     else if (intern==null || intern=="")
     { 
     alert("Choose the Type of Internship"); 
     return false; 
     }
     else if (address==null || address=="")
     { 
     alert("Address can't be blank"); 
     return false; 
     
     } 
 } 
</script> 
</head>
<body>
<center><h2>Java Registration application using MVC and MySQL </h2></center>
    <form name="form" action="VolunteerServlet" method="post" onsubmit="return validate()">
        <table align="center">
         <tr>
         <td>First Name </td>
         <td><input type="text" name="firstname" /></td>
         </tr>
         <tr>
         <td>Last Name </td>
         <td><input type="text" name="lastname" /></td>
         </tr>
         <tr>
         <td>Email ID </td>
         <td><input type="text" name="EmailID" /></td>
         </tr>
         <tr>
         <td>Phone Number </td>
         <td><input type="text" name="phone" /></td>
         </tr>
         
         <tr>
         <td>Type of Internship </td>
         <td><input type="text" name="intern" /></td>
         </tr>
         
         <tr>
         <td>Address</td>
         <td><input type="text" name="address" /></td>
         </tr>
         
         <tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         <td><br> <br> <br><input type="submit" value="Register"></input><input
           type="reset" value="Reset"></input></td>
         </tr>
        </table>
   </form> 
     <script src="resources/jquery.min.js"></script>
  <script src="resources/bootstrap.min.js"></script>
    </body>
</html>