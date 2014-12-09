<%-- 
    Document   : course
    Created on : Oct 27, 2014, 6:09:03 PM
    Author     : user
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Course</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
    </script>
  
    
  <body>
     
    
    
   
    
    <!-- Half Page Image Background Carousel Header. Image Slider-->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        

    
    <br><br><br>
      
    <%--container--%>
    <div class="row">
   
        <div class="col-md-8">
            <div class="container-fluid">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Course</h3>
                    </div>
                    <div class="panel-body">
                        
                        <p><a href="courseinfo.jsp">Manage Course</a></p>
                        <p><a href="studentList.jsp">Manage user</a>
                        <p><a href="lecturerList.jsp">Manage Lecturer</a>
                        <p><a href="insertListAdmin.jsp">Insert Course List</a></p>
                        <p><a href="deleteListAdmin.jsp">Delete Course List</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--end container--%>
    
    
    
    
    <%--End of Page--%>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br><br><br><br><br><br><p>Copyright &copy; 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <%--else if session expired--%>    

 
 </body>
</html>


