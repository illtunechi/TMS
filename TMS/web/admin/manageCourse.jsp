<%-- 
    Document   : manageCourse
    Created on : Oct 27, 2014, 8:38:56 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Course</title>
    </head>
    <body>
        
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/coursemanagement";%>
<%!String user = "root";%>
<%!String psw = "";%>
<% 
   String act = request.getParameter("oper"); 
   String id = request.getParameter("id");
   String courseName = request.getParameter("courseName");
   String courseCode = request.getParameter("courseCode");
   String lecturerName = request.getParameter("lecturerName");
   String staffID = request.getParameter("staffID");
   String email = request.getParameter("email");
    
        Connection con = DriverManager.getConnection(url,user,psw);
        PreparedStatement ps = null;
        int updateQuery = 0;
        try
        {
            Class.forName(driverName);
            //con = DriverManager.getConnection(url,user,psw);
			
			
                        if (act.equals("edit")){
				String sql = "UPDATE course SET coursename ='"+courseName+"', coursecode='"+courseCode+"', lecturer_name='"+lecturerName+"', staff_id='"+staffID+"', email='"+email+"' WHERE pk_id = '"+id+"'";
				ps = con.prepareStatement(sql);
            
				int i = ps.executeUpdate();
				if(i > 0)
					{
						%>
						<jsp:forward page="allCourse.jsp"/>
						<% 
					}
				else
					{
						%>
						<jsp:forward page="allCourse.jsp"/>
						<%
					}
			}
			
                        else if(act.equals("delete")) {
				String sql = "DELETE FROM course WHERE pk_id='"+id+"'";
				ps = con.prepareStatement(sql);
				int i = ps.executeUpdate();
				if(i > 0)
                                {
                                     %>
                                        <jsp:forward page="allCourse.jsp"/>
                                     <% 
                                }
				else
				{
					%>
					<jsp:forward page="allCourse.jsp"/>
                                        
					<%
				}
			}
			
        }
    catch(SQLException sqe)
    {
        request.setAttribute("error", sqe);
        out.println(sqe);
    }

%>

    </body>
</html>

