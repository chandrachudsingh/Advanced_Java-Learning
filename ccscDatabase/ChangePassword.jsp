<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Password</title>
    <script>
		function errorMessage()
        {
            alert("Either username or password is incorrect!");
        }
		
        function Success()
        {
            alert("Password changed successfully");
        }
    </script>
</head>

<body>

    <%
		String user = request.getParameter("txuser");
        String oldpassword = request.getParameter("txoldpass");
        String newpassword = request.getParameter("txnewpass");
		int c=0;

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
					+ "user varchar(50), password varchar(50), gender varchar(10), dob date, question varchar(50), answer varchar(50))");

            PreparedStatement pstmt=con.prepareStatement("select count(*) from UserTb where user=? and password=?");
			pstmt.setString(1, user);
			pstmt.setString(2, oldpassword);
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
				c=rs.getInt(1);

            if(c>0)
            {
                pstmt=con.prepareStatement("Update UserTb set password=?");
			    pstmt.setString(1, newpassword);
			    pstmt.executeUpdate();
            }

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

		if(c>0)
        {
			%><script>Success()</script><%
            response.sendRedirect("LoginPage.html");
        }
        else
        {
            %><script>errorMessage()</script><%
            response.sendRedirect("ForgotPassword.html");
        }
    %>

</body>
</html>