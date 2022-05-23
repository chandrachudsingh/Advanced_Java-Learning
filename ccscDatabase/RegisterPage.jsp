<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Demo Database</title>
	<script>
        function Success()
        {
            alert("Registration successful, please login to continue..");
        }
    </script>
</head>

<body>

    <%
        String user = request.getParameter("txuser");
        String password = request.getParameter("txpass");
        String gender = request.getParameter("rbgender");
        String dob = request.getParameter("DOB");
        String question = request.getParameter("cbQue");
        String answer = request.getParameter("txans");

        try 
		{
			Class.forName("com.mysql.jdbc.Driver");   //to load driver class
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "");
											//to build connection between Java and database 
			Statement stmt=con.createStatement();  //create statement class object
			stmt.executeUpdate("Create database if not exists RegisterDb");   
					//"if not exists" used because of database not created multiple times(error)
			
			stmt.execute("Use RegisterDb");
			stmt.executeUpdate("Create table if not exists UserTb(user_id int auto_increment primary key,"
					+ "user varchar(50), password varchar(50), gender varchar(10), dob varchar(20), question varchar(50), answer varchar(50))");

            PreparedStatement pstmt=con.prepareStatement("insert into UserTb(user,password,gender,dob,question,answer) values(?,?,?,?,?,?)");
			pstmt.setString(1, user);
			pstmt.setString(2, password);
			pstmt.setString(3, gender);
			pstmt.setString(4, dob);
			pstmt.setString(5, question);
			pstmt.setString(6, answer);
			pstmt.executeUpdate();

            con.close();
		}
		catch (ClassNotFoundException e) 
		{
			out.println("ClassNotFoundException caught: "+e.getMessage());
		}
		catch (SQLException e) 
		{
			out.println("SQLException caught: "+e.getMessage());
		}

		%><script> Success() </script><%
        response.sendRedirect("LoginPage.html");
    %>

</body>
</html>