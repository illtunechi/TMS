

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
  
  
  <body>
      
    <%String u = (String) request.getSession().getAttribute("name");
    if (u != null ) 
    {
    try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
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
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from courseinfo";
rs = statement.executeQuery(QueryString);
%>
    

    
  
    
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
                       
                        <%--no bootstrap yet--%>
                        <%-- condition where there is no data in lecturer database--%>
                        <% if(rs == null)
                        {%>
                            <p class="text-info">There is no course added. Click<a href="addCourse.jsp"> here </a> to add course</p>
                        <% }

                        
                        { %>
                            <p class="lead">List of Course</p>
                            <div class ="table-responsive">
                            <table class="table table-striped table-hover table-bordered ">
                            <thead>    
                            <tr>
                                <th>Index</th>
                                <th>Course Code</th>
                                <th>Course Name</th>
                                <th>Date</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>
                        <%  int index = 0;
                            while (rs.next()) {
                                String id = rs.getString(1);
                                index = index +1;
                        %>
                            <tr class="warning">
                                <td><%=index%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                
                            </tr>
                        <% } %>
                            </tbody>
        <%
        // close all the connections.
        rs.close();
        statement.close();
        connection.close();
        }
        } 
        catch (Exception ex) {
        
            out.println("Unable to connect to database.");
            out.println(ex);
        }
                        
                       
        %>
                            </table>
                            </div>
                            
                            <form action="addCourse.jsp"><button type="submit" class="btn btn-primary">Add Course</button></form>
                    </div>
                </div>
            </div>
        </div>
    </div>

                        
    
    
    
    
    
    
    
    
    
    
    
    
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

   
    
       
    
     
    
  
 </body>
</html>

