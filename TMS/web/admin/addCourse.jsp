<%-- 
    Document   : addCourse
    Created on : Nov 13, 2014, 8:29:09 AM
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
  <head>
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
  </head>
    
  <body>
      
    <%String u = (String) request.getSession().getAttribute("name");
    if (u != null ) 
    {%>
    
    <%--Navigation Bar--%>
    <div class="navbar navbar-inverse">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Course Management System</a>
    </div>
    
    <div class="navbar-collapse collapse navbar-inverse-collapse">
        <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp">Home</a></li>
        <li><a href="course.jsp">Course</a></li>
        <li><a href="profile.jsp">Profile</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Welcome, <%=session.getAttribute("name")%></a></li>
        <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </div>
    </div>
    <%--End Navigation Bar--%>
    
    <!-- Half Page Image Background Carousel Header. Image Slider-->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('Capture.JPG');"></div>
                <div class="carousel-caption">
                    <h2>Course Management System</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('ad.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Application Development</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('UTM.jpg');"></div>
                <div class="carousel-caption">
                    <h2>UTM</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>

    </header>
    <%--end image slider--%>
    
    <br><br><br>
      
    <%--container--%>
    <div class="row">
        <div class="col-md-4">
            <div class="container-fluid">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">About CMS</h3>
                    </div>
                    <div class="panel-body">
                        <h3>Course Management System</h3>
                        <p>This system help user to manage the course enrollment in UTM.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="container-fluid">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Course</h3>
                    </div>
                    <div class="panel-body">
                        <form action="addCourse.jsp" method="POST" class="form-horizontal">
                        <fieldset>
                        <legend>Add Course</legend>
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="focusedInput">Course Name</label>
                                <div class="col-lg-10">
                                    <input class="form-control" name="courseName" type="text" required autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="focusedInput">Course Code</label>
                                <div class="col-lg-10">
                                    <input class="form-control" name="courseCode" type="text" required autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="focusedInput">Lecturer Name</label>
                                <div class="col-lg-10">
                                    <input class="form-control" name="lecturerName" type="text" required autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="focusedInput">Staff ID</label>
                                <div class="col-lg-10">
                                    <input class="form-control" name="staffID" type="text" required autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" name="email" placeholder="Email" required autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                <button type="submit" class="btn btn-lg btn-primary btn-block">Add Course</button>
                                </div>
                            </div>
                        </fieldset>
                        </form>
                  
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
                    <br><br><br><br><br><br><p>Copyright &copy; Application Development Team 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <%--else if session expired--%>    

   
<%
String courseName = request.getParameter("coursename");
String courseCode = request.getParameter("coursecode");
String date = request.getParameter("date");

String connectionURL = "jdbc:mysql://localhost:3306/training";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
            PreparedStatement pstatement = null;
         // Load JBBC driver "com.mysql.jdbc.Driver"
     Class.forName("com.mysql.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
         // check if the text box is empty
         if(courseName!=null && courseCode!=null && date!=null ){
                         // check if the text box having only blank spaces
            
              try {
              /* Create a connection by using getConnection()
              method that takes parameters of string type 
              connection url, user name and password to connect 
                to database. */
              connection = DriverManager.getConnection(connectionURL, "root", "");
              
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO courseinfo(coursename, coursecode, date) VALUES (?, ?, ?)";
              
                      /* createStatement() is used for create statement
              object that is used for 
                sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
              
              pstatement.setString(2, courseName);
              pstatement.setString(3, courseCode);
              pstatement.setString(4, date);
             
              
              updateQuery = pstatement.executeUpdate();
              if (updateQuery != 0) { %> 
						
              <jsp:forward page="allCourse.jsp"/>
						
              <% 
              }
              
              
              } 
              catch (Exception ex) {
              out.println("Unable to connect to database." + ex);
   
              }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
          }
        
%>

 
 </body>
</html>




